
//{{BLOCK(jungle)

//======================================================================
//
//	jungle, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 414 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 13248 + 2048 = 15808
//
//	Time-stamp: 2020-04-26, 02:44:11
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_JUNGLE_H
#define GRIT_JUNGLE_H

#define jungleTilesLen 13248
extern const unsigned short jungleTiles[6624];

#define jungleMapLen 2048
extern const unsigned short jungleMap[1024];

#define junglePalLen 512
extern const unsigned short junglePal[256];

#endif // GRIT_JUNGLE_H

//}}BLOCK(jungle)
