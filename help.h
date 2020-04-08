
//{{BLOCK(help)

//======================================================================
//
//	help, 256x256@8, 
//	+ palette 256 entries, not compressed
//	+ 26 tiles (t|f|p reduced) not compressed
//	+ regular map (flat), not compressed, 32x32 
//	Total size: 512 + 1664 + 2048 = 4224
//
//	Time-stamp: 2020-04-08, 14:47:27
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_HELP_H
#define GRIT_HELP_H

#define helpTilesLen 1664
extern const unsigned short helpTiles[832];

#define helpMapLen 2048
extern const unsigned short helpMap[1024];

#define helpPalLen 512
extern const unsigned short helpPal[256];

#endif // GRIT_HELP_H

//}}BLOCK(help)
