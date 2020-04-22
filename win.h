
//{{BLOCK(win)

//======================================================================
//
//	win, 256x256@8, 
//	+ palette 256 entries, not compressed
//	+ 510 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 32640 + 2048 = 35200
//
//	Time-stamp: 2020-04-21, 13:04:53
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_WIN_H
#define GRIT_WIN_H

#define winTilesLen 32640
extern const unsigned short winTiles[16320];

#define winMapLen 2048
extern const unsigned short winMap[1024];

#define winPalLen 512
extern const unsigned short winPal[256];

#endif // GRIT_WIN_H

//}}BLOCK(win)
