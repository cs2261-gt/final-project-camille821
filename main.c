#include <stdlib.h>
#include <stdio.h>
#include "myLib.h"
#include "game.h"

//insert all splash screens

#include "start.h"
//#include "gameSplash.h"
#include "gameSplash1.h"
#include "pause.h"
#include "win.h"
#include "lose.h"
#include "help.h"



#include "spritesheet1.h"


// Prototypes
void initialize();

// State Prototypes
void goToStart();
void start();
void goToGame();
void game();
void goToPause();
void pause();
void goToWinState();
void winState();
void goToLoseState();
void loseState();
void helpState();
void goToHelpState();

// States
enum {START, GAME, PAUSE, WIN, LOSE, HELP};
int state;

//int foodEaten;
int lose;


extern OBJ_ATTR shadowOAM[128];


// Button Variables
unsigned short buttons;
unsigned short oldButtons;

extern int hOff;
extern int vOff;

// Random Seed
int seed;

// Text Buffer
char buffer[41];

int main() {

    initialize();

    while(1) {

        // Update button variables
        oldButtons = buttons;
        buttons = BUTTONS;
                
        // State Machine
        switch(state) {

            case START:
                start();
                break;
            case GAME:
                game();
                break;
            case PAUSE:
                pause();
                break;
            case WIN:
                winState();
                break;
            case LOSE:
                loseState();
                break;
            case HELP:
                helpState();
                break;

        }
     
    

        
    }
}

// Sets up GBA
void initialize() {

    

    REG_BG0CNT = BG_8BPP | BG_SCREENBLOCK(20) | BG_CHARBLOCK(0) | BG_SIZE_SMALL;

    // Set up the first state
    goToStart();
}

// Sets up the start state
void goToStart() {



    // hacky, but basically disables sprites for this state
    REG_DISPCTL = MODE0 | BG0_ENABLE;
    
    //Load the palette for your tiles
    DMANow(3, startPal, PALETTE, 256);

    //Load your tiles into the charblock that your background is using
    DMANow(3, startTiles,& CHARBLOCK[0], startTilesLen/2);

    //Load your tile map into the screenblock that your background is using
    DMANow(3, startMap, &SCREENBLOCK[20], startMapLen/2);

    state = START;

    // Begin the seed randomization
    seed = 0;
}

// Runs every frame of the start state
void start() {

    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;
    
    seed++;

    // Lock the framerate to 60 fps
    waitForVBlank();

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START)) {
        // Seed the random generator
        srand(seed);

        goToGame();
        initGame();
    }


    if (BUTTON_PRESSED(BUTTON_SELECT)) {        
        goToHelpState();
    }
}

// Sets up the game state
void goToGame() {



    REG_BG0CNT = BG_8BPP | BG_SCREENBLOCK(25) | BG_CHARBLOCK(0) | BG_SIZE_TALL;



    // hacky, but will do the trick to get sprites on this screen
    REG_DISPCTL |= SPRITE_ENABLE;

        //Load the palette for your tiles
    DMANow(3, gameSplash1Pal, PALETTE, 256);

    //Load your tiles into the charblock that your background is using
    DMANow(3, gameSplash1Tiles,& CHARBLOCK[0], gameSplash1TilesLen/2);

    //Load your tile map into the screenblock that your background is using
    DMANow(3, gameSplash1Map, &SCREENBLOCK[25], gameSplash1MapLen/2);


    // Load the marco sprite Tiles and Pal into their correct spaces in memory
    // (Remember Sprite Palette and Background Palette are 2 different things)

    DMANow(3,spritesheet1Pal,SPRITEPALETTE, spritesheet1PalLen/2);
    DMANow(3,spritesheet1Tiles,&CHARBLOCK[4],spritesheet1TilesLen/2);


    //Hide all sprites with hideSprites()
    hideSprites();
    waitForVBlank();
    DMANow(3,shadowOAM,OAM,128*4);





    state = GAME;
}

// Runs every frame of the game state
void game() {

    REG_BG0HOFF = hOff;
    REG_BG0VOFF = vOff;

    updateGame();
    waitForVBlank();
    drawGame();

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START)) 
        goToPause();
  
    if (BUTTON_PRESSED(BUTTON_SELECT)) {        
        goToHelpState();
    }

}

// Sets up the pause state
void goToPause() {

    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;
    
    REG_BG0CNT = BG_8BPP | BG_SCREENBLOCK(20) | BG_CHARBLOCK(0) | BG_SIZE_SMALL;



    // hacky, but basically disables sprites for this state
    REG_DISPCTL = MODE0 | BG0_ENABLE;

    //Load the palette for your tiles
    DMANow(3, pausePal, PALETTE, 256);

    //Load your tiles into the charblock that your background is using
    DMANow(3, pauseTiles,& CHARBLOCK[0], pauseTilesLen/2);

    //Load your tile map into the screenblock that your background is using
    DMANow(3, pauseMap, &SCREENBLOCK[20], pauseMapLen/2);

    state = PAUSE;
}

// Runs every frame of the pause state
void pause() {

    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;
    
    // Lock the framerate to 60 fps
    waitForVBlank();

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START))
        goToGame();
    else if (BUTTON_PRESSED(BUTTON_SELECT))
        goToStart();
}

// Sets up the daria state
void goToWinState() {
    
    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;
    
    REG_BG0CNT = BG_8BPP | BG_SCREENBLOCK(20) | BG_CHARBLOCK(0) | BG_SIZE_SMALL;


    // hacky, but basically disables sprites for this state
    REG_DISPCTL = MODE0 | BG0_ENABLE;

    //Load the palette for your tiles
    DMANow(3, winPal, PALETTE, 256);

    //Load your tiles into the charblock that your background is using
    DMANow(3, winTiles,& CHARBLOCK[0], winTilesLen/2);

    //Load your tile map into the screenblock that your background is using
    DMANow(3, winMap, &SCREENBLOCK[20], winMapLen/2);    

    state = WIN;
}

void winState() {
    
    // Lock the framerate to 60 fps
    waitForVBlank();

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START))
        goToStart();
}


void goToLoseState() {

    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;

    REG_BG0CNT = BG_8BPP | BG_SCREENBLOCK(20) | BG_CHARBLOCK(0) | BG_SIZE_SMALL;


    // hacky, but basically disables sprites for this state
    REG_DISPCTL = MODE0 | BG0_ENABLE;

    //Load the palette for your tiles
    DMANow(3, losePal, PALETTE, 256);

    //Load your tiles into the charblock that your background is using
    DMANow(3, loseTiles,& CHARBLOCK[0], loseTilesLen/2);

    //Load your tile map into the screenblock that your background is using
    DMANow(3, loseMap, &SCREENBLOCK[20], loseMapLen/2);   

    state = LOSE;
}

// Runs every frame of the jane state
void loseState() {
     
    // Lock the framerate to 60 fps
    waitForVBlank();

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START)) 
        goToStart();
}

//===============================ADDITIONAL STATES=================================

void goToHelpState() {
    
    


    // hacky, but basically disables sprites for this state
    REG_DISPCTL = MODE0 | BG0_ENABLE;

    //set BG0 to small again
    REG_BG0CNT = BG_8BPP | BG_SCREENBLOCK(20) | BG_CHARBLOCK(0) | BG_SIZE_SMALL;


    DMANow(3, &helpPal, PALETTE, helpPalLen/2);
    DMANow(3, helpTiles, &CHARBLOCK[0], helpTilesLen/2);
    DMANow(3, helpMap, &SCREENBLOCK[20], helpMapLen/2);

    
    
    state = HELP;
}


void helpState() {

    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;

    // Lock the framerate to 60 fps
    waitForVBlank();

    if (BUTTON_PRESSED(BUTTON_START)) {
        goToGame();
    }
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToStart();
    }
}















