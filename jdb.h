
//{{BLOCK(jdb)

//======================================================================
//
//	jdb, 256x256@8, 
//	+ palette 256 entries, not compressed
//	+ 489 tiles (t|f|p reduced) not compressed
//	+ regular map (flat), not compressed, 32x32 
//	Total size: 512 + 31296 + 2048 = 33856
//
//	Time-stamp: 2020-04-13, 23:50:30
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_JDB_H
#define GRIT_JDB_H

#define jdbTilesLen 31296
extern const unsigned short jdbTiles[15648];

#define jdbMapLen 2048
extern const unsigned short jdbMap[1024];

#define jdbPalLen 512
extern const unsigned short jdbPal[256];

#endif // GRIT_JDB_H

//}}BLOCK(jdb)
