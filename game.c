#include <stdlib.h>
#include "myLib.h"
#include "game.h"

//spritesheet
#include "spritesheet1.h"
//sound elements
#include "sound.h"

//BG elements
#include "colmap1.h"
#include "colmap.h"
#include "escapismbg.h"


//sound elements
#include "starSound2.h"
#include "bubbleSound.h"
#include "ydSound.h"
#include "bdSound.h"
#include "wdSound.h"
#include "spinelSound.h"
#include "jasperSound.h"
#include "aquaSound.h"
#include "eyeballSound.h"
#include "cheatSound.h"

//TODO: upscale stars and enemies drawing logic


// Variables
//steven
ANISPRITE steven;
int livesLeft;

//BG Variables
int hOff;
int vOff;
// screenBlock to change for XL background
int screenBlock;

//extra lives 
ANISPRITE b1;
ANISPRITE b2;
ANISPRITE b3;

ANISPRITE *bonuses[LIVES] = {&b1, &b2, &b3};

//enemies
ANISPRITE yDiamond;
ANISPRITE bDiamond;
ANISPRITE wDiamond;
ANISPRITE spinel;
ANISPRITE jasper;
ANISPRITE aquamarine;
ANISPRITE topaz;
ANISPRITE eyeball;

//collection pool of enemies that is represented by a pointer array of enemy address
ANISPRITE *enemies[NUMOPS] = {&yDiamond, &bDiamond, &wDiamond, &spinel, &jasper, &aquamarine, &topaz, &eyeball};


//Stars
ANISPRITE earth;
ANISPRITE zoo;
ANISPRITE jungleBase;
ANISPRITE garden;
ANISPRITE island;
ANISPRITE kindergarten;
ANISPRITE arena;
ANISPRITE desert;

//collection pool of stars that is represented by a pointer array of star addresses
ANISPRITE *stars[NUMSTARS] = {&earth, &zoo, &jungleBase, &garden, &island, &kindergarten, &arena, &desert};

//lives sprites
ANISPRITE lives[LIVES];

//bubbles
ANISPRITE bubbles[BUBBLECOUNT];


OBJ_ATTR shadowOAM[128];

enum { SPRITEFRONT, SPRITELEFT, SPRITERIGHT, SPRITEBACK, SPRITEIDLE}; 

// Initialize the game
void initGame() {
	initBG();
	initBonuses();
	initSteven();
	initEnemies();
	initStars();
	initLives();
	initBubbles();





}


// Updates the game each frame
void updateGame() {

//game sounds

    //yellow diamond adlib
    if (steven.worldCol == 20) {
        playSoundB(ydSound, YDSOUNDLEN, 0);
    }

    //blue diamond adlib
    if (steven.worldCol == 160) {
        playSoundB(bdSound, BDSOUNDLEN, 0);
    }

    //white diamond adlib
    if (steven.worldCol == 265) {
        playSoundB(wdSound, WDSOUNDLEN -100, 0);
    }


    // //spinel adlib
    if (steven.worldCol == 335) {
    	playSoundB(spinelSound, SPINELSOUNDLEN - 200 , 0);
    }

    // //jasper adlib
    if (steven.worldCol == 485) {
    	playSoundB(jasperSound, JASPERSOUNDLEN, 0);

    }

    // //aqua adlib 
    if (collision(steven.worldRow, steven.worldCol, steven.height, steven.width,
          60, 570, 20, 1)) {

    	playSoundB(aquaSound, AQUASOUNDLEN, 0);

    }

    // //eyeball adlib
    if (steven.worldCol ==  720) {
    	playSoundB(eyeballSound, EYEBALLSOUNDLEN, 0);

    }

    if (BUTTON_PRESSED(BUTTON_B)) {
    	playSoundB(cheatSound, CHEATSOUNDLEN, 0);
    }








	updateBG();
	updateBonuses();
	animateSteven();
	updateSteven();
	updateStars();
	updateEnemies();
	updateLives();
	

	//Update all the bubbles
	for (int i = 0; i < BUBBLECOUNT; i++)
		updateBubble(&bubbles[i]);



 }





// Draws the game each frame
void drawGame() {
    drawBG();
    drawBonuses();
    drawSteven();
 	drawEnemies();
    drawStars();
	drawLives();
    

  	// Draw all the bubbles
	for (int i = 0; i < BUBBLECOUNT; i++)
		drawBubble(&bubbles[i]);

	
    waitForVBlank();
    DMANow(3,shadowOAM,OAM,128*4);

    
    

}

void initBonuses() {
	b1.worldRow = 70;
	b1.worldCol = 490;


	b2.worldRow = 70;
	b2.worldCol = 725;




	b3.worldRow = 56;
	b3.worldCol = 970;


	for (int i = 0; i < LIVES; i++) {
		bonuses[i]->hoff = 0;
		bonuses[i]->active = 1;
		bonuses[i]->hide = 0;
		bonuses[i]->height = 16;
		bonuses[i]->width = 16;
		bonuses[i]->screenCol = bonuses[i]->worldCol - bonuses[i]->hoff;
		bonuses[i]->screenRow = bonuses[i]->worldRow;
		bonuses[i]->tileRow = 8;
	    bonuses[i]->tileCol = 9;
	}

}
void updateBonuses() {
	//also update with update player and update Bg
	//hanlde player collisions

	for (int i = 0; i < LIVES; i++) {
		if (livesLeft == 2 && bonuses[i]->active && collision(steven.worldRow, steven.worldCol, steven.height, steven.width,
		 bonuses[i]->worldRow, bonuses[i]->worldCol, bonuses[i]->height, bonuses[i]->width)) {
			//steven.worldRow = steven.worldRow -16;
			livesLeft++;
			lives[2].hide = 0;
			lives[2].active = 1;
			bonuses[i]->active = 0;
			bonuses[i]->hide =1;

		}


		if (livesLeft == 1 && bonuses[i]->active && collision(steven.worldRow, steven.worldCol, steven.height, steven.width,
		 bonuses[i]->worldRow, bonuses[i]->worldCol, bonuses[i]->height, bonuses[i]->width)) {
			steven.worldRow = steven.worldRow -16;
			livesLeft++;
			lives[1].hide = 0;
			lives[1].active = 1;
			bonuses[i]->active = 0;
			bonuses[i]->hide =1;

		}
	}

	for (int i = 0; i < LIVES; i++) {
		bonuses[i]->screenCol = bonuses[i]->worldCol - bonuses[i]->hoff;
		bonuses[i]->screenRow = bonuses[i]->worldRow;		
	}


}
void drawBonuses() {

    for (int i = 0; i < LIVES; i++) {

	    if (bonuses[i]->hide || bonuses[i]->screenCol < 0 || bonuses[i]->screenCol > 240) {
	        shadowOAM[30 + i].attr0 |= ATTR0_HIDE;
	    } else {
	        shadowOAM[30 + i].attr0 = (ROWMASK & bonuses[i]->screenRow) | ATTR0_SQUARE;
	        shadowOAM[30 + i].attr1 = (COLMASK & bonuses[i]->screenCol) | ATTR1_SMALL;
	        shadowOAM[30 + i].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(bonuses[i]->tileCol,bonuses[i]->tileRow);
	    }


    }

}


void initBG() {

	hOff = 0;
    vOff = 0;
    screenBlock = 28;

    steven.hoff = 0;


}


void updateBG() {

		//when screen reaches 2nd screenBlock of 256 px
		if (screenBlock == 28 && hOff > 256 && !steven.direction) {
	    	screenBlock = 29;
	    	hOff = 0;
	    	REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(screenBlock) | BG_SIZE_WIDE | BG_8BPP;
    	}

    	//when screen reaches 3rd screenBlock of 256 px
		if (screenBlock == 29 && hOff > 256 && !steven.direction) {
	    	screenBlock = 30;
	    	hOff = 0;
	    	REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(screenBlock) | BG_SIZE_WIDE | BG_8BPP;
    	}

    	//when screen reaches 4th screenBlock of 256 px
		if (screenBlock == 30 && hOff > 256 && !steven.direction) {
	    	screenBlock = 31;
	    	hOff = 0;
	    	REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(screenBlock) | BG_SIZE_WIDE | BG_8BPP;
    	}




    //moving left logic
     if (steven.direction && hOff < 0 && screenBlock == 31) {
        // change where BG0 now looks for maps!
        screenBlock = 30;
        hOff = 256; 
        REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(screenBlock) | BG_SIZE_WIDE | BG_8BPP;
    }


    if (steven.direction && hOff < 0 && screenBlock == 30) {
        // change where BG0 now looks for maps!
        screenBlock = 29;
        hOff = 256; 
        REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(screenBlock) | BG_SIZE_WIDE | BG_8BPP;
    }

    if (steven.direction && hOff < 0 && screenBlock == 29) {
        // change where BG0 now looks for maps!
        screenBlock = 28;
        hOff = 256; 
        REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(screenBlock) | BG_SIZE_WIDE | BG_8BPP;
    }




    if (steven.hoff > 512) {
    	steven.hoff -= 512;
    }

    if (steven.hoff < 0) {
    	steven.hoff -= 512;
    }

    for (int i = 0; i < NUMSTARS; i++) {	

    	if (stars[i]->hoff > 512 && hOff == 0 && screenBlock < 30/*screenBlock != 31*/) { //i think current bug has something to do with this
    		stars[i]->hoff -= 512;
    	}

    	if (stars[i]->hoff < -512 && hOff >= 512) {
    		stars[i]->hoff += 512;
    	}
    }

       for (int i = 0; i < LIVES; i++) {	

    }


    for (int i = 0; i < NUMOPS; i++) {	

    	if (enemies[i]->hoff > 512 && hOff == 0 && screenBlock < 30 /*screenBlock != 31*/) { //i think current bug has something to do with this
    		enemies[i]->hoff -= 512;
    	}

    	if (enemies[i]->hoff < -512 && hOff >= 512) {
    		enemies[i]->hoff += 512;
    	}
    }


	for (int i = 0; i < BUBBLECOUNT; i++) {
		//right movement
    	if (bubbles[i].hoff > 512 && hOff >= 0) {
    		bubbles[i].hoff -= 512;
    	}


    	//left movement- why -512 instead of zero??? 
    	//so it doesnt stop at mid of screen
    	if (bubbles[i].hoff < -512 && hOff >= 512) {
    		bubbles[i].hoff += 512;
    	}




    }

    for (int i = 0; i < LIVES; i++) {

    	if (lives[i].hoff > 512 && hOff >= 0) {
    		lives[i].hoff -= 512;
    	}


      	if (lives[i].hoff < -512 && hOff >= 512) {
    		lives[i].hoff += 512;
    	} 	

    }


	




    REG_BG0HOFF = hOff;
    REG_BG0VOFF = vOff;

}


void drawBG() {



}


//----------------BUBBLES GAME LOGIC--------------------------------------------------------------------------------

void initBubbles() {
	for (int i = 0; i < BUBBLECOUNT; i++) {
		bubbles[i].tileRow = 8;
		bubbles[i].tileCol = 3;
		bubbles[i].hoff = 0;
		bubbles[i].worldRow = steven.worldRow + (steven.height/2);
		bubbles[i].worldCol = steven.worldCol + (steven.width/2);
		bubbles[i].screenRow = bubbles[i].worldCol - bubbles[i].hoff;
		bubbles[i].screenCol = bubbles[i].worldRow - vOff;
		bubbles[i].initScreenRow = bubbles[i].screenRow;
		bubbles[i].initScreenCol = bubbles[i].screenCol;	
		bubbles[i].height = 8;
		bubbles[i].width = 8;
		bubbles[i].rdel = 3;
        bubbles[i].cdel = 3;
		bubbles[i].active = 0;
		bubbles[i].hide = 1;
		bubbles[i].hoff = 0;
	}
}

void updateBubble(ANISPRITE * b) {
	

	if (b->active && b->direction == 1 
				&& b->worldCol + b->cdel <= WORLDWIDTH-1   //((b->worldCol < 512 -10 && screenBlock <31) || ( b->worldCol > 512 && b->worldCol < WORLDWIDTH && b-> worldCol - b->hoff > 0))
				&& b->worldCol + b->cdel > 0 - b->width 
				/*&& ((b->worldCol  >= 0 - b->width && screenBlock <31)|| ( b->worldCol > 512 && b->worldCol < WORLDWIDTH + b->width))*/ ) {//move bullet until it is off left side of screen
			
			b->worldCol -= b->cdel;

		} else 


	if (b->active && b->direction == 2 
				&& b->worldCol + b->cdel <= WORLDWIDTH + b-> width //move bullet until it is off right side of screen
				&& b->worldCol + b->cdel > 0 - b->width 
				/*&& ((b->worldCol < 512 - b->width && screenBlock <31) || ( b->worldCol > 512 && b->worldCol < WORLDWIDTH && b-> worldCol - b->hoff > 0))*/) {
			
			b->worldCol += b->cdel;

		} else 


	if (b->active && b->direction == 3 
				&& b->worldRow + b->rdel <= SCREENHEIGHT-1 
				&& b->worldRow + b->rdel > 0 - b->height ) { //move bullet until it is off top side of screen
			
			b->worldRow -= b->rdel;

		} else 


	if (b->active && b->direction == 4 
				&& b->worldRow + b->rdel <= SCREENHEIGHT + b->height //move bullet until it is off bottom side of screen
				&& b->worldRow + b->rdel > 0 - b->height ) { 
			
			b->worldRow += b->rdel;

		} else {
			b->hide = 1;
			b->active = 0;
						
		}




	b->screenRow = b->worldRow - vOff;
	b->screenCol = b->worldCol - b->hoff;

	if (b->active && (b->screenCol < 0 || b->screenCol > 256) && screenBlock < 30) { //sB<30 bc I had a bug where I couldn't shoot bubles past 512px
		b->hide = 1;
		b->active = 0;
			
	}



	if (b->active && (b->worldCol < 1024-256 || b->worldCol > WORLDWIDTH) && screenBlock == 31) { //sB<30 bc I had a bug where I couldn't shoot bubles past 512px
		b->hide = 1;
		b->active = 0;
			
	}



}


void throwLeft() {


	for (int i = 0; i < BUBBLECOUNT; i++) {
		
		if (!bubbles[i].active) {

			// Take the bubble out of the pool
			bubbles[i].hide = 0;
			bubbles[i].active = 1;
			

			//set the bubble direction
			bubbles[i].direction = 1;

			bubbles[i].worldRow = steven.worldRow + (steven.height/2) - 4; //makes position look more realistic in spawning
			bubbles[i].worldCol = steven.worldCol; //makes position look more realistic in spawning
			



			// Break out of the loop
			break;
			}

		}

}

void throwRight() {


	for (int i = 0; i < BUBBLECOUNT; i++) {
		
		if (!bubbles[i].active) {
			//set the bubble direction
			bubbles[i].direction = 2;

			bubbles[i].worldRow = steven.worldRow + (steven.height/2) - 4; //makes position look more realistic in spawning
			bubbles[i].worldCol = steven.worldCol + steven.width; //makes position look more realistic in spawning
			
			// Take the bubble out of the pool
			bubbles[i].hide = 0;
			bubbles[i].active = 1;
			


			// Break out of the loop
			break;
			}

		}
 }


void throwUp() {

	for (int i = 0; i < BUBBLECOUNT; i++) {
		
		if (!bubbles[i].active) {
			//set the bubble direction
			bubbles[i].direction = 3;

			bubbles[i].worldRow = steven.worldRow + 3; //makes position look more realistic in spawning
			bubbles[i].worldCol = steven.worldCol + (steven.width/2); //makes position look more realistic in spawning
			
			// Take the bubble out of the pool
			bubbles[i].hide = 0;
			bubbles[i].active = 1;
			


			// Break out of the loop
			break;
			}

		}

}


void throwDown() {


	for (int i = 0; i < BUBBLECOUNT; i++) {
		
		if (!bubbles[i].active) {
			//set the bubble direction
			bubbles[i].direction = 4;

			bubbles[i].worldRow = steven.worldRow + 11; //makes position look more realistic in spawning
			bubbles[i].worldCol = steven.worldCol + 4; //makes position look more realistic in spawning
			
			// Take the bubble out of the pool
			bubbles[i].hide = 0;
			bubbles[i].active = 1;
			


			// Break out of the loop
			break;
			}

		}

}


void throwBubble() {

	for (int i = 0; i < BUBBLECOUNT; i++) {
		if (!bubbles[i].active) {

			// Take the bubble out of the pool
			bubbles[i].active = 1;
			bubbles[i].hide = 0;
			// Break out of the loop
			break;
		}

	}

}


void drawBubble() {

    for (int i = 0; i < BUBBLECOUNT; i++) {

	    if (bubbles[i].hide) { 
	        shadowOAM[20 + i].attr0 |= ATTR0_HIDE;
	    } else {
	        shadowOAM[20 + i].attr0 = (ROWMASK & bubbles[i].screenRow) | ATTR0_SQUARE;
	        shadowOAM[20 + i].attr1 = (COLMASK & bubbles[i].screenCol) | ATTR1_TINY;
	        shadowOAM[20 + i].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(bubbles[i].tileCol,bubbles[i].tileRow);
	    }


    }


}

//----------------LIVES GAME LOGIC--------------------------------------------------------------------------------
void initLives() {
	livesLeft = LIVES;
	for (int i = 0; i < 3; i++) {
		lives[i].hoff = 0;
	    lives[i].height = 16;
	    lives[i].width = 16;
	    lives[i].active = 1;
	    lives[i].screenRow = 4;
	    lives[i].screenCol = 180 + (20 * i);
	    lives[i].tileRow = 8;
	    lives[i].tileCol = 9;
	    lives[i].hide = 0;
	}
}

void updateLives() {
	
    if (livesLeft == 2) {
        lives[2].hide = 1;
   
    }

    if (livesLeft == 1) {
        lives[1].hide = 1;
    }

    if (livesLeft == 0) {
        lives[0].hide = 1;
        goToLoseState();
        vOff = 0;
    }

}


void drawLives() {

    for (int i = 0; i < LIVES; i++) {

	    if (lives[i].hide) {
	        shadowOAM[1 + i].attr0 |= ATTR0_HIDE;
	    } else {
	        shadowOAM[1 + i].attr0 = (ROWMASK & lives[i].screenRow) | ATTR0_SQUARE;
	        shadowOAM[1 + i].attr1 = (COLMASK & lives[i].screenCol) | ATTR1_SMALL;
	        shadowOAM[1 + i].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(lives[i].tileCol,lives[i].tileRow);
	    }


    }

}



//----------------STEVEN GAME LOGIC-----------------------------------------------------------------------

void initSteven() {

	steven.worldRow = 60; //center
	steven.worldCol = 0; //left
    steven.screenRow = steven.worldRow - vOff;
    steven.screenCol = steven.worldCol - steven.hoff;
	steven.height = 16;
	steven.width = 16;
	steven.rdel = 1;
	steven.cdel = 1;
	steven.aniState = SPRITERIGHT;
	steven.curFrame = 0;
	steven.active = 1;
	steven.hide = 0;
	steven.aniCounter = 0;
	steven.numFrames = 3;
}

////////////////////////////////PLAYER MOVEMENT//////////////////////////////////////////

void animateSteven() {



	if (steven.aniState != SPRITEIDLE) {
        steven.prevAniState = steven.aniState;
        steven.aniState = SPRITEIDLE;
    }

    // Change the animation frame every 5 frames of gameplay
	if(steven.aniCounter % 2 == 0) {


		steven.curFrame++;
		if (steven.curFrame >= steven.numFrames) {
            steven.curFrame = 0;
		}
	}



	if(BUTTON_HELD(BUTTON_UP) && steven.worldRow > 0) {

		//steven.screenRow -= steven.rdel;
			
		steven.aniState = SPRITEBACK;
		


		if(steven.worldRow > 0  && colmapBitmap[OFFSET(steven.worldRow - 1, steven.worldCol, 1024)] 
			&& colmapBitmap[OFFSET(steven.worldRow - 1, steven.worldCol + steven.width - 1, 1024)]) {
			steven.worldRow -= steven.rdel;
		}



	}

	if(BUTTON_HELD(BUTTON_DOWN)) {
		
		// steven.screenRow += steven.rdel;
			
		steven.aniState = SPRITEFRONT;


		if(steven.worldRow + steven.height < 160   &&
                colmapBitmap[OFFSET(steven.worldRow + steven.height, steven.worldCol, WORLDWIDTH)] &&
                colmapBitmap[OFFSET(steven.worldRow + steven.height, steven.worldCol + steven.width - 1, WORLDWIDTH)]){

			steven.worldRow += steven.rdel;	
		
		}
	}

	if(BUTTON_HELD(BUTTON_LEFT)) {
		
		steven.direction = 1;	
		steven.aniState = SPRITELEFT;

		if(steven.screenCol > 0  && colmapBitmap[OFFSET(steven.worldRow, steven.worldCol - 1, WORLDWIDTH)]
                && colmapBitmap[OFFSET(steven.worldRow + steven.height - 1, steven.worldCol - 1, WORLDWIDTH)]) {


			steven.worldCol -= steven.cdel;	
		}




		//what I had prior: (steven.hoff > 0 && steven.hoff < 1024 && steven.screenCol > (SCREENWIDTH / 3) - bugged out towards begging of screen tho
		//trial 1 - worked for first 1/4th of screen: steven.hoff > 0 && steven.hoff < 1024 && steven.screenCol > (SCREENWIDTH / 3) && steven.hoff < 240

		if ((steven.hoff > 0 && steven.hoff < 1024 && steven.screenCol > (SCREENWIDTH / 3) /*|| (screenBlock >= 29 && steven.screenCol < 100 )*/)) {
            hOff--;
            steven.hoff--;

			for (int i = 0; i < NUMSTARS; i++) {
			 	
				stars[i]->hoff--;
				
			}


			for (int i = 0; i < LIVES; i++) {
			 	
				bonuses[i]->hoff--;
				
			}

			for (int i = 0; i < NUMOPS; i++) {
			 	
				enemies[i]->hoff--;
				
			}


			for (int i = 0; i < BUBBLECOUNT; i++) {
			 	
				bubbles[i].hoff--;
				
			}
			
			for (int i = 0; i < LIVES; i++) {
			 	
				lives[i].hoff--;
				
			}


        }
	
	}




	if(BUTTON_HELD(BUTTON_RIGHT)) {
		
		steven.direction = 0;			
		steven.aniState = SPRITERIGHT;

		if( steven.worldCol + steven.width < WORLDWIDTH - 1 
			&& colmapBitmap[OFFSET(steven.worldRow, steven.worldCol + steven.width, 1024)] 
			&& colmapBitmap[OFFSET(steven.worldRow + steven.height - 1, steven.worldCol + steven.width, 1024)]) {
			

			steven.worldCol += steven.cdel;
		}

		// hacky, but ensures if at final part of map, meaning we've reached the 31st screenblock, then don't move hOff
		// also gets extra last pixels on the right
		//((screenBlock == 31 && steven.worldCol >= WORLDWIDTH -240)hOff < 17 && steven.screenCol > 100)  || (screenBlock < 31 && hOff < (WORLDWIDTH - SCREENWIDTH -1) && steven.screenCol > SCREENWIDTH / 3 )
        if ((screenBlock == 31 && hOff < 17) || (screenBlock < 31 && hOff < (WORLDWIDTH - SCREENWIDTH ) && steven.screenCol > (SCREENWIDTH / 3) /*&& steven.worldCol <= 960*/)){//} && player.screenCol > SCREENWIDTH / 3) {
            hOff++;
            steven.hoff++;

			for (int i = 0; i < NUMSTARS; i++) {
			 	
				stars[i]->hoff++;
				
			}


			for (int i = 0; i < NUMOPS; i++) {
			 	
				enemies[i]->hoff++;
				
			}

			for (int i = 0; i < LIVES; i++) {
			 	
				bonuses[i]->hoff++;
				
			}


			for (int i = 0; i < BUBBLECOUNT; i++) {
			 	
				bubbles[i].hoff++;
				
			}

			for (int i = 0; i < LIVES; i++) {
			 	
				lives[i].hoff++;
				
			}
        
         } 

	
	}





	if (steven.aniState == SPRITEIDLE) {
        steven.curFrame = 0;
        steven.aniState = steven.prevAniState;
    } else {
        steven.aniCounter++;
    }

}



void updateSteven() {


	if (BUTTON_PRESSED(BUTTON_A) && steven.aniState == SPRITELEFT) {
		playSoundB(bubbleSound, BUBBLESOUNDLEN-200, 0);
		throwLeft();

		}


	if (BUTTON_PRESSED(BUTTON_A) && steven.aniState == SPRITERIGHT) {
		playSoundB(bubbleSound, BUBBLESOUNDLEN-200, 0);
		throwRight();
		
		}



	if (BUTTON_PRESSED(BUTTON_A) && steven.aniState == SPRITEBACK) {
		playSoundB(bubbleSound, BUBBLESOUNDLEN-200, 0);
		throwUp();
		
		}


	if (BUTTON_PRESSED(BUTTON_A) && steven.aniState == SPRITEFRONT) {
		playSoundB(bubbleSound, BUBBLESOUNDLEN-200, 0);
		throwDown();
		
		}



	
	//handles normal colls with steven and objects
	enemyCollisions();
	starCollisions();

	steven.screenRow = steven.worldRow;// - vOff;
    steven.screenCol = steven.worldCol - steven.hoff;


}


void drawSteven() {
    
    shadowOAM[0].attr0 = (ROWMASK & steven.screenRow) | ATTR0_SQUARE;
    shadowOAM[0].attr1 = (COLMASK & steven.screenCol) | ATTR1_SMALL;

    if (BUTTON_HELD(BUTTON_A)) {
                
        shadowOAM[0].attr2 = ATTR2_TILEID(6, steven.aniState*2);            
    } else {
 
        shadowOAM[0].attr2 = ATTR2_TILEID(steven.curFrame * 2, steven.aniState*2);                
    } 

}


//==========================ENEMY GAME LOGIC========================================


void initEnemies() {


	yDiamond.worldRow = 67;
	yDiamond.worldCol = 177;
	yDiamond.initWorldRow = 67;
	yDiamond.initWorldCol = 177;
	yDiamond.active = 1;
	yDiamond.hide = 0;


	bDiamond.worldRow = 62;
	bDiamond.worldCol = 308 - 40;
	bDiamond.initWorldRow = 62;
	bDiamond.initWorldCol =308-40; 
	bDiamond.active = 1;
	bDiamond.hide = 0;


	wDiamond.worldRow = 45;
	wDiamond.worldCol = 353;
	wDiamond.initWorldRow = 45;
	wDiamond.initWorldCol = 353;
	wDiamond.active = 1;
	wDiamond.hide = 0;

//{&yDiamond, &bDiamond, &wDiamond, &spinel, &jasper, &aquamarine, &topaz, &eyeball};

	//20,440
	spinel.worldRow = 17;
	spinel.worldCol = 440;
	spinel.initWorldRow = 15;
	spinel.initWorldCol = 440;


	//120,490
	jasper.worldRow = 105;
	jasper.worldCol = 490;
	jasper.initWorldRow = 105;
	jasper.initWorldCol = 490;


	//40, 665
	aquamarine.worldRow = 40;
	aquamarine.worldCol = 645;
	aquamarine.initWorldRow = 40;
	aquamarine.initWorldCol = 645;

	//35, 705
	topaz.worldRow = 28;
	topaz.worldCol = 703;
	topaz.initWorldRow = 28;
	topaz.initWorldCol = 703;

	//70,800
	eyeball.worldRow = 66;
	eyeball.worldCol = 800;
	eyeball.initWorldRow = 66;
	eyeball.initWorldCol = 800;
	eyeball.initScreenRow = eyeball.initWorldRow - eyeball.hoff;
	eyeball.initScreenCol = eyeball.initWorldCol - eyeball.hoff;



	

	for (int i = 0; i < NUMOPS; i++) {

		enemies[i]->active = 1;
		enemies[i]->hide = 0;
		enemies[i]->hoff = 0;
		enemies[i]->screenRow = enemies[i]->worldRow - vOff;
		enemies[i]->screenCol = enemies[i]->worldCol - enemies[i]->hoff;
		enemies[i]->width = 16;
		enemies[i]->height = 16;
		enemies[i]->tileRow = 20;
		enemies[i]->tileCol = i * 2;
		enemies[i]->rdel = 2;
		enemies[i]->cdel = 2;
		enemies[i]->bubbled = 0; 
	 	
	}





}



void updateEnemies() {

//{&yDiamond, &bDiamond, &wDiamond, &spinel, &jasper, &aquamarine, &topaz, &eyeball};


//hover E1 DN (30 pc), move init position to top right either 20 or 25 units
	hoverDN(&yDiamond, yDiamond.initWorldRow, 35);



//hove E2 Horz (40) , move init pos to (40)px left
	hoverH(&bDiamond, bDiamond.initWorldCol, 40);


//hover E3 vert (25 or 30), move init pos 5 px up, 2 px left
	hoverV(&wDiamond, wDiamond.initWorldRow, 35);

//hover E4 horz 30px
	hoverH(&spinel, spinel.initWorldCol, 50);

//Hover E5 horz, 30 px
	hoverH(&jasper, jasper.initWorldCol, 50);

//hover E6 DN 55px??
	hoverDN(&aquamarine, aquamarine.initWorldRow, 55);


//hover E7 in a rect, 60 width, 45 height
	moveRect(&topaz, topaz.initWorldRow, topaz.initWorldCol, 80, 80);

//hover E8 horz, 120 px?
	hoverH(&eyeball, eyeball.initWorldCol, 160);






	//===========================================================

	//handles bubble collision
	for (int i = 0; i < NUMOPS; i++) {
	 	bubbling(enemies[i]);
	 	enemies[i]->screenRow = enemies[i]->worldRow - vOff;
		enemies[i]->screenCol = enemies[i]->worldCol - enemies[i]->hoff;

	}

}


void drawEnemies() {

	for (int i = 0; i < NUMOPS; i++) { //TODO: change 3 to NUMOPS
		if (enemies[i]->hide || enemies[i]->screenCol < 0 || enemies[i]->screenCol > 240) {
	        shadowOAM[12+i].attr0 |= ATTR0_HIDE;
	    } else {

	    	if (enemies[i]->bubbled == 0 && enemies[i]->screenRow >= 0 &&  enemies[i]->screenRow <= 160) { //trying to debug it being redrawn
		        shadowOAM[12+i].attr0 = (ROWMASK & enemies[i]->screenRow) | ATTR0_SQUARE;
		        shadowOAM[12+i].attr1 = (COLMASK & enemies[i]->screenCol) | ATTR1_SMALL;
		        shadowOAM[12+i].attr2 = ATTR2_TILEID(enemies[i]->tileCol, enemies[i]->tileRow);
	  		}  else {

	  			if (enemies[i]->bubbled == 1) {
			        shadowOAM[12+i].attr0 = (ROWMASK & enemies[i]->screenRow) | ATTR0_SQUARE;
			        shadowOAM[12+i].attr1 = (COLMASK & enemies[i]->screenCol) | ATTR1_SMALL;
			        shadowOAM[12+i].attr2 = ATTR2_TILEID(enemies[i]->tileCol, enemies[i]->tileRow+2 );

	  			}

	  		}

	    }

	 }

}


//================STARS GAME LOGIC=========================================================================

void initStars() {

//ANISPRITE *stars[NUMSTARS] = {&earth, &zoo, &jungleBase, &garden, &island, &kindergarten, &arena, &desert}

	earth.worldRow = 20;
	earth.worldCol = 1000;
	earth.initWorldRow = 20;
	earth.cheatR = 9;
	earth.cheatC = 3;

	
	zoo.initWorldRow = 70;
	zoo.initWorldCol = 125 -10;
	zoo.worldRow = 70;
	zoo.worldCol = 125 -10;
	zoo.cheatR = 10;
	zoo.cheatC = 4;


	jungleBase.initWorldRow = 65;
	jungleBase.initWorldCol = 420 -5;
	jungleBase.worldRow = 65;
	jungleBase.worldCol = 420 -5;
	jungleBase.cheatR = 10;
	jungleBase.cheatC = 2;


	garden.initWorldRow = 70-12;
	garden.initWorldCol = 550-10;
	garden.worldRow = 70-12;
	garden.worldCol = 550-10;
	garden.cheatR = 10;
	garden.cheatC = 3;


	island.initWorldRow = 60 + 10;
	island.initWorldCol = 623 - 10; 
	island.worldRow = 60 + 10;
	island.worldCol = 623 - 10; 
	island.cheatR = 8;
	island.cheatC = 4;


	kindergarten.initWorldRow = 95;
	kindergarten.initWorldCol = 860 -20;
	kindergarten.worldRow = 95;
	kindergarten.worldCol = 860 -10;
	kindergarten.cheatR = 9;
	kindergarten.cheatC = 4;


	arena.initWorldRow = 38;
	arena.initWorldCol = 940;
	arena.worldRow = 38;
	arena.worldCol = 940;
	arena.cheatR = 9;
	arena.cheatC = 5;


	desert.worldRow = 115;
	desert.initWorldRow = 115;
	desert.worldCol = 1000;
	desert.cheatR = 10;
	desert.cheatC = 5;











//TODO:do this for activeness and resetting screenR and screenC in future

	for (int i = 0; i < NUMSTARS; i++) {
		stars[i]->active = 1;
		stars[i]->hide = 0;
		stars[i]->hoff = 0;
		stars[i]->screenRow = stars[i]->worldRow - vOff;
		stars[i]->screenCol = stars[i]->worldCol - stars[i]->hoff;
		stars[i]->width = 8;
		stars[i]->height = 8;
		stars[i]->tileRow = 8;
		stars[i]->tileCol = 2;
		stars[i]->rdel = 1;
		stars[i]->cdel = 1;
		stars[i]->bubbled = 0;
	}



}
void updateStars() {



//hover s1 and s7 10, change init row to be 5 less
	hoverH(&zoo, zoo.initWorldCol,10);
	hoverH(&jungleBase, jungleBase.initWorldCol, 20);
	hoverV(&garden, garden.initWorldRow, 20);
	hoverH(&island, island.initWorldCol, 20);
	hoverH(&kindergarten, kindergarten.initWorldCol, 25);
	hoverH(&arena, arena.initWorldCol, 40);
	hoverV(&earth, earth.initWorldRow, 10);
	hoverV(&desert, desert.initWorldRow, 10);





	//handles bubble collision
	for (int i = 0; i < NUMSTARS; i++) {
	 	bubbling(stars[i]);
		stars[i]->screenRow = stars[i]->worldRow - vOff;
		stars[i]->screenCol = stars[i]->worldCol - stars[i]->hoff;
	}



}



void drawStars() {

	for (int i = 0; i < NUMSTARS; i++) { //TODO: change back to NUMSTARS later
		if (stars[i]->hide || stars[i]->screenCol < 0 || stars[i]->screenCol > 240) {
	        shadowOAM[4+i].attr0 |= ATTR0_HIDE;
	    } else {

	    	if (BUTTON_HELD(BUTTON_B)) {
		        shadowOAM[4+i].attr0 = (ROWMASK & stars[i]->screenRow) | ATTR0_SQUARE;
		        shadowOAM[4+i].attr1 = (COLMASK & stars[i]->screenCol) | ATTR1_TINY;
		        shadowOAM[4+i].attr2 = ATTR2_TILEID(stars[i]->cheatC, stars[i]->cheatR);


	    	} else



	    	if (stars[i]->bubbled == 0) {
		        shadowOAM[4+i].attr0 = stars[i]->screenRow | ATTR0_SQUARE;
		        shadowOAM[4+i].attr1 = stars[i]->screenCol | ATTR1_TINY;
		        shadowOAM[4+i].attr2 = ATTR2_TILEID(stars[i]->tileCol, stars[i]->tileRow);
	  		

	  		}  else 

	  			if (stars[i]->bubbled == 1) {
			        shadowOAM[4+i].attr0 = stars[i]->screenRow | ATTR0_SQUARE;
			        shadowOAM[4+i].attr1 = stars[i]->screenCol | ATTR1_TINY;
			        shadowOAM[4+i].attr2 = ATTR2_TILEID(stars[i]->tileCol, stars[i]->tileRow+1 );

	  			}

	    }





	}

}

//================OBJECT MOVEMENT GAME LOGIC=========================================================================

//TODO figure out how to make it bounce back when bubbled
void moveRect( ANISPRITE * a, int initRow, int initCol, int width, int height) {

	if (a->worldRow == initRow && a->worldCol >= initCol && a->worldCol < initCol + width ) {
		a->worldCol += a->cdel;
	} else

	if (a->worldCol == initCol + width  && a->worldRow >= initRow && a->worldRow < initRow + height) {
		a->worldRow += a->rdel;
	} else

	if ( a->worldRow == initRow + height && a->worldCol <= initCol + width && a->worldCol  > initCol) {
		a->worldCol -= a->cdel;
	} else 

	if (a->worldCol == initCol && a->worldRow <= initRow + height && a->worldRow > initRow) {
		a->worldRow -= a->rdel;
	}



}



void hoverH(ANISPRITE * a, int initCol, int length) {
	
	if (a -> worldCol >= initCol && a->worldCol < initCol + length) {
		a->worldCol += a->cdel;
	}

	//makes object bounce back in opposite direction (also for if it is bubbled and hits steven)
	if (a -> worldCol >= initCol + length || a -> worldCol <= initCol || (a->bubbled == 1 
		&& collision(steven.worldRow, steven.worldCol, steven.height, steven.width, a->worldRow, a->worldCol, a->height, a->width))) {
		
		a->cdel *= -1;
		a->worldCol += a->cdel;
	}



}

void hoverV(ANISPRITE * a, int initRow, int length) {
	
	if (a -> worldRow >= initRow && a->worldRow < initRow + length) {
		a->worldRow += a->rdel;
	}

	//makes object bounce back in opposite direction (also for if it is bubbled and hits steven)
	if (a -> worldRow >= initRow + length || a -> worldRow <= initRow || (a->bubbled == 1 
		&& collision(steven.worldRow, steven.worldCol, steven.height, steven.width, a->worldRow, a->worldCol, a->height, a->width))) {
		
		a->rdel *= -1;
		a->worldRow += a->rdel;
	}

}


void hoverDP(ANISPRITE * a, int initRow, int length) {

	if (a -> worldRow >= initRow && a->worldRow < initRow + length ) {
		a->worldRow += a->rdel;
		a->worldCol += a->cdel;
	}

	//makes object bounce back in opposite direction (also for if it is bubbled and hits steven)
	if (a -> worldRow >= initRow + length || a -> worldRow <= initRow || (a->bubbled == 1 
		&& collision(steven.worldRow, steven.worldCol, steven.height, steven.width, a->worldRow, a->worldCol, a->height, a->width))) {
		a->rdel *= -1;
		a->cdel *= -1;
		a->worldRow += a->rdel;
		a->worldCol += a->cdel;
	}

}

void hoverDN(ANISPRITE * a, int initRow, int length) {

	if (a -> worldRow >= initRow && a->worldRow < initRow + length) {
		a->worldRow += a->rdel;
		a->worldCol -= a->cdel;
	}

	//makes object bounce back in opposite direction (also for if it is bubbled and hits steven)
	if (a -> worldRow >= initRow + length || a -> worldRow <= initRow || (a->bubbled == 1 
		&& collision(steven.worldRow, steven.worldCol, steven.height, steven.width, a->worldRow, a->worldCol, a->height, a->width))) {
		a->rdel *= -1;
		a->cdel *= -1;
		a->worldRow += a->rdel;
		a->worldCol -= a->cdel;
	}


}


void moveRight(ANISPRITE * a) {
	a->worldCol += a->cdel;
}


void moveDown(ANISPRITE * a) {
	a->worldRow += a->rdel;
}


void moveLeft(ANISPRITE * a) {
	a->worldCol -= a->cdel;
}


void moveUp(ANISPRITE * a) {
	a->worldRow -= a->rdel;
}


//==========================================MORE HELPER FXNS========================================================

void enemyCollisions() {

	for (int i = 0; i < NUMOPS; i++) {
		if (enemies[i]->bubbled == 0 && collision(steven.worldRow, steven.worldCol, steven.height, steven.width, enemies[i]->worldRow, enemies[i]->worldCol, enemies[i]->height, enemies[i]->width)) {
			livesLeft--;

		}

	}

	if (enemies[0]->bubbled == 0 && collision(steven.worldRow, steven.worldCol, steven.height, steven.width, enemies[0]->worldRow, enemies[0]->worldCol, enemies[0]->height, enemies[0]->width)) {
        steven.worldRow = 30;
        steven.worldCol = 95;       
            
    }


    if (enemies[1]->bubbled == 0 && collision(steven.worldRow, steven.worldCol, steven.height, steven.width, enemies[1]->worldRow, enemies[1]->worldCol, enemies[1]->height, enemies[1]->width)) {
        steven.worldRow = 60;
        steven.worldCol = enemies[1]->initWorldCol-50;
     
    }

    if (enemies[2]->bubbled == 0 && collision(steven.worldRow, steven.worldCol, steven.height, steven.width, enemies[2]->worldRow, enemies[2]->worldCol, enemies[2]->height, enemies[2]->width)) {
        steven.worldRow = 40;
        steven.worldCol = 320;


    }


    if (enemies[3]->bubbled == 0 && collision(steven.worldRow, steven.worldCol, steven.height, steven.width, enemies[3]->worldRow, enemies[3]->worldCol, enemies[3]->height, enemies[3]->width)) {
        steven.worldRow = 60;
        steven.worldCol = 440;          

    
    }


    if (enemies[4]->bubbled == 0 && collision(steven.worldRow, steven.worldCol, steven.height, steven.width, enemies[4]->worldRow, enemies[4]->worldCol, enemies[4]->height, enemies[4]->width)) {
        steven.worldRow = 45;
        steven.worldCol = 490;
    
    }


    if (enemies[5]->bubbled == 0 && collision(steven.worldRow, steven.worldCol, steven.height, steven.width, enemies[5]->worldRow, enemies[5]->worldCol, enemies[5]->height, enemies[5]->width)) {
        steven.worldRow = 30;
        steven.worldCol = 620;
     
    }


    if (enemies[6]->bubbled == 0 && collision(steven.worldRow, steven.worldCol, steven.height, steven.width, enemies[6]->worldRow, enemies[6]->worldCol, enemies[6]->height, enemies[6]->width)) {
        steven.worldRow = bonuses[1]->worldRow;
        steven.worldCol = bonuses[1]->worldCol - 45;
     
    }

    if (enemies[7]->bubbled == 0 && collision(steven.worldRow, steven.worldCol, steven.height, steven.width, enemies[7]->worldRow, enemies[7]->worldCol, enemies[7]->height, enemies[7]->width)) {
        steven.worldRow = 95;
        steven.worldCol = 870;
    
    }



}
void starCollisions() {


}


void bubbling(ANISPRITE * a) {
	//bubble collision
	for (int i = 0; i < BUBBLECOUNT; i++) {
		if (bubbles[i].active 
			&& a->bubbled == 0 
			&& collision(a->worldCol, a->worldRow, a->width, a->height,
				bubbles[i].worldCol, bubbles[i].worldRow, bubbles[i].width, bubbles[i].height)) {

			a->bubbled = 1; //makes values switch back and forth so it can be unbubbled too
			bubbles[i].active = 0;
			bubbles[i].hide = 1;

		} else 

		if (bubbles[i].active 
			&& a->bubbled == 1 
			&& collision(a->worldCol, a->worldRow, a->width, a->height,
				bubbles[i].worldCol, bubbles[i].worldRow, bubbles[i].width, bubbles[i].height)) {

			a->bubbled = 0; //makes values switch back and forth so it can be unbubbled too
			bubbles[i].active = 0;
			bubbles[i].hide = 1;

		}

	}

}


























