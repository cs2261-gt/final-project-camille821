
//{{BLOCK(garden)

//======================================================================
//
//	garden, 256x256@8, 
//	+ palette 256 entries, not compressed
//	+ 404 tiles (t|f|p reduced) not compressed
//	+ regular map (flat), not compressed, 32x32 
//	Total size: 512 + 25856 + 2048 = 28416
//
//	Time-stamp: 2020-04-14, 01:26:37
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_GARDEN_H
#define GRIT_GARDEN_H

#define gardenTilesLen 25856
extern const unsigned short gardenTiles[12928];

#define gardenMapLen 2048
extern const unsigned short gardenMap[1024];

#define gardenPalLen 512
extern const unsigned short gardenPal[256];

#endif // GRIT_GARDEN_H

//}}BLOCK(garden)
