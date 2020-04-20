//Bugs: shifting of the stars once thier hOff resets
//Steven wont walk left in laft half of screen
//collision with kindergrten state screen kinda glitchy..can this be fixed??
//rectangle movement tweakin



#include <stdlib.h>
#include <stdio.h>
#include "myLib.h"
#include "game.h"

//insert all splash screens
#include "start.h"
#include "gameSplash1.h"
#include "pause.h"
#include "win.h"
#include "lose.h"
#include "help.h"






//star BG's
#include "jungle.h"
#include "jungle2.h"
#include "island.h"
#include "island2.h"
#include "zoo.h"
#include "zoo2.h"
#include "garden.h"
#include "garden2.h"
#include "kindergarten.h"
#include "kindergarten2.h"
#include "arena.h"
#include "arena2.h"
#include "desert.h"
#include "desert2.h"



//spritesheet
#include "spritesheet1.h"

//sound elements
#include "sound.h"
#include "spacedOutBeats.h"
#include "gameSong.h"

//XL Wide BG
#include "escapismbg.h"



//cut scene bgs
#include "prison.h"
#include "prison2.h"
#include "sleep.h"
#include "found.h"
#include "swim.h"
#include "fast.h"


// Prototypes
void initialize();

// State Prototypes

void goToPrisonState();
void goToSleepState();
void goToFoundState();
void goToSwimState();
void goToFastState();

void prisonState();
void sleepState();
void foundState();
void swimState();
void fastState();

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
void goToKindergartenState();
void goToArenaState();
void goToDesertState();




//TODO: add more stars!!!

// States
enum {START, GAME, PAUSE, WIN, LOSE, HELP, PRISON, SLEEP, FOUND, SWIM, FAST};
int state;

//int foodEaten;
int lose;


extern OBJ_ATTR shadowOAM[128];
extern ANISPRITE *stars[NUMSTARS];
extern int screenBlock;


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

            case PRISON:
                prisonState();
                break;
            case SLEEP:
                sleepState();
                break;
            case FOUND:
                foundState();
                break;
            case SWIM:
                swimState();
                break;
             case FAST:
                fastState();
                break;               

        }
     
    

        
    }
}







void goToPrison() {

    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;


    // hacky, but basically disables sprites for this state
    REG_DISPCTL = MODE0 | BG1_ENABLE | BG0_ENABLE;



    //Load the palette for your tiles
    DMANow(3, prisonPal, PALETTE, 256);

    //Back BG
     REG_BG1CNT = BG_4BPP | BG_SCREENBLOCK(27) | BG_CHARBLOCK(1) | BG_SIZE_SMALL;
    //Load your tiles into the charblock that your background is using
    DMANow(3, prisonTiles,& CHARBLOCK[1], prisonTilesLen/2);

    //Load your tile map into the screenblock that your background is using
    DMANow(3, prisonMap, &SCREENBLOCK[27], prisonMapLen/2);



    // //Top BG with text bubble
    REG_BG0CNT = BG_4BPP | BG_SCREENBLOCK(20) | BG_CHARBLOCK(0) | BG_SIZE_SMALL;

    //Load your tiles into the charblock that your background is using
    DMANow(3, prison2Tiles,& CHARBLOCK[0], prison2TilesLen/2);

    //Load your tile map into the screenblock that your background is using
    DMANow(3, prison2Map, &SCREENBLOCK[20], prison2MapLen/2);

    state = PRISON; 

}

void prisonState() {


    if(BUTTON_PRESSED(BUTTON_LEFT)) {
        goToStart();
    }

    if(BUTTON_PRESSED(BUTTON_RIGHT)) {
        goToSleep();
    }

}

void goToSleep() {


    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;


    // hacky, but basically disables sprites for this state
    REG_DISPCTL = MODE0 | BG0_ENABLE;



    //Load the palette for your tiles
    DMANow(3, sleepPal, PALETTE, 256);

    //Back BG
     REG_BG0CNT = BG_4BPP | BG_SCREENBLOCK(27) | BG_CHARBLOCK(1) | BG_SIZE_SMALL;
    //Load your tiles into the charblock that your background is using
    DMANow(3, sleepTiles,& CHARBLOCK[1], sleepTilesLen/2);

    //Load your tile map into the screenblock that your background is using
    DMANow(3, sleepMap, &SCREENBLOCK[27], sleepMapLen/2);

    state = SLEEP;

}

void sleepState() {
    
    if(BUTTON_PRESSED(BUTTON_RIGHT)) {
        goToFound();
    }


    if(BUTTON_PRESSED(BUTTON_LEFT)) {
        goToPrison();
    }
}


void goToFound() {

    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;


    // hacky, but basically disables sprites for this state
    REG_DISPCTL = MODE0 | BG0_ENABLE;



    //Load the palette for your tiles
    DMANow(3, foundPal, PALETTE, 256);

    //Back BG
     REG_BG0CNT = BG_4BPP | BG_SCREENBLOCK(27) | BG_CHARBLOCK(1) | BG_SIZE_SMALL;
    //Load your tiles into the charblock that your background is using
    DMANow(3, foundTiles,& CHARBLOCK[1], foundTilesLen/2);

    //Load your tile map into the screenblock that your background is using
    DMANow(3, foundMap, &SCREENBLOCK[27], foundMapLen/2);

    state = FOUND;

}

void foundState() {

    if(BUTTON_PRESSED(BUTTON_RIGHT)) {
        goToSwim();
    }


    if(BUTTON_PRESSED(BUTTON_LEFT)) {
        goToSleep();
    }

}
void goToSwim() {

    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;


    // hacky, but basically disables sprites for this state
    REG_DISPCTL = MODE0 | BG0_ENABLE;



    //Load the palette for your tiles
    DMANow(3, swimPal, PALETTE, 256);

    //Back BG
     REG_BG0CNT = BG_4BPP | BG_SCREENBLOCK(27) | BG_CHARBLOCK(1) | BG_SIZE_SMALL;
    //Load your tiles into the charblock that your background is using
    DMANow(3, swimTiles,& CHARBLOCK[1], swimTilesLen/2);

    //Load your tile map into the screenblock that your background is using
    DMANow(3, swimMap, &SCREENBLOCK[27], swimMapLen/2);

    state = SWIM;

}

void swimState() {
    if(BUTTON_PRESSED(BUTTON_RIGHT)) {
        goToFast();
    }


    if(BUTTON_PRESSED(BUTTON_LEFT)) {
        goToFound();
    }


}
void goToFast() {

    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;


    // hacky, but basically disables sprites for this state
    REG_DISPCTL = MODE0 | BG0_ENABLE;



    //Load the palette for your tiles
    DMANow(3, fastPal, PALETTE, 256);

    //Back BG
     REG_BG0CNT = BG_4BPP | BG_SCREENBLOCK(27) | BG_CHARBLOCK(1) | BG_SIZE_SMALL;
    //Load your tiles into the charblock that your background is using
    DMANow(3, fastTiles,& CHARBLOCK[1], fastTilesLen/2);

    //Load your tile map into the screenblock that your background is using
    DMANow(3, fastMap, &SCREENBLOCK[27], fastMapLen/2);

    state = FAST;


}


void fastState() {

    seed++;

    // Lock the framerate to 60 fps
    waitForVBlank();

    if(BUTTON_PRESSED(BUTTON_LEFT)) {
        goToSwim();
    }

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START)) {
        // Seed the random generator
        srand(seed);
        
        initGame();
        goToGame();
        stopSound();
        playSoundA(gameSong, GAMESONGLEN, 1);
        
    }


}



// Sets up GBA
void initialize() {

    
    initGame();

    REG_BG0CNT = BG_8BPP | BG_SCREENBLOCK(20) | BG_CHARBLOCK(0) | BG_SIZE_SMALL;

    //UNCOMMENT FOR SOUND
    setupInterrupts();
    setupSounds();

    // Set up the first state
    goToStart();
}

// Sets up the start state
void goToStart() {

    REG_BG0CNT = BG_8BPP | BG_SCREENBLOCK(20) | BG_CHARBLOCK(0) | BG_SIZE_SMALL;

    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;
    
    //Load the palette for your tiles
    DMANow(3, startPal, PALETTE, 256);

    //Load your tiles into the charblock that your background is using
    DMANow(3, startTiles,& CHARBLOCK[0], startTilesLen/2);

    //Load your tile map into the screenblock that your background is using
    DMANow(3, startMap, &SCREENBLOCK[20], startMapLen/2);
    
    waitForVBlank();
    


    // hacky, but basically disables sprites for this state
    REG_DISPCTL = MODE0 | BG0_ENABLE;


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
        
        initGame();
        goToGame();
        stopSound();
        playSoundA(gameSong, GAMESONGLEN, 1);
        
    }

    if (BUTTON_PRESSED(BUTTON_RIGHT)) {
        goToPrison();
        
    }


    if (BUTTON_PRESSED(BUTTON_SELECT)) {
                
        goToHelpState();
    }


}

// Sets up the game state
void goToGame() {

// hacky, but basically disables BG 1 for this state
    REG_DISPCTL = MODE0 | BG0_ENABLE;

// hacky, but will do the trick to get sprites on this screen
    REG_DISPCTL |= SPRITE_ENABLE;


    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(screenBlock) | BG_SIZE_WIDE | BG_8BPP;

    // REG_BG0HOFF = hOff;
    // REG_BG0VOFF = vOff;


    //set up the XL wide background
    DMANow(3, escapismbgPal, PALETTE, 256);
    DMANow(3, escapismbgTiles, &CHARBLOCK[0], escapismbgTilesLen / 2);
    DMANow(3, escapismbgMap, &SCREENBLOCK[28], escapismbgMapLen / 2);






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
        steven.worldRow = 50;
        steven.worldCol = 125;
        goToZooState();      
    }

    if (stars[2]->bubbled == 0 && collision(steven.worldRow, steven.worldCol, steven.height, steven.width, stars[2]->worldRow, stars[2]->worldCol, stars[2]->height, stars[2]->width)) {
        steven.worldRow = 90;
        steven.worldCol = 380;
        goToJdbState();

    }


    if (stars[3]->bubbled == 0 && collision(steven.worldRow, steven.worldCol, steven.height, steven.width, stars[3]->worldRow, stars[3]->worldCol, stars[3]->height, stars[3]->width)) {
        steven.worldRow = 95;
        steven.worldCol = 535;          
        goToGardenState();
    
    }


    if (stars[4]->bubbled == 0 && collision(steven.worldRow, steven.worldCol, steven.height, steven.width, stars[4]->worldRow, stars[4]->worldCol, stars[4]->height, stars[4]->width)) {
        steven.worldRow = 30;
        steven.worldCol = 620;
        goToMIState();      
    }


    if (stars[5]->bubbled == 0 && collision(steven.worldRow, steven.worldCol, steven.height, steven.width, stars[5]->worldRow, stars[5]->worldCol, stars[5]->height, stars[5]->width)) {
        steven.worldRow = stars[5]->worldRow;
        steven.worldCol = stars[5]->worldCol - 20;
        goToKindergartenState();     
    }


    if (stars[6]->bubbled == 0 && collision(steven.worldRow, steven.worldCol, steven.height, steven.width, stars[6]->worldRow, stars[6]->worldCol, stars[6]->height, stars[6]->width)) {
        steven.worldRow = stars[6]->worldRow;
        
        steven.worldCol = stars[6]->worldCol + 16;
        goToArenaState();     
    }

    if (stars[7]->bubbled == 0 && collision(steven.worldRow, steven.worldCol, steven.height, steven.width, stars[7]->worldRow, stars[7]->worldCol, stars[7]->height, stars[7]->width)) {
        steven.worldRow = 68;     
        steven.worldCol = 985;
        goToDesertState();     
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

        //BUG: if you go from start > help > game the sound won't start
        unpauseSound();
        goToGame();  
    
    } else if (BUTTON_PRESSED(BUTTON_SELECT)) {
        REG_DISPCTL |= BG1_ENABLE;
        goToHelpState();

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
    

}



void goToMIState() {

    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;

    // hacky, but basically disables sprites for this state
    REG_DISPCTL = MODE0 | BG1_ENABLE | BG0_ENABLE;

    //Load the palette for your tiles
    DMANow(3, islandPal, PALETTE, 256);

    //Back BG
     REG_BG1CNT = BG_4BPP | BG_SCREENBLOCK(27) | BG_CHARBLOCK(1) | BG_SIZE_SMALL;
    //Load your tiles into the charblock that your background is using
    DMANow(3, islandTiles,& CHARBLOCK[1], islandTilesLen/2);

    //Load your tile map into the screenblock that your background is using
    DMANow(3, islandMap, &SCREENBLOCK[27], islandMapLen/2);



    //Top BG with text bubble
    REG_BG0CNT = BG_4BPP | BG_SCREENBLOCK(20) | BG_CHARBLOCK(0) | BG_SIZE_SMALL;

    //Load your tiles into the charblock that your background is using
    DMANow(3, island2Tiles,& CHARBLOCK[0], island2TilesLen/2);

    //Load your tile map into the screenblock that your background is using
    DMANow(3, island2Map, &SCREENBLOCK[20], island2MapLen/2);

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


    // hacky, but basically disables sprites for this state
    REG_DISPCTL = MODE0 | BG1_ENABLE | BG0_ENABLE;



    //Load the palette for your tiles
    DMANow(3, gardenPal, PALETTE, 256);

    //Back BG
     REG_BG1CNT = BG_4BPP | BG_SCREENBLOCK(27) | BG_CHARBLOCK(1) | BG_SIZE_SMALL;
    //Load your tiles into the charblock that your background is using
    DMANow(3, gardenTiles,& CHARBLOCK[1], gardenTilesLen/2);

    //Load your tile map into the screenblock that your background is using
    DMANow(3, gardenMap, &SCREENBLOCK[27], gardenMapLen/2);



    // //Top BG with text bubble
    REG_BG0CNT = BG_4BPP | BG_SCREENBLOCK(20) | BG_CHARBLOCK(0) | BG_SIZE_SMALL;

    //Load your tiles into the charblock that your background is using
    DMANow(3, garden2Tiles,& CHARBLOCK[0], garden2TilesLen/2);

    //Load your tile map into the screenblock that your background is using
    DMANow(3, garden2Map, &SCREENBLOCK[20], garden2MapLen/2);

    state = PAUSE; 

}



void goToKindergartenState() {
 
    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;


    // hacky, but basically disables sprites for this state
    REG_DISPCTL = MODE0 | BG1_ENABLE | BG0_ENABLE;



    //Load the palette for your tiles
    DMANow(3, kindergartenPal, PALETTE, 256);

    //Back BG
     REG_BG1CNT = BG_8BPP | BG_SCREENBLOCK(20) | BG_CHARBLOCK(1) | BG_SIZE_SMALL;
    //Load your tiles into the charblock that your background is using
    DMANow(3, kindergartenTiles,& CHARBLOCK[1], kindergartenTilesLen/2);

    //Load your tile map into the screenblock that your background is using
    DMANow(3, kindergartenMap, &SCREENBLOCK[20], kindergartenMapLen/2);



    // // //Top BG with text bubble
    REG_BG0CNT = BG_4BPP | BG_SCREENBLOCK(26) | BG_CHARBLOCK(0) | BG_SIZE_SMALL;

    //Load your tiles into the charblock that your background is using
    DMANow(3, kindergarten2Tiles,& CHARBLOCK[0], kindergarten2TilesLen/2);

    //Load your tile map into the screenblock that your background is using
    DMANow(3, kindergarten2Map, &SCREENBLOCK[26], kindergarten2MapLen/2);

    state = PAUSE; 


}
void goToArenaState() {

    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;


    // hacky, but basically disables sprites for this state
    REG_DISPCTL = MODE0 | BG1_ENABLE | BG0_ENABLE;



    //Load the palette for your tiles
    DMANow(3, arenaPal, PALETTE, 256);

    //Back BG
     REG_BG1CNT = BG_4BPP | BG_SCREENBLOCK(27) | BG_CHARBLOCK(1) | BG_SIZE_SMALL;
    //Load your tiles into the charblock that your background is using
    DMANow(3, arenaTiles,& CHARBLOCK[1], arenaTilesLen/2);

    //Load your tile map into the screenblock that your background is using
    DMANow(3, arenaMap, &SCREENBLOCK[27], arenaMapLen/2);



    //Top BG with text bubble
    REG_BG0CNT = BG_4BPP | BG_SCREENBLOCK(20) | BG_CHARBLOCK(0) | BG_SIZE_SMALL;

    //Load your tiles into the charblock that your background is using
    DMANow(3, arena2Tiles,& CHARBLOCK[0], arena2TilesLen/2);

    //Load your tile map into the screenblock that your background is using
    DMANow(3, arena2Map, &SCREENBLOCK[20], arena2MapLen/2);

    state = PAUSE;

}
void goToDesertState() {


    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;


    // hacky, but basically disables sprites for this state
    REG_DISPCTL = MODE0 | BG1_ENABLE | BG0_ENABLE;



    //Load the palette for your tiles
    DMANow(3, desertPal, PALETTE, 256);

    //Back BG
     REG_BG1CNT = BG_4BPP | BG_SCREENBLOCK(27) | BG_CHARBLOCK(1) | BG_SIZE_SMALL;
    //Load your tiles into the charblock that your background is using
    DMANow(3, desertTiles,& CHARBLOCK[1], desertTilesLen/2);

    //Load your tile map into the screenblock that your background is using
    DMANow(3, desertMap, &SCREENBLOCK[27], desertMapLen/2);



    //Top BG with text bubble
    REG_BG0CNT = BG_4BPP | BG_SCREENBLOCK(20) | BG_CHARBLOCK(0) | BG_SIZE_SMALL;

    //Load your tiles into the charblock that your background is using
    DMANow(3, desert2Tiles,& CHARBLOCK[0], desert2TilesLen/2);

    //Load your tile map into the screenblock that your background is using
    DMANow(3, desert2Map, &SCREENBLOCK[20], desert2MapLen/2);

    state = PAUSE;

}

















