//Whats  done so far:
//All of the project requirements except playing two sounds at once

//Things Left:
//add diff sounds for ea star
//add star warp to prison, win, and rest of star sounds



//How to play:
//you can either skip to the game state from the start screen or use left and right keys to go through the cut scene states
//use up, down, left and right keys to move player
//press A to shoot bubblees
// press B to cheat and get a hint at what each star is





#include <stdlib.h>
#include <stdio.h>
#include "myLib.h"
#include "game.h"

//insert all splash screens
#include "start.h"
#include "gameSplash1.h"
#include "pauseswim.h"
#include "win.h"
#include "lose.h"
#include "help.h"






//star BG's
#include "jungle.h"
#include "jungle3.h"
#include "island.h"
#include "island3.h"
#include "zoo.h"
#include "zoo3.h"
#include "garden.h"
#include "garden3.h"
#include "kindergarten.h"
#include "kindergarten3.h"
#include "arena.h"
#include "arena3.h"
#include "desert.h"
#include "desert3.h"



//spritesheet
#include "spritesheet1.h"

//sound elements
#include "sound.h"
#include "spacedOutBeats.h"
#include "gameSong.h"
#include "prisonSound.h"
#include "sleepSound.h"
#include "foundSound.h"
#include "swimSound.h"
#include "fastSound.h"
#include "starSound2.h"
#include "helpSound.h"
#include "pauseSong.h"
#include "loseSound.h"
#include "winSound.h"




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

void goToPrison();
void goToSleep();
void goToFound();
void goToSwim();
void goToFast();


void prisonState();
void sleepState();
void foundState();
void swimState();
void fastState();
void swimPause();

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
enum {START, GAME, PAUSE, WIN, LOSE, HELP, PRISON, SLEEP, FOUND, SWIM, FAST, SWIMPAUSE};
int state;

//int foodEaten;
int lose;
int helpFirst;


extern OBJ_ATTR shadowOAM[128];
extern ANISPRITE *stars[NUMSTARS];
extern int screenBlock;


// Button Variables
unsigned short buttons;
unsigned short oldButtons;

extern int hOff;
extern int vOff;

ANISPRITE sleep;
ANISPRITE swim;
ANISPRITE hair;

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

            case SWIMPAUSE:
                swimPause();
                break;              

        }
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128*4);

        
    }
}







void goToPrison() {

    stopSound();
    playSoundA(prisonSound, PRISONSOUNDLEN - 100, 0);

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
        stopSound();
        goToStart();
    }

    if(BUTTON_PRESSED(BUTTON_RIGHT)) {
        goToSleep();
    }

}

void goToSleep() {
//90,57
    stopSound();
    playSoundA(sleepSound, SLEEPSOUNDLEN, 0);

    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;

    hideSprites();

    // hacky, but basically disables sprites for this state
    REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;



    //Load the palette for your tiles
    DMANow(3, sleepPal, PALETTE, 256);

    //Back BG
     REG_BG0CNT = BG_4BPP | BG_SCREENBLOCK(27) | BG_CHARBLOCK(1) | BG_SIZE_SMALL;
    //Load your tiles into the charblock that your background is using
    DMANow(3, sleepTiles,& CHARBLOCK[1], sleepTilesLen/2);

    //Load your tile map into the screenblock that your background is using
    DMANow(3, sleepMap, &SCREENBLOCK[27], sleepMapLen/2);


    sleep.width = 64;
    sleep.height = 64;
    sleep.screenCol = 87;
    sleep.screenRow = 57;
    sleep.aniCounter = 0;
    sleep.curFrame = 0;
    sleep.numFrames = 3;

    state = SLEEP;

}

void sleepState() {
    
    if(BUTTON_PRESSED(BUTTON_RIGHT)) {
        goToFound();
    }


    if(BUTTON_PRESSED(BUTTON_LEFT)) {
        goToPrison();
    }

    waitForVBlank();
    shadowOAM[0].attr0 = sleep.screenRow | ATTR0_SQUARE;
    shadowOAM[0].attr1 = sleep.screenCol | ATTR1_LARGE; 
    shadowOAM[0].attr2 = ATTR2_TILEID((sleep.curFrame*8) + 8,0 );

        //animation frame every 50 frames of gameplay
    if(sleep.aniCounter % 50 == 0) {
        
        sleep.curFrame++;
        if (sleep.curFrame >= sleep.numFrames) {
            sleep.curFrame = 0;
                
        } 

        if (sleep.curFrame == sleep.numFrames - 1) {
                            //given row and col from OG lab
            sleep.screenRow = 57 - 30;
            sleep.screenCol = 87 - 40;

        } else {
            sleep.screenRow = 57;
            sleep.screenCol = 87;
        }
    }

    sleep.aniCounter++;




    waitForVBlank();

        
    DMANow(3, shadowOAM, OAM, 128*4);

}


void goToFound() {
    stopSound();
    playSoundA(foundSound, FOUNDSOUNDLEN, 0);

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

    stopSound();
    playSoundA(swimSound, SWIMSOUNDLEN, 0);

    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;



    hideSprites();

    // hacky, but basically disables sprites for this state
    REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;



    //Load the palette for your tiles
    DMANow(3, swimPal, PALETTE, 256);

    //Back BG
     REG_BG0CNT = BG_4BPP | BG_SCREENBLOCK(27) | BG_CHARBLOCK(1) | BG_SIZE_SMALL;
    //Load your tiles into the charblock that your background is using
    DMANow(3, swimTiles,& CHARBLOCK[1], swimTilesLen/2);

    //Load your tile map into the screenblock that your background is using
    DMANow(3, swimMap, &SCREENBLOCK[27], swimMapLen/2);

    swim.width = 64;
    swim.height = 64;
    swim.screenCol = 152;
    swim.screenRow = 84;
    swim.aniCounter = 0;
    swim.curFrame = 0;
    swim.numFrames = 2;

    state = SWIM;

}

void swimState() {

    if(BUTTON_PRESSED(BUTTON_RIGHT)) {
        goToFast();
    }


    if(BUTTON_PRESSED(BUTTON_LEFT)) {
        goToFound();
    }

    shadowOAM[0].attr0 = swim.screenRow | ATTR0_SQUARE;
    shadowOAM[0].attr1 = swim.screenCol | ATTR1_LARGE; 
    shadowOAM[0].attr2 = ATTR2_TILEID((swim.curFrame*8), 12 );

        //animation frame every 50 frames of gameplay
    if(swim.aniCounter % 30 == 0) {
        
        swim.curFrame++;
        if (swim.curFrame >= swim.numFrames) {
            swim.curFrame = 0;
                
        } 


    }

    swim.aniCounter++;




    waitForVBlank();      
    DMANow(3, shadowOAM, OAM, 128*4);


}
void goToFast() {

    stopSound();
    playSoundA(fastSound, FASTSOUNDLEN, 0);

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


    hair.width = 64;
    hair.height = 64;
    hair.screenCol = 100;
    hair.screenRow = 5;
    hair.aniCounter = 0;
    hair.curFrame = 0;
    hair.numFrames = 2;

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


    shadowOAM[0].attr0 = hair.screenRow | ATTR0_SQUARE;
    shadowOAM[0].attr1 = hair.screenCol | ATTR1_LARGE; 
    shadowOAM[0].attr2 = ATTR2_TILEID((hair.curFrame*8) + 16, 12 );

        //animation frame every 50 frames of gameplay
    if(hair.aniCounter % 30 == 0) {
        
        hair.curFrame++;
        if (hair.curFrame >= hair.numFrames) {
            hair.curFrame = 0;
                
        } 


    }


}



// Sets up GBA
void initialize() {

    
    //initGame();

    REG_BG0CNT = BG_8BPP | BG_SCREENBLOCK(20) | BG_CHARBLOCK(0) | BG_SIZE_SMALL;

    DMANow(3,spritesheet1Tiles,&CHARBLOCK[4],spritesheet1TilesLen/2);
    DMANow(3,spritesheet1Pal,SPRITEPALETTE, 256);



    //UNCOMMENT FOR SOUND
    setupInterrupts();
    setupSounds();

    // Set up the first state
    goToStart();
}

// Sets up the start state
void goToStart() {

    helpFirst = 0;


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


    stopSound();
    //play intro music
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
        playSoundA(gameSong, GAMESONGLEN - 10, 1);
        
    }

    if (BUTTON_PRESSED(BUTTON_RIGHT)) {
        // stopSound();
        // playSoundA(prisonSound, PRISONSOUNDLEN - 100, 0);
        goToPrison();

        
    }


    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        helpFirst = 1;        
        goToHelpState();
    } else {
        helpFirst = 0;
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
        
        //pauseSound();
        goToHelpState();
    }



    if (stars[0]->bubbled == 0 && collision(steven.worldRow, steven.worldCol, steven.height, steven.width, stars[0]->worldRow, stars[0]->worldCol, stars[0]->height, stars[0]->width)) {
        goToWinState();

            
    }


    if (stars[1]->bubbled == 0 && collision(steven.worldRow, steven.worldCol, steven.height, steven.width, stars[1]->worldRow, stars[1]->worldCol, stars[1]->height, stars[1]->width)) {
        steven.worldRow = 50;
        steven.worldCol = 125;
        goToZooState(); 
        pauseSoundA();
        playSoundB(starSound2, STARSOUND2LEN - 200, 1);     
    }

    if (stars[2]->bubbled == 0 && collision(steven.worldRow, steven.worldCol, steven.height, steven.width, stars[2]->worldRow, stars[2]->worldCol, stars[2]->height, stars[2]->width)) {
        steven.worldRow = 65;
        steven.worldCol = 400;
        goToJdbState();
        pauseSoundA();
        playSoundB(starSound2, STARSOUND2LEN - 200, 1);  

    }


    if (stars[3]->bubbled == 0 && collision(steven.worldRow, steven.worldCol, steven.height, steven.width, stars[3]->worldRow, stars[3]->worldCol, stars[3]->height, stars[3]->width)) {
        steven.worldRow = 95;
        steven.worldCol = 535;          
        goToGardenState();
        pauseSoundA();
        playSoundB(starSound2, STARSOUND2LEN - 200, 1);  
    
    }


    if (stars[4]->bubbled == 0 && collision(steven.worldRow, steven.worldCol, steven.height, steven.width, stars[4]->worldRow, stars[4]->worldCol, stars[4]->height, stars[4]->width)) {
        steven.worldRow = 30;
        steven.worldCol = 620 + 25;
        goToMIState(); 
        pauseSoundA();
        playSoundB(starSound2, STARSOUND2LEN - 200, 1);       
    }


    if (stars[5]->bubbled == 0 && collision(steven.worldRow, steven.worldCol, steven.height, steven.width, stars[5]->worldRow, stars[5]->worldCol, stars[5]->height, stars[5]->width)) {
        steven.worldRow = 95;
        steven.worldCol = 875;
        goToKindergartenState();
        pauseSoundA();
        playSoundB(starSound2, STARSOUND2LEN - 200, 1);               
    }


    if (stars[6]->bubbled == 0 && collision(steven.worldRow, steven.worldCol, steven.height, steven.width, stars[6]->worldRow, stars[6]->worldCol, stars[6]->height, stars[6]->width)) {
        steven.worldRow = 38+16;
        steven.worldCol = 935;
        goToArenaState();
        pauseSoundA();
        playSoundB(starSound2, STARSOUND2LEN - 200, 1);  

    }

    if (stars[7]->bubbled == 0 && collision(steven.worldRow, steven.worldCol, steven.height, steven.width, stars[7]->worldRow, stars[7]->worldCol, stars[7]->height, stars[7]->width)) {
        steven.worldRow = 68;     
        steven.worldCol = 985;
        goToDesertState();
        pauseSoundA();
        playSoundB(starSound2, STARSOUND2LEN - 200, 1);              
    }


}

// Sets up the pause state
void goToPause() {
    
    pauseSoundA();
    playSoundB(pauseSong, PAUSESONGLEN, 1);

    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;



    hideSprites();

    // hacky, but basically disables sprites for this state
    REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;



    //Load the palette for your tiles
    DMANow(3, pauseswimPal, PALETTE, 256);

    //Back BG
     REG_BG0CNT = BG_8BPP | BG_SCREENBLOCK(27) | BG_CHARBLOCK(1) | BG_SIZE_SMALL;
    //Load your tiles into the charblock that your background is using
    DMANow(3, pauseswimTiles,& CHARBLOCK[1], pauseswimTilesLen/2);

    //Load your tile map into the screenblock that your background is using
    DMANow(3, pauseswimMap, &SCREENBLOCK[27], pauseswimMapLen/2);

    swim.width = 64;
    swim.height = 64;
    swim.screenCol = 152;
    swim.screenRow = 84;
    swim.aniCounter = 0;
    swim.curFrame = 0;
    swim.numFrames = 2;  



    state = SWIMPAUSE;
}


void swimPause() {
    
    
    
    
    // Lock the framerate to 60 fps
    waitForVBlank();

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START)) {
        stopSoundB();
        unpauseSound();
        goToGame();  
    
    } else if (BUTTON_PRESSED(BUTTON_SELECT)) {
        REG_DISPCTL |= BG1_ENABLE;
        goToHelpState();

    }


    shadowOAM[0].attr0 = swim.screenRow | ATTR0_SQUARE;
    shadowOAM[0].attr1 = swim.screenCol | ATTR1_LARGE; 
    shadowOAM[0].attr2 = ATTR2_TILEID((swim.curFrame*8), 12 );

        //animation frame every 50 frames of gameplay
    if(swim.aniCounter % 30 == 0) {
        
        swim.curFrame++;
        if (swim.curFrame >= swim.numFrames) {
            swim.curFrame = 0;
                
        } 


    }

    swim.aniCounter++;




    waitForVBlank();      
    DMANow(3, shadowOAM, OAM, 128*4);

}

// Runs every frame of the pause state
void pause() {
    
    // pauseSoundA();
    

    waitForVBlank();

    //returns to game
    if (BUTTON_PRESSED(BUTTON_START)) {
        stopSoundB();
        unpauseSound();
        goToGame(); 

    //goes to help
    } else if (BUTTON_PRESSED(BUTTON_SELECT)) {
        REG_DISPCTL |= BG1_ENABLE;
        goToHelpState();

    }
}

// Sets up the daria state
void goToWinState() {
    pauseSound();
    playSoundB(winSound, WINSOUNDLEN, 0);
    
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
    pauseSound();
    playSoundB(loseSound, LOSESOUNDLEN, 0);

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
        //stopSound();
        goToStart();
}

//===============================ADDITIONAL STATES=================================

void goToHelpState() {


    pauseSoundA();
    playSoundB(helpSound, HELPSOUNDLEN,1);

    
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

    if (BUTTON_PRESSED(BUTTON_START) && !helpFirst) {
        stopSoundB();
        unpauseSound();
        goToGame();
    }

    if (BUTTON_PRESSED(BUTTON_START) && helpFirst) {
        srand(seed);
        
        initGame();
        goToGame();
        stopSound();
        playSoundA(gameSong, GAMESONGLEN - 200, 1);
        helpFirst = 0;
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
    DMANow(3, jungleTiles, &CHARBLOCK[1], jungleTilesLen/2);

    //Load your tile map into the screenblock that your background is using
    DMANow(3, jungleMap, &SCREENBLOCK[27], jungleMapLen/2);



    //Top BG with text bubble
    REG_BG0CNT = BG_4BPP | BG_SCREENBLOCK(20) | BG_CHARBLOCK(0) | BG_SIZE_SMALL;

    //Load your tiles into the charblock that your background is using
    DMANow(3, jungle3Tiles, &CHARBLOCK[0], jungle3TilesLen/2);

    //Load your tile map into the screenblock that your background is using
    DMANow(3, jungle3Map, &SCREENBLOCK[20], jungle3MapLen/2);

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
    DMANow(3, islandTiles, &CHARBLOCK[1], islandTilesLen/2);

    //Load your tile map into the screenblock that your background is using
    DMANow(3, islandMap, &SCREENBLOCK[27], islandMapLen/2);



    //Top BG with text bubble
    REG_BG0CNT = BG_4BPP | BG_SCREENBLOCK(20) | BG_CHARBLOCK(0) | BG_SIZE_SMALL;

    //Load your tiles into the charblock that your background is using
    DMANow(3, island3Tiles, &CHARBLOCK[0], island3TilesLen/2);

    //Load your tile map into the screenblock that your background is using
    DMANow(3, island3Map, &SCREENBLOCK[20], island3MapLen/2);

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
    DMANow(3, zooTiles, &CHARBLOCK[1], zooTilesLen/2);

    //Load your tile map into the screenblock that your background is using
    DMANow(3, zooMap, &SCREENBLOCK[27], zooMapLen/2);



    //Top BG with text bubble
    REG_BG0CNT = BG_4BPP | BG_SCREENBLOCK(20) | BG_CHARBLOCK(0) | BG_SIZE_SMALL;

    //Load your tiles into the charblock that your background is using
    DMANow(3, zoo3Tiles,& CHARBLOCK[0], zoo3TilesLen/2);

    //Load your tile map into the screenblock that your background is using
    DMANow(3, zoo3Map, &SCREENBLOCK[20], zoo3MapLen/2);

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
    DMANow(3, gardenTiles, &CHARBLOCK[1], gardenTilesLen/2);

    //Load your tile map into the screenblock that your background is using
    DMANow(3, gardenMap, &SCREENBLOCK[27], gardenMapLen/2);



    // //Top BG with text bubble
    REG_BG0CNT = BG_4BPP | BG_SCREENBLOCK(20) | BG_CHARBLOCK(0) | BG_SIZE_SMALL;

    //Load your tiles into the charblock that your background is using
    DMANow(3, garden3Tiles, &CHARBLOCK[0], garden3TilesLen/2);

    //Load your tile map into the screenblock that your background is using
    DMANow(3, garden3Map, &SCREENBLOCK[20], garden3MapLen/2);

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
    DMANow(3, kindergartenTiles, &CHARBLOCK[1], kindergartenTilesLen/2);

    //Load your tile map into the screenblock that your background is using
    DMANow(3, kindergartenMap, &SCREENBLOCK[20], kindergartenMapLen/2);



    // // //Top BG with text bubble
    REG_BG0CNT = BG_4BPP | BG_SCREENBLOCK(26) | BG_CHARBLOCK(0) | BG_SIZE_SMALL;

    //Load your tiles into the charblock that your background is using
    DMANow(3, kindergarten3Tiles, &CHARBLOCK[0], kindergarten3TilesLen/2);

    //Load your tile map into the screenblock that your background is using
    DMANow(3, kindergarten3Map, &SCREENBLOCK[26], kindergarten3MapLen/2);

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
    DMANow(3, arena3Tiles,& CHARBLOCK[0], arena3TilesLen/2);

    //Load your tile map into the screenblock that your background is using
    DMANow(3, arena3Map, &SCREENBLOCK[20], arena3MapLen/2);

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
    DMANow(3, desert3Tiles,& CHARBLOCK[0], desert3TilesLen/2);

    //Load your tile map into the screenblock that your background is using
    DMANow(3, desert3Map, &SCREENBLOCK[20], desert3MapLen/2);

    state = PAUSE;

}

















