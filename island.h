
//{{BLOCK(island)

//======================================================================
//
//	island, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 441 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 14112 + 2048 = 16672
//
//	Time-stamp: 2020-04-26, 15:06:17
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_ISLAND_H
#define GRIT_ISLAND_H

#define islandTilesLen 14112
extern const unsigned short islandTiles[7056];

#define islandMapLen 2048
extern const unsigned short islandMap[1024];

#define islandPalLen 512
extern const unsigned short islandPal[256];

#endif // GRIT_ISLAND_H

//}}BLOCK(island)
