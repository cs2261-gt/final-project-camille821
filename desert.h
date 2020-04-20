
//{{BLOCK(desert)

//======================================================================
//
//	desert, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 436 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 13952 + 2048 = 16512
//
//	Time-stamp: 2020-04-19, 17:25:45
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_DESERT_H
#define GRIT_DESERT_H

#define desertTilesLen 13952
extern const unsigned short desertTiles[6976];

#define desertMapLen 2048
extern const unsigned short desertMap[1024];

#define desertPalLen 512
extern const unsigned short desertPal[256];

#endif // GRIT_DESERT_H

//}}BLOCK(desert)
