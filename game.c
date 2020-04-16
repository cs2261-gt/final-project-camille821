#include <stdlib.h>
#include "myLib.h"
#include "game.h"
//#include "text.h"

#include "spritesheet1.h"
#include "sound.h"



//TODO: upscale stars and enemies drawing logic


// Variables
//steven
ANISPRITE steven;
int livesLeft;
int hOff;
int vOff;


//enemies
ANISPRITE yDiamond;
ANISPRITE bDiamond;
ANISPRITE wDiamond;
ANISPRITE spinel;
ANISPRITE jasper;
ANISPRITE aquamarine;

//collection pool of enemies that is represented by a pointer array of enemy address
ANISPRITE *enemies[NUMOPS] = {&yDiamond, &bDiamond, &wDiamond, &spinel, &jasper, &aquamarine};


//Stars
ANISPRITE earth;
ANISPRITE zoo;
ANISPRITE jungleBase;
ANISPRITE garden;

//collection pool of stars that is represented by a pointer array of star addresses
ANISPRITE *stars[NUMSTARS] = {&earth, &zoo, &jungleBase, &garden};

//lives sprites
ANISPRITE lives[LIVES];

//bubbles
ANISPRITE bubbles[BUBBLECOUNT];


OBJ_ATTR shadowOAM[128];

enum { SPRITEFRONT, SPRITELEFT, SPRITERIGHT, SPRITEBACK, SPRITEIDLE}; 

// Initialize the game
void initGame() {
	initSteven();
	initEnemies();
	initStars();
	initLives();
	initBubbles();


    hOff = 0;
    vOff = 352; //512 px - screenheight




}


// Updates the game each frame
void updateGame() {
	animateSteven();
	updateSteven();
	updateEnemies();
	updateStars();
	updateLives();
	

	// Update all the bubbles
	for (int i = 0; i < BUBBLECOUNT; i++)
		updateBubble(&bubbles[i]);


	// if (vOff < 0) {
	// 	vOff = 0;
	// }




}





// Draws the game each frame
void drawGame() {
    
    drawEnemies();
    drawSteven();
    drawStars();
    drawLives();
    

  	// Draw all the bubbles
	for (int i = 0; i < BUBBLECOUNT; i++)
		drawBubble(&bubbles[i]);

	
    waitForVBlank();
    DMANow(3,shadowOAM,OAM,128*4);

    REG_BG0HOFF = hOff;
	REG_BG0VOFF = vOff;
    
    

}


//----------------BUBBLES GAME LOGIC--------------------------------------------------------------------------------

void initBubbles() {
	for (int i = 0; i < BUBBLECOUNT; i++) {
		bubbles[i].tileRow = 8;
		bubbles[i].tileCol = 3;
		bubbles[i].initScreenRow = steven.screenRow + (steven.height/2);
		bubbles[i].initScreenCol = steven.screenCol + (steven.width/2);
		bubbles[i].screenRow = steven.screenRow + (steven.height/2);
		bubbles[i].screenCol = steven.screenCol + (steven.width/2);
		bubbles[i].height = 8;
		bubbles[i].width = 8;
		bubbles[i].rdel = 3;
        bubbles[i].cdel = 3;
		bubbles[i].active = 0;
		bubbles[i].hide = 1;
	}
}

void updateBubble(ANISPRITE * b) {
	

			
	if (b->active && b->direction == 1 
				&& b->screenCol + b->cdel <= SCREENWIDTH-1
				&& b->screenCol + b->cdel > 0 - b->width ) {//move bullet until it is off left side of screen
			
			b->screenCol -= b->cdel;

		} else 


	if (b->active && b->direction == 2 
				&& b->screenCol + b->cdel <= SCREENWIDTH + b-> width //move bullet until it is off right side of screen
				&& b->screenCol + b->cdel > 0 - b->width ) {
			
			b->screenCol += b->cdel;

		} else 


	if (b->active && b->direction == 3 
				&& b->screenRow + b->rdel <= SCREENHEIGHT-1 
				&& b->screenRow + b->rdel > 0 - b->height ) { //move bullet until it is off top side of screen
			
			b->screenRow -= b->rdel;

		} else 


	if (b->active && b->direction == 4 
				&& b->screenRow + b->rdel <= SCREENHEIGHT + b->height //move bullet until it is off bottom side of screen
				&& b->screenRow + b->rdel > 0 - b->height ) { 
			
			b->screenRow += b->rdel;

		} else {
			b->active = 0;
		}

	

}


void throwLeft() {

	for (int i = 0; i < BUBBLECOUNT; i++) {
		
		if (!bubbles[i].active) {
			//set the bubble direction
			bubbles[i].direction = 1;

			bubbles[i].screenRow = steven.screenRow + (steven.height/2) - 4; //makes position look more realistic in spawning
			bubbles[i].screenCol = steven.screenCol; //makes position look more realistic in spawning
			
			// Take the bubble out of the pool
			bubbles[i].active = 1;
			bubbles[i].hide = 0;


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

			bubbles[i].screenRow = steven.screenRow + (steven.height/2) - 4; //makes position look more realistic in spawning
			bubbles[i].screenCol = steven.screenCol + steven.width; //makes position look more realistic in spawning
			
			// Take the bubble out of the pool
			bubbles[i].active = 1;
			bubbles[i].hide = 0;


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

			bubbles[i].screenRow = steven.screenRow + 3; //makes position look more realistic in spawning
			bubbles[i].screenCol = steven.screenCol + (steven.width/2); //makes position look more realistic in spawning
			
			// Take the bubble out of the pool
			bubbles[i].active = 1;
			bubbles[i].hide = 0;


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

			bubbles[i].screenRow = steven.screenRow + 11; //makes position look more realistic in spawning
			bubbles[i].screenCol = steven.screenCol + 4; //makes position look more realistic in spawning
			
			// Take the bubble out of the pool
			bubbles[i].active = 1;
			bubbles[i].hide = 0;


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

			// Break out of the loop
			break;
		}

	}

}


void drawBubble() {

    for (int i = 0; i < BUBBLECOUNT; i++) {

	    if (bubbles[i].hide) {
	        shadowOAM[14 + i].attr0 |= ATTR0_HIDE;
	    } else {
	        shadowOAM[14 + i].attr0 = (ROWMASK & bubbles[i].screenRow) | ATTR0_SQUARE;
	        shadowOAM[14 + i].attr1 = (COLMASK & bubbles[i].screenCol) | ATTR1_TINY;
	        shadowOAM[14 + i].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(bubbles[i].tileCol,bubbles[i].tileRow);
	    }


    }


}

//----------------LIVES GAME LOGIC--------------------------------------------------------------------------------
void initLives() {
	livesLeft = LIVES;
	for (int i = 0; i < 3; i++) {
	    lives[i].height = 16;
	    lives[i].width = 16;
	    lives[i].active = 1;
	    lives[i].screenRow = 4;
	    lives[i].screenCol = 180 + (20 * i);
	    lives[i].tileRow = 8;
	    lives[i].tileCol = 4;
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

	steven.worldRow = 512 - 30; //puts at bottom of screen
	steven.worldCol = SCREENWIDTH/2 -10; //middle of screen
    steven.screenRow = steven.worldRow - vOff;
    steven.screenCol = steven.worldCol - hOff;
	steven.height = 16;
	steven.width = 16;
	steven.rdel = 1;
	steven.cdel = 1;
	steven.aniState = SPRITEBACK;
	steven.curFrame = 0;
	steven.active = 1;
	steven.hide = 0;
	steven.aniCounter = 0;
	steven.numFrames = 3;
}



void animateSteven() {


	if (steven.aniState != SPRITEIDLE) {
        steven.prevAniState = steven.aniState;
        steven.aniState = SPRITEIDLE;
    }

    // Change the animation frame every 5 frames of gameplay
	if(steven.aniCounter % 5 == 0) {


		steven.curFrame++;
		if (steven.curFrame >= steven.numFrames) {
            steven.curFrame = 0;
		}
	}



	if(BUTTON_HELD(BUTTON_UP) && steven.worldRow >= 10) {

		//steven.screenRow -= steven.rdel;
		steven.worldRow -= steven.rdel;	
		steven.aniState = SPRITEBACK;
		
		if (vOff > 0) { //prevents screen from looping
			vOff--;
		}



	}
	if(BUTTON_HELD(BUTTON_DOWN)) {
		// steven.screenRow += steven.rdel;
		steven.worldRow += steven.rdel;		
		steven.aniState = SPRITEFRONT;

		if (vOff < 512) { //prevents screen from looping
			vOff++;
		}
		

	}
	if(BUTTON_HELD(BUTTON_LEFT)) {
		
		steven.worldCol -= steven.cdel;			
		steven.aniState = SPRITELEFT;
	
	}
	if(BUTTON_HELD(BUTTON_RIGHT)) {
		
		steven.worldCol += steven.cdel;			
		steven.aniState = SPRITERIGHT;
	
	}

	if (steven.aniState == SPRITEIDLE) {
        steven.curFrame = 0;
        steven.aniState = steven.prevAniState;
    } else {
        steven.aniCounter++;
    }

}



void updateSteven() {

	//handles normal colls with steven and objects
	enemyCollisions();
	starCollisions();

	if (BUTTON_PRESSED(BUTTON_A)) {
		
	
			if (steven.aniState == SPRITELEFT) {
				throwLeft();
			
			} else
			
			if (steven.aniState == SPRITERIGHT) {
				throwRight();
			} else
			
			if (steven.aniState == SPRITEBACK) {
				throwUp();
			} else
			
			if (steven.aniState == SPRITEFRONT) {
				throwDown();
			}

		}


	steven.screenRow = steven.worldRow - vOff;
    steven.screenCol = steven.worldCol - hOff;


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


	yDiamond.worldRow = 340;
	yDiamond.worldCol = 150;
	yDiamond.initWorldRow = 340;
	yDiamond.initWorldCol = 150;
	yDiamond.active = 1;
	yDiamond.hide = 0;


	bDiamond.worldRow = 150;
	bDiamond.worldCol = 110;
	bDiamond.initWorldRow = 150;
	bDiamond.initWorldCol = 118;
	bDiamond.active = 1;
	bDiamond.hide = 0;


	wDiamond.worldRow = 45;
	wDiamond.worldCol = 90;
	wDiamond.initWorldRow = 50;
	wDiamond.initWorldCol = 90;
	wDiamond.active = 1;
	wDiamond.hide = 0;


	

	for (int i = 0; i < NUMOPS; i++) {

		// enemies[i]->active = 1;
		// enemies[i]->hide = 0;
		// enemies[i]->initScreenRow = 10;
		// enemies[i]->initScreenCol = 10 + (30*i);
		// enemies[i]->screenRow = 10;
		// enemies[i]->screenCol = 10 + (30*i);

		enemies[i]->width = 16;
		enemies[i]->height = 16;
		enemies[i]->tileRow = 8;
		enemies[i]->tileCol = 0;
		enemies[i]->rdel = 2;
		enemies[i]->cdel = 2;
		enemies[i]->bubbled = 0;
	 	
	}





}



void updateEnemies() {





	//hovering yellow diamond movement
	hoverDN(&yDiamond, yDiamond.initWorldRow, 20);


	//hovering blue diamoond movement
	hoverV(&bDiamond, bDiamond.initWorldRow, 60);


	//hovering white diamond movement
	hoverH(&wDiamond, wDiamond.initWorldCol, 40);


	//===========================================================

	//handles bubble collision
	for (int i = 0; i < NUMOPS; i++) {
	 	bubbling(enemies[i]);
	}


	yDiamond.screenRow = yDiamond.worldRow - vOff;
	yDiamond.screenCol = yDiamond.worldCol - hOff;


	bDiamond.screenRow = bDiamond.worldRow - vOff;
	bDiamond.screenCol = bDiamond.worldCol - hOff;

	wDiamond.screenRow = wDiamond.worldRow - vOff;
	wDiamond.screenCol = wDiamond.worldCol - hOff;

}


void drawEnemies() {

	for (int i = 0; i < 3; i++) { //TODO: change 3 to NUMOPS
		if (enemies[i]->hide || enemies[i]->screenRow < 0 || enemies[i]->screenRow > 160) {
	        shadowOAM[8+i].attr0 |= ATTR0_HIDE;
	    } else {

	    	if (enemies[i]->bubbled == 0 && enemies[i]->screenRow >= 0 &&  enemies[i]->screenRow <= 160) { //trying to debug it being redrawn
		        shadowOAM[8+i].attr0 = (ROWMASK & enemies[i]->screenRow) | ATTR0_SQUARE;
		        shadowOAM[8+i].attr1 = (COLMASK & enemies[i]->screenCol) | ATTR1_SMALL;
		        shadowOAM[8+i].attr2 = ATTR2_TILEID(enemies[i]->tileCol, enemies[i]->tileRow);
	  		}  else {

	  			if (enemies[i]->bubbled == 1) {
			        shadowOAM[8+i].attr0 = (ROWMASK & enemies[i]->screenRow) | ATTR0_SQUARE;
			        shadowOAM[8+i].attr1 = (COLMASK & enemies[i]->screenCol) | ATTR1_SMALL;
			        shadowOAM[8+i].attr2 = ATTR2_TILEID(enemies[i]->tileCol, enemies[i]->tileRow+2 );

	  			}

	  		}

	    }

	 }

}


//================STARS GAME LOGIC=========================================================================

void initStars() {

//110//20

	earth.worldRow = 20;
	earth.worldCol = 115;
	earth.screenRow = earth.worldRow - vOff;
	earth.screenCol = earth.worldCol - hOff;
	earth.active = 1;
	earth.hide = 0;


	for (int i = 0; i < NUMSTARS; i++) {
		// stars[i]->active = 1;
		// stars[i]->hide = 0;
		// stars[i]->initScreenRow = 40;
		// stars[i]->initScreenCol = 40 + (30*i);
		// stars[i]->screenRow = 40;
		// stars[i]->screenCol = 40 + (30*i);
		stars[i]->width = 8;
		stars[i]->height = 8;
		stars[i]->tileRow = 8;
		stars[i]->tileCol = 2;
		stars[i]->rdel = 1;
		stars[i]->cdel = 1;
		stars[i]->bubbled = 0;
		stars[i]->cheatR = 9;
		stars[i]->cheatC = 3;
	}



}
void updateStars() {

	//handles bubble collision
	for (int i = 0; i < NUMSTARS; i++) {
	 	bubbling(stars[i]);
	}

	earth.screenRow = earth.worldRow - vOff;
	earth.screenCol = earth.worldCol - hOff;

}



void drawStars() {

	for (int i = 0; i < 1; i++) { //TODO: change back to NUMSTARS later
		if (stars[i]->hide || stars[i]->screenRow < 0 || stars[i]->screenRow > 160) {
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
		if (enemies[i]->bubbled == 0 && collision(steven.screenRow, steven.screenCol, steven.height, steven.width, enemies[i]->screenRow, enemies[i]->screenCol, enemies[i]->height, enemies[i]->width)) {
			livesLeft--;
	
			if (steven.aniState == SPRITELEFT) {
				steven.worldCol += 10;
			
			} else
			
			if (steven.aniState == SPRITERIGHT) {
				steven.worldCol -= 10;
			} else
			
			if (steven.aniState == SPRITEBACK) {
				steven.worldRow += 10;
			} else
			
			if (steven.aniState == SPRITEFRONT) {
				steven.worldRow -= 10;
			}
		}

	}

}
void starCollisions() {

	for (int i = 1 ; i < NUMSTARS; i++) {

		if (stars[i]->bubbled == 0 && collision(steven.screenRow, steven.screenCol, steven.height, steven.width, stars[i]->screenRow, stars[i]->screenCol, stars[i]->height, stars[i]->width)) {
			
			//vOff = 0;
			goToPause();
			



			if (steven.aniState == SPRITELEFT) {
				steven.screenCol += 10;
			
			} else
			
			if (steven.aniState == SPRITERIGHT) {
				steven.screenCol -= 10;
			} else
			
			if (steven.aniState == SPRITEBACK) {
				steven.screenRow += 10;
			} else
			
			if (steven.aniState == SPRITEFRONT) {
				steven.screenRow -= 10;
			}
		}

	}


	if (stars[0]->bubbled == 0 && collision(steven.worldRow, steven.worldCol, steven.height, steven.width, stars[0]->worldRow, stars[0]->worldCol, stars[0]->height, stars[0]->width)) {
		goToWinState();
		//goToJdbState();
		//goToMIState();
		//goToZooState();
		//goToGardenState();

			if (steven.aniState == SPRITELEFT) {
				steven.worldCol += 10;
			
			} else
			
			if (steven.aniState == SPRITERIGHT) {
				steven.worldCol -= 10;
			} else
			
			if (steven.aniState == SPRITEBACK) {
				steven.worldRow += 10;
			} else
			
			if (steven.aniState == SPRITEFRONT) {
				steven.worldRow -= 10;
			}
		

	}

}


void bubbling(ANISPRITE * a) {
	//bubble collision
	for (int i = 0; i < BUBBLECOUNT; i++) {
		if (bubbles[i].active 
			&& a->bubbled == 0 
			&& collision(a->screenCol, a->screenRow, a->width, a->height,
				bubbles[i].screenCol, bubbles[i].screenRow, bubbles[i].width, bubbles[i].height)) {

			a->bubbled = 1; //makes values switch back and forth so it can be unbubbled too
			bubbles[i].active = 0;
			bubbles[i].hide = 1;

		} else 

		if (bubbles[i].active 
			&& a->bubbled == 1 
			&& collision(a->screenCol, a->screenRow, a->width, a->height,
				bubbles[i].screenCol, bubbles[i].screenRow, bubbles[i].width, bubbles[i].height)) {

			a->bubbled = 0; //makes values switch back and forth so it can be unbubbled too
			bubbles[i].active = 0;
			bubbles[i].hide = 1;

		}

	}

}


























