
//{{BLOCK(arena)

//======================================================================
//
//	arena, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 405 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 12960 + 2048 = 15520
//
//	Time-stamp: 2020-04-19, 16:17:10
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_ARENA_H
#define GRIT_ARENA_H

#define arenaTilesLen 12960
extern const unsigned short arenaTiles[6480];

#define arenaMapLen 2048
extern const unsigned short arenaMap[1024];

#define arenaPalLen 512
extern const unsigned short arenaPal[256];

#endif // GRIT_ARENA_H

//}}BLOCK(arena)
