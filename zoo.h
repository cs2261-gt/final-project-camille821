
//{{BLOCK(zoo)

//======================================================================
//
//	zoo, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 324 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 10368 + 2048 = 12928
//
//	Time-stamp: 2020-04-17, 17:39:01
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_ZOO_H
#define GRIT_ZOO_H

#define zooTilesLen 10368
extern const unsigned short zooTiles[5184];

#define zooMapLen 2048
extern const unsigned short zooMap[1024];

#define zooPalLen 512
extern const unsigned short zooPal[256];

#endif // GRIT_ZOO_H

//}}BLOCK(zoo)
