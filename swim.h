
//{{BLOCK(swim)

//======================================================================
//
//	swim, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 304 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 9728 + 2048 = 12288
//
//	Time-stamp: 2020-04-20, 02:01:50
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_SWIM_H
#define GRIT_SWIM_H

#define swimTilesLen 9728
extern const unsigned short swimTiles[4864];

#define swimMapLen 2048
extern const unsigned short swimMap[1024];

#define swimPalLen 512
extern const unsigned short swimPal[256];

#endif // GRIT_SWIM_H

//}}BLOCK(swim)
