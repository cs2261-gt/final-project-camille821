
//{{BLOCK(arena2)

//======================================================================
//
//	arena2, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 201 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 6432 + 2048 = 8992
//
//	Time-stamp: 2020-04-19, 16:24:22
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_ARENA2_H
#define GRIT_ARENA2_H

#define arena2TilesLen 6432
extern const unsigned short arena2Tiles[3216];

#define arena2MapLen 2048
extern const unsigned short arena2Map[1024];

#define arena2PalLen 512
extern const unsigned short arena2Pal[256];

#endif // GRIT_ARENA2_H

//}}BLOCK(arena2)
