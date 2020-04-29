
//{{BLOCK(zoo)

//======================================================================
//
//	zoo, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 323 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 10336 + 2048 = 12896
//
//	Time-stamp: 2020-04-26, 02:57:29
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_ZOO_H
#define GRIT_ZOO_H

#define zooTilesLen 10336
extern const unsigned short zooTiles[5168];

#define zooMapLen 2048
extern const unsigned short zooMap[1024];

#define zooPalLen 512
extern const unsigned short zooPal[256];

#endif // GRIT_ZOO_H

//}}BLOCK(zoo)
