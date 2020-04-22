
//{{BLOCK(pauseswim)

//======================================================================
//
//	pauseswim, 256x256@8, 
//	+ palette 256 entries, not compressed
//	+ 323 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 20672 + 2048 = 23232
//
//	Time-stamp: 2020-04-21, 13:15:00
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_PAUSESWIM_H
#define GRIT_PAUSESWIM_H

#define pauseswimTilesLen 20672
extern const unsigned short pauseswimTiles[10336];

#define pauseswimMapLen 2048
extern const unsigned short pauseswimMap[1024];

#define pauseswimPalLen 512
extern const unsigned short pauseswimPal[256];

#endif // GRIT_PAUSESWIM_H

//}}BLOCK(pauseswim)
