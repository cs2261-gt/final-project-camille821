
//{{BLOCK(island2)

//======================================================================
//
//	island2, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 240 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 7680 + 2048 = 10240
//
//	Time-stamp: 2020-04-17, 23:31:56
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_ISLAND2_H
#define GRIT_ISLAND2_H

#define island2TilesLen 7680
extern const unsigned short island2Tiles[3840];

#define island2MapLen 2048
extern const unsigned short island2Map[1024];

#define island2PalLen 512
extern const unsigned short island2Pal[256];

#endif // GRIT_ISLAND2_H

//}}BLOCK(island2)
