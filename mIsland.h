
//{{BLOCK(mIsland)

//======================================================================
//
//	mIsland, 256x256@8, 
//	+ palette 256 entries, not compressed
//	+ 550 tiles (t|f|p reduced) not compressed
//	+ regular map (flat), not compressed, 32x32 
//	Total size: 512 + 35200 + 2048 = 37760
//
//	Time-stamp: 2020-04-14, 00:10:10
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_MISLAND_H
#define GRIT_MISLAND_H

#define mIslandTilesLen 35200
extern const unsigned short mIslandTiles[17600];

#define mIslandMapLen 2048
extern const unsigned short mIslandMap[1024];

#define mIslandPalLen 512
extern const unsigned short mIslandPal[256];

#endif // GRIT_MISLAND_H

//}}BLOCK(mIsland)
