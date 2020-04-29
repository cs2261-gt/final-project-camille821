
//{{BLOCK(garden)

//======================================================================
//
//	garden, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 403 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 12896 + 2048 = 15456
//
//	Time-stamp: 2020-04-26, 15:02:13
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_GARDEN_H
#define GRIT_GARDEN_H

#define gardenTilesLen 12896
extern const unsigned short gardenTiles[6448];

#define gardenMapLen 2048
extern const unsigned short gardenMap[1024];

#define gardenPalLen 512
extern const unsigned short gardenPal[256];

#endif // GRIT_GARDEN_H

//}}BLOCK(garden)
