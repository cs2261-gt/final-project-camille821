
//{{BLOCK(fast)

//======================================================================
//
//	fast, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 302 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 9664 + 2048 = 12224
//
//	Time-stamp: 2020-04-20, 02:11:03
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_FAST_H
#define GRIT_FAST_H

#define fastTilesLen 9664
extern const unsigned short fastTiles[4832];

#define fastMapLen 2048
extern const unsigned short fastMap[1024];

#define fastPalLen 512
extern const unsigned short fastPal[256];

#endif // GRIT_FAST_H

//}}BLOCK(fast)
