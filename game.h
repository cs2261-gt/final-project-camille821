




// Constants
#define LIVES 3
#define BUBBLECOUNT 10
// #define NUMOPS 6
// #define NUMSTARS 5
#define NUMOPS 8
#define NUMSTARS 8
#define WORLDWIDTH 1024


// Variables
extern ANISPRITE steven;



extern int lose;

// Custom Game Colors
#define NUMCOLORS 6
// This does an enum trick to make them the last indeces of the palette
enum {BLACKID=(256-NUMCOLORS), BLUEID, GREENID, REDID, WHITEID, GRAYID};
extern unsigned short colors[NUMCOLORS];

// Prototypes
void initGame();
void updateGame();
void drawGame();

void initBG();
void updateBG();
void drawBG();

void initSteven();
void updateSteven();
void drawSteven();
void animateSteven();
void enemyCollisions();
void starCollisions();

void initBonuses();
void updateBonuses();
void drawBonuses();

void initEnemies();
void updateEnemies();
void drawEnemies();

void initStars();
void updateStars();
void drawStars();

void initBubbles();
void throwBubble();
void updateBubble(ANISPRITE * b);
void drawBubble();


void initLives();
void updateLives();
void drawLives();

//movement algos
void moveRect(ANISPRITE * a, int initRow, int initCol, int width, int height);
void moveUp(ANISPRITE * a);
void moveDown(ANISPRITE * a);
void moveLeft(ANISPRITE * a);
void moveRight(ANISPRITE * a);

void hoverH(ANISPRITE * a,int initCol, int length);
void hoverV(ANISPRITE * a, int initRow, int length);
void hoverDP(ANISPRITE * a, int initRow, int length);
void hoverDN(ANISPRITE * a, int initRow, int length);

//more helper fxns
void throwLeft();
void throwRight();
void throwUp();
void throwDown();
void bubbling(ANISPRITE * a);







