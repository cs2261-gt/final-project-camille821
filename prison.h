
//{{BLOCK(prison)

//======================================================================
//
//	prison, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 335 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 10720 + 2048 = 13280
//
//	Time-stamp: 2020-04-20, 01:18:25
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_PRISON_H
#define GRIT_PRISON_H

#define prisonTilesLen 10720
extern const unsigned short prisonTiles[5360];

#define prisonMapLen 2048
extern const unsigned short prisonMap[1024];

#define prisonPalLen 512
extern const unsigned short prisonPal[256];

#endif // GRIT_PRISON_H

//}}BLOCK(prison)
