
//{{BLOCK(help)

//======================================================================
//
//	help, 256x256@8, 
//	+ palette 256 entries, not compressed
//	+ 529 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 33856 + 2048 = 36416
//
//	Time-stamp: 2020-04-21, 13:04:11
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_HELP_H
#define GRIT_HELP_H

#define helpTilesLen 33856
extern const unsigned short helpTiles[16928];

#define helpMapLen 2048
extern const unsigned short helpMap[1024];

#define helpPalLen 512
extern const unsigned short helpPal[256];

#endif // GRIT_HELP_H

//}}BLOCK(help)
