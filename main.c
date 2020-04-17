//M3 Progress: I have the game playable to where the win state can be reached and have started adding sound
//I have all or the core game mechanics implemented in my code and have put in the collission map
//currently have a bug with the state screen not ully showing when player collides with star
//another bug is my player getting stuck outside my colmap from resetting its position after star/enemy collision
//(I did that as an attempt to avoid play from autmatically losing once/ continuously collidiong with stars/enemies)
//Whats left to be done is the inplementation of the XL background and (hopefully) an autoscrolling screen
// Some extra things I want to add is more sounds and some
//extra cut scenes in my state machine



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
//star BG's
#include "jungle.h"
#include "jungle2.h"


#include "mIsland.h"


#include "zoo.h"
#include "zoo2.h"


#include "garden.h"



#include "spritesheet1.h"


#include "sound.h"

#include "spacedOutBeats.h"
#include "gameSong.h"


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
void goToJdbState();
void goToMIState();
void goToZooState();
void goToGardenState();




//TODO: add more stars!!!

// States
enum {START, GAME, PAUSE, WIN, LOSE, HELP};
int state;

//int foodEaten;
int lose;


extern OBJ_ATTR shadowOAM[128];
extern ANISPRITE *stars[NUMSTARS];


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

    //UNCOMMENT FOR SOUND
    setupInterrupts();
    setupSounds();

    // Set up the first state
    goToStart();
}

// Sets up the start state
void goToStart() {


    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;
    
    // hacky, but basically disables sprites for this state
    REG_DISPCTL = MODE0 | BG0_ENABLE;
    
    //Load the palette for your tiles
    DMANow(3, startPal, PALETTE, 256);

    //Load your tiles into the charblock that your background is using
    DMANow(3, startTiles,& CHARBLOCK[0], startTilesLen/2);

    //Load your tile map into the screenblock that your background is using
    DMANow(3, startMap, &SCREENBLOCK[20], startMapLen/2);


    //play intro music
    //UMCOMMENT: for sound
    playSoundA(spacedOutBeats, SPACEDOUTBEATSLEN, 1);

    state = START;

    // Begin the seed randomization
    seed = 0;
}

// Runs every frame of the start state
void start() {


    
    seed++;

    // Lock the framerate to 60 fps
    waitForVBlank();

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START)) {
        // Seed the random generator
        srand(seed);
        //UNCOMMENT FOR SOUND
        goToGame();
        stopSound();
        playSoundA(gameSong, GAMESONGLEN, 1);
        initGame();
    }


    if (BUTTON_PRESSED(BUTTON_SELECT)) {        
        goToHelpState();
    }
}

// Sets up the game state
void goToGame() {

// hacky, but basically disables BG 1 for this state
    REG_DISPCTL = MODE0 | BG0_ENABLE;

    REG_BG0CNT = BG_8BPP | BG_SCREENBLOCK(25) | BG_CHARBLOCK(0) | BG_SIZE_TALL;

    // REG_BG0HOFF = hOff;
    // REG_BG0VOFF = vOff;



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



    // REG_BG0HOFF = hOff;
    // REG_BG0VOFF = vOff;

    updateGame();
    waitForVBlank();
    drawGame();

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START)) 
        
        goToPause();
  
    if (BUTTON_PRESSED(BUTTON_SELECT)) {        
        //UNCOMMENT FOR SOUND
        pauseSound();

        //TODO: add in help song
        goToHelpState();
    }



    if (stars[0]->bubbled == 0 && collision(steven.worldRow, steven.worldCol, steven.height, steven.width, stars[0]->worldRow, stars[0]->worldCol, stars[0]->height, stars[0]->width)) {
        goToWinState();     
    }


    if (stars[1]->bubbled == 0 && collision(steven.worldRow, steven.worldCol, steven.height, steven.width, stars[1]->worldRow, stars[1]->worldCol, stars[1]->height, stars[1]->width)) {
        goToZooState();      
    }

    if (stars[2]->bubbled == 0 && collision(steven.worldRow, steven.worldCol, steven.height, steven.width, stars[2]->worldRow, stars[2]->worldCol, stars[2]->height, stars[2]->width)) {
        goToJdbState();
    }


    if (stars[3]->bubbled == 0 && collision(steven.worldRow, steven.worldCol, steven.height, steven.width, stars[3]->worldRow, stars[3]->worldCol, stars[3]->height, stars[3]->width)) {
        goToGardenState();      
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
    //UNCOMMENT FOR SOUND
    pauseSound();
    
    // Lock the framerate to 60 fps
    waitForVBlank();

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START)) {
        //UNCOMMENT FOR SOUND
        unpauseSound();
        goToGame();  
    
    } else if (BUTTON_PRESSED(BUTTON_SELECT)) { 
        goToStart();
    }
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
    
    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;   


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

    // Lock the framerate to 60 fps
    waitForVBlank();

    if (BUTTON_PRESSED(BUTTON_START)) {
        unpauseSound();
        goToGame();
    }
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToStart();
    }
}

//======================================STAR STATES===================================================================


void goToJdbState() {

    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;

    // hacky, but basically disables sprites for this state
    REG_DISPCTL = MODE0 | BG1_ENABLE | BG0_ENABLE;



    //Load the BG1 palette for your tiles
    DMANow(3, junglePal, PALETTE, 256);

    //Back BG
     REG_BG1CNT = BG_4BPP | BG_SCREENBLOCK(27) | BG_CHARBLOCK(1) | BG_SIZE_SMALL;
    //Load your tiles into the charblock that your background is using
    DMANow(3, jungleTiles,& CHARBLOCK[1], jungleTilesLen/2);

    //Load your tile map into the screenblock that your background is using
    DMANow(3, jungleMap, &SCREENBLOCK[27], jungleMapLen/2);



    //Top BG with text bubble
    REG_BG0CNT = BG_4BPP | BG_SCREENBLOCK(20) | BG_CHARBLOCK(0) | BG_SIZE_SMALL;

    //Load your tiles into the charblock that your background is using
    DMANow(3, jungle2Tiles,& CHARBLOCK[0], jungle2TilesLen/2);

    //Load your tile map into the screenblock that your background is using
    DMANow(3, jungle2Map, &SCREENBLOCK[20], jungle2MapLen/2);

    state = PAUSE; 
    




    
    // REG_BG0CNT = BG_8BPP | BG_SCREENBLOCK(20) | BG_CHARBLOCK(0) | BG_SIZE_SMALL;

    // // hacky, but basically disables sprites for this state
    // REG_DISPCTL = MODE0 | BG0_ENABLE;

    // //Load the palette for your tiles
    // DMANow(3, jdbPal, PALETTE, 256);

    // //Load your tiles into the charblock that your background is using
    // DMANow(3, jdbTiles,& CHARBLOCK[0], jdbTilesLen/2);

    // //Load your tile map into the screenblock that your background is using
    // DMANow(3, jdbMap, &SCREENBLOCK[20], jdbMapLen/2);

    // state = PAUSE;

}



void goToMIState() {

    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;
    
    REG_BG0CNT = BG_8BPP | BG_SCREENBLOCK(20) | BG_CHARBLOCK(0) | BG_SIZE_SMALL;



    // hacky, but basically disables sprites for this state
    REG_DISPCTL = MODE0 | BG0_ENABLE;

    //Load the palette for your tiles
    DMANow(3, mIslandPal, PALETTE, 256);

    //Load your tiles into the charblock that your background is using
    DMANow(3, mIslandTiles,& CHARBLOCK[0], mIslandTilesLen/2);

    //Load your tile map into the screenblock that your background is using
    DMANow(3, mIslandMap, &SCREENBLOCK[20], mIslandMapLen/2);

    state = PAUSE;

}


void goToZooState() {

    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;


   
    // hacky, but basically disables sprites for this state
    REG_DISPCTL = MODE0 | BG0_ENABLE | BG1_ENABLE;



    //Load the palette for your tiles
    DMANow(3, zooPal, PALETTE, 256);

    //Back BG
     REG_BG1CNT = BG_4BPP | BG_SCREENBLOCK(27) | BG_CHARBLOCK(1) | BG_SIZE_SMALL;
    //Load your tiles into the charblock that your background is using
    DMANow(3, zooTiles,& CHARBLOCK[1], zooTilesLen/2);

    //Load your tile map into the screenblock that your background is using
    DMANow(3, zooMap, &SCREENBLOCK[27], zooMapLen/2);



    //Top BG with text bubble
    REG_BG0CNT = BG_4BPP | BG_SCREENBLOCK(20) | BG_CHARBLOCK(0) | BG_SIZE_SMALL;

    //Load your tiles into the charblock that your background is using
    DMANow(3, zoo2Tiles,& CHARBLOCK[0], zoo2TilesLen/2);

    //Load your tile map into the screenblock that your background is using
    DMANow(3, zoo2Map, &SCREENBLOCK[20], zoo2MapLen/2);

    state = PAUSE; 
    
}


void goToGardenState() {
    
    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;
    
    REG_BG0CNT = BG_8BPP | BG_SCREENBLOCK(20) | BG_CHARBLOCK(0) | BG_SIZE_SMALL;



    // hacky, but basically disables sprites for this state
    REG_DISPCTL = MODE0 | BG0_ENABLE;

    //Load the palette for your tiles
    DMANow(3, gardenPal, PALETTE, 256);

    //Load your tiles into the charblock that your background is using
    DMANow(3, gardenTiles,& CHARBLOCK[0], gardenTilesLen/2);

    //Load your tile map into the screenblock that your background is using
    DMANow(3, gardenMap, &SCREENBLOCK[20], gardenMapLen/2);

    state = PAUSE;
}

















