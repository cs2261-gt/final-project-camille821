
//{{BLOCK(gameSplash)

//======================================================================
//
//	gameSplash, 256x256@8, 
//	+ palette 256 entries, not compressed
//	+ 259 tiles (t|f|p reduced) not compressed
//	+ regular map (flat), not compressed, 32x32 
//	Total size: 512 + 16576 + 2048 = 19136
//
//	Time-stamp: 2020-04-01, 01:52:21
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_GAMESPLASH_H
#define GRIT_GAMESPLASH_H

#define gameSplashTilesLen 16576
extern const unsigned short gameSplashTiles[8288];

#define gameSplashMapLen 2048
extern const unsigned short gameSplashMap[1024];

#define gameSplashPalLen 512
extern const unsigned short gameSplashPal[256];

#endif // GRIT_GAMESPLASH_H

//}}BLOCK(gameSplash)
