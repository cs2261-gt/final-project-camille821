
//{{BLOCK(zoo)

//======================================================================
//
//	zoo, 256x256@8, 
//	+ palette 256 entries, not compressed
//	+ 446 tiles (t|f|p reduced) not compressed
//	+ regular map (flat), not compressed, 32x32 
//	Total size: 512 + 28544 + 2048 = 31104
//
//	Time-stamp: 2020-04-14, 01:20:37
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_ZOO_H
#define GRIT_ZOO_H

#define zooTilesLen 28544
extern const unsigned short zooTiles[14272];

#define zooMapLen 2048
extern const unsigned short zooMap[1024];

#define zooPalLen 512
extern const unsigned short zooPal[256];

#endif // GRIT_ZOO_H

//}}BLOCK(zoo)
