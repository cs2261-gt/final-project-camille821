
//{{BLOCK(arena3)

//======================================================================
//
//	arena3, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 244 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 7808 + 2048 = 10368
//
//	Time-stamp: 2020-04-26, 16:09:53
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_ARENA3_H
#define GRIT_ARENA3_H

#define arena3TilesLen 7808
extern const unsigned short arena3Tiles[3904];

#define arena3MapLen 2048
extern const unsigned short arena3Map[1024];

#define arena3PalLen 512
extern const unsigned short arena3Pal[256];

#endif // GRIT_ARENA3_H

//}}BLOCK(arena3)
