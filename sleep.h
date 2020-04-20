
//{{BLOCK(sleep)

//======================================================================
//
//	sleep, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 253 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 8096 + 2048 = 10656
//
//	Time-stamp: 2020-04-20, 01:41:02
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_SLEEP_H
#define GRIT_SLEEP_H

#define sleepTilesLen 8096
extern const unsigned short sleepTiles[4048];

#define sleepMapLen 2048
extern const unsigned short sleepMap[1024];

#define sleepPalLen 512
extern const unsigned short sleepPal[256];

#endif // GRIT_SLEEP_H

//}}BLOCK(sleep)
