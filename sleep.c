
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

const unsigned short sleepTiles[4048] __attribute__((aligned(4)))=
{
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x8000,0x0000,0x8000,0x8888,0x8888,0x8000,0x8888,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x8888,0x8800,
	0x83FF,0x8888,0x83DF,0x8888,0x88F3,0x8888,0x8888,0x8888,
	0x0000,0x0000,0x0000,0x0000,0x8000,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,

	0x0000,0x0000,0x8800,0x0080,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x0000,0x0000,0x0880,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x0000,0x0000,0x8088,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x3888,0x3888,0x66F3,
	0x0000,0x0000,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8833,0x8888,0x6666,0x8333,

	0x0000,0x0000,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x0000,0x0000,0x8888,0x0000,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x0000,0x0000,0x0000,0x0000,0x8888,0x0000,0x8888,0x0080,
	0x8888,0x0088,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0008,0x0000,0x0008,0x0000,0x0888,0x0000,

	0x0000,0x8808,0x8080,0x8008,0x8000,0x8888,0x8000,0x8888,
	0x0000,0x8888,0x0000,0x8880,0x0000,0x8800,0x0000,0x8000,
	0x8000,0x0080,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8000,0x0008,0x8088,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x0000,0x0000,0x0008,0x0000,0x8888,0x0000,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,

	0x0000,0x0000,0x0000,0x0000,0x8080,0x0000,0x8888,0x0888,
	0x8888,0x0888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0008,0x0000,
	0x0000,0x0000,0x0008,0x0000,0x0888,0x0000,0x8888,0x0000,
	0x0000,0x8880,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0080,0x0000,
	0x8888,0x8888,0x8800,0x8888,0x0000,0x8888,0x0000,0x8000,
	0x0000,0x0000,0x0000,0x0000,0x8000,0x0000,0x0000,0x0000,

	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x0000,0x8888,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x0000,0x8888,0x0000,0x0000,0x0000,0x0000,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x6888,0x8888,0x6688,
	0x8888,0x6638,0x8888,0x6663,0x6380,0x6666,0x6663,0x6666,
	0x6638,0x6666,0x6663,0x6666,0x6666,0x6666,0x6666,0x6666,
	0x6666,0x6666,0x6666,0x6666,0x6666,0x6666,0x6666,0x6666,

	0x6666,0x3666,0x6666,0x6666,0x6666,0x6666,0x6666,0x6666,
	0x6666,0x6666,0x6666,0x6666,0x6666,0x6666,0x6666,0x6666,
	0x8883,0x8888,0x8836,0x8888,0x8366,0x8888,0xF666,0x8888,
	0x6666,0x888F,0x6666,0x0036,0x6666,0x3366,0x6666,0x6666,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x0888,
	0x0088,0x0000,0x0000,0x0000,0x8333,0x0000,0x6666,0x0083,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x0088,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x8888,0x8888,0x8888,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x8888,0x8888,0x0000,0x8800,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8800,0x8888,
	0x0000,0x8880,0x0000,0x3800,0x0000,0x6300,0x0000,0x6F80,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8883,0x8888,0x88F6,0x8888,0x8366,0x8888,0x0366,0x8888,

	0x8888,0x8888,0x8888,0x8888,0x8888,0x8008,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x0888,0x0000,0x8888,0x0008,0x8888,0x0000,0x0000,0x0000,
	0x0088,0x0000,0x0888,0x0000,0x8888,0x0000,0x8888,0x0008,
	0x8888,0x8888,0x8800,0x8888,0x8000,0x8888,0x0000,0x8880,
	0x0000,0x8800,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8800,0x8888,0x0000,0x8888,

	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x0088,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x0088,0x0000,0x8808,0x0000,0x8888,0x0000,0x8888,0x0088,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x8888,0x0000,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0008,0x0000,0x8888,0x0088,0x8888,0x8888,
	0x0000,0x3000,0x0000,0x6800,0x0000,0x6300,0x0000,0x6300,
	0x0000,0x6300,0x0000,0x6300,0x0000,0x6800,0x8888,0x3808,
	0x6666,0x6666,0x6666,0x6666,0x6666,0x6D66,0x6666,0xD9D6,
	0x6666,0xD9D6,0x6666,0x6DD6,0x6666,0xDDD6,0x6666,0x4BD6,
	0x6666,0x6666,0x6666,0x6666,0x6666,0x6666,0xD666,0x6669,
	0x6666,0x66D9,0xDDD6,0x66D9,0x9B99,0xD999,0x999B,0xBB99,

	0x6666,0x6666,0x6666,0x6666,0x6666,0x6666,0x6666,0x6666,
	0xD666,0x6666,0xB9D6,0x6669,0xBB9D,0x66DB,0x999B,0x6699,
	0x6666,0x6666,0x6666,0x6666,0x6666,0x6666,0x6666,0x6666,
	0x6666,0x6666,0x6666,0x6666,0x6666,0x6666,0xDD66,0x6666,
	0x6666,0x0866,0x6666,0x8666,0x6666,0x3666,0x6666,0x6666,
	0x6666,0x6666,0x6666,0x6666,0x6666,0x6666,0x6666,0x6666,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0008,0x0000,
	0x0003,0x0000,0x0803,0x0080,0x8883,0x8888,0x8883,0x8888,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0088,0x0000,
	0x0000,0xF800,0x0000,0x8000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x08F6,0x8800,0x008F,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x8888,0x8888,0x8880,0x8888,0x0000,0x8888,0x0000,0x8800,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x8888,0x0008,0x8888,0x0000,0x8888,0x0000,0x8888,0x0008,
	0x8880,0x0008,0x8000,0x0008,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x8000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x8888,0x8888,0x8880,0x8888,0x8800,0x8888,0x0000,0x8880,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8880,0x8888,0x0000,0x8888,0x0000,0x0000,0x0000,0x0000,

	0x666F,0x4BD6,0x6638,0x4B66,0xF388,0x4B66,0x8088,0x4666,
	0x0888,0xB663,0x0888,0xD668,0x8888,0x6380,0x8888,0x8808,
	0x99B4,0x44B9,0x9944,0x44B9,0x9944,0x44B9,0xB9B4,0x44B9,
	0xBD64,0x4499,0xBD39,0x6B99,0x9DDD,0xF999,0x9996,0x99B9,
	0x9944,0x6D99,0x9B44,0x69B9,0xB444,0x9999,0xB444,0x9999,
	0xB444,0x999D,0xB44B,0x9999,0x9446,0x9999,0x9BBD,0x9999,
	0xBB96,0x666D,0xB9BD,0x66D9,0x9999,0x66D9,0xB999,0x66D9,
	0xBB99,0x666D,0xDD99,0x6666,0x66D9,0x6666,0xB4B9,0x366B,

	0x6666,0xF666,0x6666,0x3666,0x6666,0x8366,0x6666,0x8883,
	0x8336,0x8888,0x8086,0x8888,0x8883,0x8888,0x8880,0x8888,
	0x8888,0x0008,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x0000,0x0000,0x0888,0x0000,0x8888,0x0008,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x3888,0x8888,0x8888,0x8888,0x8888,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0088,0x0000,
	0x083F,0x0000,0x88FF,0x0888,0x883F,0x8888,0x8888,0x8888,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0088,0x0000,0x8888,0x0008,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x8880,0x0000,0x8888,
	0x8000,0x8888,0x8000,0x8888,0x8880,0x8888,0x8880,0x8888,
	0x0000,0x0000,0x0000,0x0000,0x0088,0x0000,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0808,0x0000,
	0x8888,0x0088,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x8008,0x0000,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x8888,0x0808,0x8888,0x8888,0x8888,0x8888,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x8888,0x0888,0x8888,0x8888,
	0x8800,0x8888,0x0000,0x0000,0x8080,0x0000,0x8800,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x8888,0x0008,

	0x8888,0x8888,0x8800,0x8880,0x0000,0x0088,0x8800,0x8888,
	0x8800,0x8800,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x8888,0x8888,0x8888,0x8888,0x0088,0x0800,0x0088,0x8800,
	0x8880,0x8888,0x0000,0x8888,0x0000,0x0000,0x0000,0x0000,
	0x8888,0x8888,0x8888,0x8888,0x8000,0x8888,0x8880,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x0000,0x8800,
	0x8888,0x0888,0x8888,0x8888,0x8888,0x8888,0x8888,0x0888,
	0x8888,0x0888,0x8888,0x0888,0x8888,0x8088,0x8880,0x9308,

	0x96F8,0xB99B,0x9600,0x99DD,0x44F0,0xD99B,0x44B8,0xBB44,
	0x4446,0x9BB4,0x444D,0xBB9B,0xBBBD,0xBBBB,0xBBBB,0xBBBB,
	0x9999,0x9D9B,0x9999,0x4BDD,0x999D,0x44BB,0x4B99,0x4444,
	0xB999,0x4444,0x9BBB,0x44B9,0xBBBB,0x4B9B,0xBBBB,0xBBBB,
	0x444B,0x6B44,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,
	0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x44BB,0x4444,
	0x8800,0x8888,0x803B,0x8888,0x03B4,0x8888,0x3B44,0x8880,
	0xD444,0x8880,0xB444,0x8803,0x4444,0x8806,0x4444,0x8806,

	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x3383,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8388,
	0x8888,0x0888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x0000,0x0000,0x0008,0x0000,0x0088,0x0000,0x8888,0x0000,
	0x0888,0x0000,0x0888,0x0000,0x0088,0x0000,0x0888,0x0000,

	0x0000,0x8880,0x0000,0x8880,0x0000,0x8880,0x0000,0x8880,
	0x0000,0x8880,0x0000,0x8880,0x0000,0x8880,0x0000,0x8880,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x3888,0x8333,
	0x3888,0xF333,0x3888,0x3333,0x8888,0x3333,0x8888,0x3333,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x3333,0x8888,0xFFFF,0x333F,0xFFFF,0xFFFF,0xFF33,0xFFFF,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8883,0x8888,0xFFFF,0x3333,0xFFFF,0xFFFF,

	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x3FFF,0x3333,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x3333,0x3333,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x3338,0x3333,0xFFFF,0xFFFF,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x3333,0x3333,0xFFFF,0x3333,

	0x8888,0x0008,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x3338,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x0000,0x0000,0x8888,0x0888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x3338,0x3333,0x3F33,0x3333,0x3333,0x3333,0x3333,
	0x0000,0x0000,0x0000,0x0000,0x8888,0x0888,0x8888,0x8888,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x8333,
	0x0000,0xBD80,0x0000,0xB930,0x0000,0xBB30,0x3383,0xB938,
	0x3333,0x7988,0x8883,0x72F8,0x5938,0xC5C5,0x775D,0x5C77,

	0x9BBB,0x9999,0xBD9B,0x5555,0x99D9,0x2759,0xBB5C,0xB72B,
	0x2277,0x5777,0x7777,0x7777,0x225C,0x7777,0x725B,0x7777,
	0xBBBB,0xBBBB,0xB999,0xBBBB,0x9B55,0xBBBB,0x55B9,0xBB99,
	0x99BB,0xBBBB,0xB552,0xB9C2,0x7777,0xBB77,0x7777,0xBB77,
	0xBB9B,0x4444,0x99BB,0x444B,0x9BBB,0x4BBB,0x9BBB,0xD94B,
	0xBBBB,0x9B4B,0xBBBB,0x9B4B,0xBBBB,0x944B,0xBBBB,0xB4BB,
	0xB444,0x8803,0xFB44,0x8880,0x8DBB,0x8888,0xF999,0x8888,
	0xF9BB,0x8888,0x6BB9,0x8800,0xDBB9,0x8880,0xDBB9,0x8888,

	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x0888,0x0008,0x8888,0x0088,
	0x8838,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x0000,0x8000,0x0000,0x0000,
	0x8838,0x8888,0x8888,0x8888,0x3888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x0000,0x8000,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8388,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,

	0x0888,0x0000,0x0888,0x0000,0x8888,0x0008,0x8888,0x0008,
	0x8888,0x0008,0x8888,0x0008,0x8888,0x0008,0x8888,0x0008,
	0x8888,0x3333,0x8888,0x3333,0x8888,0x3333,0x8888,0x3333,
	0x8888,0x3333,0x8888,0x3338,0x8888,0x3338,0x8888,0x3888,
	0xFFF3,0xFFFF,0xFF33,0xFFFF,0xFF33,0xFFFF,0x3333,0xFFFF,
	0x3333,0xFFF3,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,
	0xFFFF,0x33FF,0x3F3F,0x33FF,0x3333,0x3333,0x3333,0x3333,

	0xFFFF,0xFFFF,0xFFFF,0xF33F,0xF3FF,0xF33F,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0xFFFF,0xFFFF,0x333F,0xFFFF,0x333F,0xFFF3,0x3333,0x3FF3,
	0x3333,0x3FF3,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0x3F33,0x333F,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0xFFFF,0x33FF,0x333F,0x333F,0x3FF3,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,

	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x0883,0x3333,0xF808,0x8833,0x25D3,
	0x3333,0xD833,0x3333,0x5883,0x8333,0xC308,0x8833,0x2D33,
	0x6333,0xC99D,0x9D30,0x59BB,0x996D,0xB999,0x9DB7,0xDD99,
	0x7772,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,
	0x7777,0x7777,0x7777,0x2C27,0x7777,0x2227,0x777C,0x7777,

	0x7C52,0x7557,0x7277,0x5577,0x7777,0x7777,0x7777,0x7777,
	0x7777,0x7777,0x7777,0x7777,0x772C,0x7777,0x7727,0x7777,
	0x7777,0xBB77,0x7755,0xBB27,0x7722,0xBBB5,0xB777,0xBBB9,
	0x9277,0xBBBB,0x5777,0xB5BB,0x7777,0x7777,0x7777,0x7777,
	0xBBBB,0x999B,0xBBBB,0x9D9B,0xBBBB,0xB99B,0xBBBB,0xB99B,
	0xBBBB,0xB999,0xBBB9,0xBB99,0xBBB5,0xBB99,0x99B7,0x9BB9,
	0xDBBB,0x8888,0x6BBB,0x8888,0x3DBB,0x3888,0xF6BB,0x8888,
	0x119B,0x8FF3,0x1119,0x6DDD,0x1119,0xB999,0x1111,0xBBB9,

	0x8888,0x8888,0x3388,0x8883,0x3333,0x3333,0x3333,0x3333,
	0x3338,0x3333,0x3383,0x3333,0x33FD,0x3333,0x83DB,0x3333,
	0x0888,0x8000,0x3338,0x8888,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x8333,
	0x0088,0x8880,0x8888,0x8888,0x3333,0x8888,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3888,0x3838,0xF333,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8333,0x8888,
	0x3333,0x3333,0x8888,0x3338,0x3333,0xFFFF,0xFFFF,0xFFFF,

	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x3333,0x3333,0xFFF3,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,
	0x8888,0x8888,0x8888,0x8888,0x0008,0x8880,0x8808,0x8888,
	0x8333,0x8833,0xFFFF,0x33FF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,
	0x8888,0x0008,0x8888,0x0008,0x8888,0x0008,0x8888,0x0008,
	0x8888,0x0008,0x8883,0x0008,0x8833,0x0088,0x8333,0x0088,
	0x8888,0x3888,0x8888,0x8888,0x8888,0x8888,0x8888,0x3888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,

	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3338,0x3333,0x3338,0x3333,0x3388,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x8333,0x8833,0x8838,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3338,0x3333,0x8838,0x3888,0x8888,0x8838,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3383,0x8883,0x3333,0x8888,0x8888,

	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3388,0x3388,0x3388,0x3388,0x8888,0x8888,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x8333,0x3338,0x8883,0x8888,0x3883,0x8888,0x8888,0x8888,
	0x3333,0x3333,0x3333,0x3333,0x3833,0x8333,0x8883,0x8888,
	0x8388,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x3333,0x8833,0x3333,0x8883,0x8388,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8838,0x8888,0x3888,0x8888,0x5383,

	0xD883,0x777C,0x7D88,0x7777,0x7238,0x222E,0x2ED8,0x5555,
	0x55D8,0x5555,0x55B3,0x2555,0xEEE5,0xEEEE,0xEEEE,0xEEEE,
	0x9B77,0x9BB9,0x5777,0x9525,0xE7EE,0x5552,0x5225,0xE255,
	0x5BB5,0xEEEE,0x5552,0x5522,0x222E,0x2255,0x552E,0x7725,
	0x772B,0x7777,0x55B9,0x5555,0x2555,0x55B5,0x2EEE,0x2E25,
	0x5522,0x22E5,0x5555,0x22E2,0x2777,0x2225,0x7777,0x2252,
	0x7777,0x7777,0x777C,0x7777,0x5555,0x7777,0x5522,0x77C5,
	0x2222,0x2555,0x2222,0xB522,0x2222,0x5522,0x2222,0x7552,

	0x7777,0x7777,0x7777,0x7777,0x7777,0x2777,0x5777,0x9BCB,
	0x9527,0x999D,0x999B,0x9999,0xBB99,0xBBBB,0xBB9C,0xBBBB,
	0x99B7,0x19B9,0x9D92,0x199B,0xB9DB,0x119B,0xBB9D,0x1119,
	0x9BB9,0x1119,0x9BBB,0x1111,0x99B9,0x1111,0x9D9B,0x1111,
	0x1111,0xBBB9,0x1111,0xBBB9,0x9111,0x6BB9,0x9111,0x869B,
	0xB611,0x88FB,0xB911,0xF33D,0x9B91,0xFFFF,0x6BB1,0xFFFF,
	0x386B,0x3333,0x383D,0x8838,0x8383,0x3388,0x3388,0xFF33,
	0xFF33,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,

	0x8333,0x3333,0x3338,0xFF33,0xFFF3,0xFFFF,0xFFFF,0xFFFF,
	0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,
	0xF333,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,
	0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,
	0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,
	0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,
	0xFFFF,0x3FFF,0xFFFF,0x3FFF,0xFFFF,0x3FFF,0xFFFF,0x3FFF,
	0xFFFF,0x33FF,0xFFFF,0x33FF,0xFFFF,0x33FF,0xFFFF,0x33FF,

	0x8833,0x0088,0x8833,0x0088,0x8833,0x0008,0x8833,0x0008,
	0x8833,0x0008,0x8833,0x0008,0x8883,0x0008,0x8833,0x0008,
	0x0000,0x8880,0x0000,0x8000,0x0000,0x8000,0x0000,0x8880,
	0x0000,0x8880,0x0000,0x8880,0x0000,0x8000,0x0000,0x8000,
	0xD888,0x888D,0xF888,0x888F,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x3888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,

	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0xF338,0xF388,0xFFFF,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x3888,
	0x8888,0xFF33,0xFF38,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,
	0x8888,0x8888,0x8888,0x3388,0x3888,0xFFFF,0xFFF3,0xFFFF,
	0xFFFF,0xFFFF,0xFFFF,0x3FFF,0xFFFF,0x5DFF,0xFFFF,0x77D8,
	0xF338,0x2D3F,0xFFFF,0xE983,0x33FF,0xE9DF,0x5DFF,0x5522,
	0x7263,0x5E77,0x25F3,0x7772,0x59BC,0x77E2,0x5577,0x222E,

	0xEEEE,0xEEEE,0xEEEE,0xEEEE,0xEEEE,0x2EEE,0xEEE2,0x2EEE,
	0x5555,0x5555,0x7777,0x225C,0x7EE7,0xEE77,0xEE22,0x2277,
	0x5E22,0xE775,0x5552,0xEEE5,0x52E2,0xEEEC,0x5552,0xE2E7,
	0x2BB5,0xE777,0x55B5,0x7C55,0x5552,0x5555,0x5552,0x5555,
	0x7EEE,0x5527,0x7EEE,0x95C7,0x7EEE,0x5555,0xCEEE,0xE255,
	0x57EE,0xE225,0x5277,0xEE22,0x55C5,0xEE55,0x5955,0xEEE2,
	0x5552,0x7E55,0xBB99,0x775B,0x5555,0x555B,0x2EEE,0xBB52,
	0xEEEE,0x5EEE,0xEEEE,0xEEEE,0xEEEE,0xEEEE,0xEEEE,0xEEEE,

	0xB9B7,0xBBB9,0x99C7,0xBBBB,0x9952,0xB99B,0x9525,0x7BB9,
	0x7755,0x7E55,0x755E,0x7257,0x52EE,0x2572,0x2EEE,0x2275,
	0x9BBB,0x1119,0xB77B,0x11B9,0xC777,0xB999,0x7777,0xBBDB,
	0x7777,0x9B9B,0x7777,0x699C,0x7777,0x36DC,0x7777,0xF3FB,
	0xF9B9,0xFFFF,0xF6BB,0xFFFF,0xFF6B,0xFFFF,0xF3FD,0xFFFF,
	0xFF3F,0xFFFF,0xFFF3,0xFFFF,0xFFFF,0xFFFF,0x3F3F,0x33FF,
	0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,
	0xFFFF,0xFFFF,0xFFFF,0xFFFF,0x33FF,0x333F,0x3333,0x3333,

	0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,
	0xFFFF,0xFFFF,0x33FF,0xF333,0x3333,0x3333,0x3333,0x3333,
	0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,
	0xFFFF,0xFFFF,0x33FF,0xF3F3,0x3333,0x3333,0x3333,0x3333,
	0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,
	0x3FFF,0xFFF3,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,
	0xFFF3,0xFFFF,0xFFF3,0xFFFF,0x3333,0x333F,0x3333,0x3333,

	0xFFFF,0x3333,0xFFFF,0x3333,0x3FFF,0x3333,0x3F3F,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x8333,
	0x8883,0x0008,0x8883,0x0008,0x8883,0x0008,0x8883,0x0008,
	0x8883,0x0008,0x8883,0x0008,0x8883,0x0008,0x8888,0x0008,
	0x0000,0x8800,0x0000,0x8800,0x0000,0x8000,0x0000,0x8000,
	0x0000,0x8000,0x0000,0x8880,0x0000,0x8888,0x0000,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x3888,0xF333,0xF338,0xFFFF,

	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x3888,0xF333,0xFFFF,0xFFFF,0xFFFF,0xFFFF,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x3888,0xFF33,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x3388,0xF338,0xFFFF,
	0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,
	0x8888,0xF338,0x3388,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,
	0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,

	0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0x3FFF,
	0xFFFF,0x3FFF,0xFFFF,0x3FFF,0xFFFF,0x3333,0x333F,0x3333,
	0x3FFF,0x7798,0x833F,0x77D8,0x9BDF,0x7B3F,0xEE2D,0x9DB2,
	0xEE2D,0x55EE,0x2E5F,0x75EE,0xE2D8,0x5EE2,0xE538,0x2E22,
	0x2777,0x2222,0x5777,0x5555,0xD977,0x7775,0xB3DB,0x7777,
	0x75D9,0x7777,0x7777,0x7777,0x7772,0x7777,0x7725,0x7777,
	0xE222,0xEEEE,0x2225,0xEEE2,0x2255,0xEE22,0x2BC7,0xE222,
	0xBC77,0xE222,0x5777,0x222B,0x7777,0x2255,0x7777,0x2252,

	0x2552,0x5555,0x255E,0x5555,0x2B5E,0x5525,0x5B5E,0x5B52,
	0x5B2E,0xE5B2,0x55EE,0xE5B5,0x5EEE,0xEE9D,0x5EEE,0xEE53,
	0x5555,0xE255,0xEE25,0x552E,0xEEE2,0x27EE,0xEEEE,0x7772,
	0xEEEE,0x222E,0xEEEE,0xEEEE,0xEEEE,0x222E,0x22EE,0x5555,
	0xEEEE,0xEEEE,0xEE25,0xEEEE,0x2552,0xEEEE,0x5777,0xEE25,
	0x77E2,0x5552,0x7222,0x5227,0x2222,0x7777,0x5555,0x7772,
	0xEEEE,0x2252,0xEEEE,0x255E,0xEEEE,0xE55E,0xEEEE,0x7252,
	0x5222,0xB5DD,0x9555,0x8888,0x2777,0x888D,0x7E27,0x3885,

	0x7777,0xF389,0x577E,0x3F83,0xD277,0x3338,0x8D5E,0x3333,
	0x383D,0x3333,0x3388,0x3333,0x3333,0x8333,0x3338,0x3833,
	0x333F,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x8833,0x3388,0x8888,0x8888,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x8333,0x8333,0x8833,0x8888,0x3888,0x8888,0x8888,0x8888,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x8333,
	0x8333,0x8333,0x8888,0x8338,0x8888,0x8888,0x8888,0x8888,

	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x8883,0x3888,0x8888,0x8888,0x8888,0x8888,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x8333,0x8833,0x8833,0x8888,0x3838,0x8883,0x8888,0x8888,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3833,0x3333,0x8888,0x8888,0x8888,0x3883,
	0x3333,0x8333,0x3333,0x8883,0x3333,0x8883,0x3333,0x8883,
	0x8333,0x8888,0x8333,0x8888,0x8883,0x8888,0x8888,0x8888,

	0x8888,0x0008,0x8888,0x0008,0x8888,0x0008,0x8888,0x0008,
	0x8888,0x0008,0x8888,0x0008,0x8888,0x0008,0x8888,0x0008,
	0x0000,0x8888,0x0000,0x8880,0x0000,0x8880,0x0000,0x8880,
	0x0000,0x8880,0x0000,0x8880,0x0000,0x8880,0x0000,0x8880,
	0x3338,0xFF33,0x3338,0xF333,0x3388,0xF333,0x3888,0x3333,
	0x8888,0x3338,0x8888,0x3338,0x8888,0x3888,0x8888,0x8888,
	0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFF3,0xFFFF,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,

	0xFFFF,0xFFFF,0xFFFF,0xFFFF,0x33FF,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3383,0x3333,
	0xFFFF,0xFFFF,0xFFFF,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3883,0x3888,0x3883,
	0xFFFF,0x333F,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3833,0x8833,0x8833,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3888,0x3333,0x8883,

	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3888,0x3333,0x8888,0x8338,
	0x5D83,0xE22E,0x9883,0x22E2,0x3833,0x22E5,0x8833,0x2E5D,
	0x8333,0xE5D8,0x3333,0x2D88,0x8833,0x9883,0x8888,0x8838,
	0x7252,0x7777,0x752E,0x7777,0x55E2,0x7777,0x5E22,0x7775,
	0xEE22,0x77C5,0xE222,0x7752,0x2522,0x725E,0x2229,0xD5EE,
	0x7777,0x2557,0x7777,0xE227,0x7777,0x2557,0x2777,0xDD3D,
	0xDC77,0x8888,0x0F57,0x8888,0x883B,0x8888,0x8888,0x8888,

	0xDEEE,0xEE53,0x8BEE,0x2E53,0x83B5,0x2EB3,0x8883,0x22D8,
	0x3388,0x5B88,0x3888,0x9388,0x8888,0xF088,0x8888,0xF088,
	0x5522,0x2255,0x7552,0x7777,0x77C5,0x7777,0x7775,0x7777,
	0x7775,0x7777,0x7772,0x7777,0x7772,0x2777,0x7772,0x5552,
	0x5522,0x2225,0x7777,0x2255,0x7777,0x2277,0x7777,0x2777,
	0x7777,0x2777,0x7777,0xB777,0x5555,0x3577,0x2225,0x52E2,
	0xE252,0x88D2,0xE252,0x88F5,0xDD52,0x8883,0x08B2,0x8888,
	0x80D5,0x8888,0x888D,0x8888,0x8880,0x8888,0x880D,0x8888,

	0x3888,0x3F6F,0xF388,0xF9CD,0x6388,0x6CAC,0x6888,0x6CAC,
	0xF388,0xFDBD,0x8888,0x83F3,0x8888,0x8808,0x8888,0x8888,
	0x8888,0x8888,0x8883,0x8888,0x8883,0x8888,0x8883,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x0008,0x8888,0x0008,0x8888,0x0008,0x8888,0x0008,
	0x0888,0x0000,0x8808,0x0000,0x0808,0x0000,0x0008,0x0000,
	0x0000,0x8880,0x0000,0x8880,0x0000,0x8000,0x0000,0x8000,
	0x0000,0x8000,0x0000,0x8000,0x0000,0x0000,0x0000,0x0000,

	0x8888,0x3883,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x0888,0x0088,0x0000,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x0800,0x8880,
	0x3838,0x8888,0x8838,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,

	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x0088,0x0888,
	0xE5D8,0x0D2E,0x5D88,0x803B,0x3888,0x8808,0x0888,0x8880,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8000,0x8880,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8880,0x0088,
	0x8888,0xD088,0x8888,0xD088,0x8888,0xD088,0x8888,0xD088,
	0x8888,0xD088,0x8888,0xD088,0x8888,0x3088,0x0000,0x0088,

	0x5777,0xE255,0x5522,0xEEEE,0xE255,0x522E,0x2EE5,0x2552,
	0x55EE,0x2225,0x5522,0x5225,0x5525,0x2255,0x225D,0x2222,
	0xEEEE,0xEEEE,0x2222,0x2222,0x5555,0x5555,0x2222,0x2252,
	0x5222,0x5222,0x2255,0x3952,0x5222,0x08DB,0x3952,0x0008,
	0x80D2,0x8888,0x035E,0x8888,0x085E,0x8888,0x80D5,0x0088,
	0x800D,0x0000,0x0000,0x0008,0x0800,0x0000,0x0000,0x0000,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8800,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0880,0x0000,0x0800,0x0000,

	0x8888,0x8888,0x0888,0x8888,0x8008,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x8888,0x8088,0x0088,0x8880,0x8000,0x8088,0x8800,0x0808,
	0x8000,0x0080,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x8808,0x8888,0x8888,0x8888,0x8888,0x0888,0x0000,0x0008,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x8888,0x8888,0x8888,0x8888,0x0888,0x8088,0x0880,0x8080,
	0x0008,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x8888,0x8888,0x8888,0x8888,0x8008,0x8888,0x8088,0x0888,
	0x0008,0x0088,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8880,0x0888,
	0x8800,0x0088,0x8000,0x0088,0x0000,0x0000,0x0000,0x0000,
	0x8888,0x8808,0x8888,0x0000,0x8888,0x0000,0x0800,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x8888,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x8880,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x8888,0x0800,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0800,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0800,0x0000,0x8000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x59D0,0x9B55,0x8000,0x0088,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x003D,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0080,0x0000,0x0000,0x0008,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0xAC00,0x0000,0xAA00,
	0x0000,0xAC00,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0xCF00,0x000D,0xAACD,0xACD9,0xCCAA,0xCAA7,0x700C,0x007A,
	0xCCAA,0xCAA7,0xAACD,0xACD9,0xCF00,0x000D,0x0000,0x0000,
	0x0099,0x0000,0x00CA,0x0000,0x000D,0x0000,0x0000,0x0000,
	0x000D,0x0000,0x00CA,0x0000,0x0099,0x0000,0x0000,0x0000,
	0xCCC0,0xDCCC,0x7AA0,0x9AA7,0x9CA0,0x9AC9,0xAAA0,0x9AAA,
	0x9CA0,0xF999,0x0CA0,0x0000,0x09C0,0x0000,0x0000,0x0000,
	0xCCCD,0x0CCC,0x7AA9,0x0AA7,0x9CA9,0x0AC9,0xAAA9,0x0AAA,
	0xCCA9,0x09CA,0x09A9,0x0DAC,0x0DCD,0x0CCF,0x0000,0x0000,

	0xCCCD,0x0CCC,0x777D,0x0777,0x999F,0x0999,0xAAA9,0x0AAA,
	0x9CA9,0x0999,0xAAA9,0x0AAA,0xCCCD,0x0CCC,0x0000,0x0000,
	0x09C0,0x0CC0,0x0AA0,0x0CAF,0xDAC0,0x0DAC,0xCAF0,0x00AA,
	0xAC00,0x00CA,0xA900,0x00FA,0xC000,0x000C,0x0000,0x0000,
	0xCC00,0xC000,0xA700,0xA00C,0xA700,0xA0CA,0x7700,0xACAC,
	0x7700,0xAAA0,0x7700,0xAAF0,0xCC00,0xCD00,0x0000,0x0000,
	0xCC09,0xCCCC,0x7C0C,0x7777,0x9D0C,0x9999,0xA70C,0xAAAA,
	0xA70C,0x9999,0xA70C,0xAAAA,0xCC09,0xCCCC,0x0000,0x0000,

	0xC909,0xC90D,0xAD0C,0xAADA,0x900D,0xDAAA,0x000C,0x0CA7,
	0x900D,0xDAAA,0xAD0C,0xAADA,0xC909,0xC90D,0x0000,0x0000,
	0xCC0D,0xCCCC,0x7C00,0x77AA,0x0000,0x00A9,0x0000,0x00A9,
	0x0000,0x00A9,0x0000,0x00A9,0x000D,0x00CD,0x0000,0x0000,
	0x0009,0xD000,0x000C,0x9000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x9000,0x0000,0xD000,0x0000,0x0000,
	0x00FC,0x0DC0,0xDCAA,0x7AA0,0xAACD,0xACC7,0xC000,0x00AA,
	0xAACD,0xACC7,0xDCAA,0xCAA0,0x000C,0x0FC0,0x0000,0x0000,

	0x0000,0x0000,0x0009,0x0000,0xFCAA,0x0000,0x9AA9,0x0000,
	0xFCAA,0x0000,0x0009,0x0000,0x0000,0x0000,0x0000,0x0000,
};

const unsigned short sleepMap[1024] __attribute__((aligned(4)))=
{
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0001,0x0002,0x0003,0x0004,0x0005,
	0x0006,0x0007,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0009,0x000A,0x000B,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x000C,0x000D,0x000E,
	0x000F,0x0010,0x0011,0x0012,0x0013,0x0014,0x0015,0x0016,
	0x0017,0x0018,0x0019,0x001A,0x001B,0x001C,0x001D,0x001E,
	0x001F,0x0020,0x0021,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0022,0x0023,
	0x0024,0x0024,0x0025,0x0026,0x0027,0x0028,0x0029,0x002A,
	0x002B,0x002C,0x002D,0x002E,0x002F,0x081C,0x0030,0x0031,
	0x0032,0x0033,0x0034,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0035,
	0x0036,0x0037,0x0023,0x0024,0x0024,0x0024,0x0024,0x0038,
	0x0039,0x003A,0x003B,0x003C,0x0024,0x0024,0x003D,0x003E,
	0x003F,0x0040,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0041,0x0403,0x0042,0x0043,
	0x0044,0x0045,0x0046,0x0047,0x0048,0x0049,0x004A,0x004B,
	0x004C,0x004D,0x004E,0x004F,0x0024,0x0050,0x0051,0x0451,
	0x0024,0x0052,0x0053,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0054,0x0055,0x0056,0x0057,0x0058,
	0x0059,0x0458,0x005A,0x005B,0x005C,0x005D,0x005E,0x005F,
	0x0060,0x0061,0x0062,0x0063,0x0064,0x0065,0x0066,0x0067,
	0x0024,0x0024,0x0068,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0054,0x0069,0x006A,0x006B,0x006C,
	0x006D,0x006E,0x006F,0x0070,0x0070,0x0071,0x0072,0x0073,
	0x0074,0x0075,0x0076,0x0077,0x0078,0x0079,0x007A,0x007B,
	0x007C,0x007D,0x007E,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0054,0x007F,0x0080,0x0081,0x0082,
	0x0083,0x0084,0x0085,0x0086,0x0087,0x0088,0x0089,0x008A,
	0x008B,0x008C,0x008D,0x008E,0x008F,0x0090,0x0091,0x0092,
	0x0092,0x0093,0x0094,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0095,0x0024,0x0096,0x0097,0x0024,
	0x0024,0x0098,0x0099,0x009A,0x009B,0x009C,0x009D,0x009E,
	0x009F,0x00A0,0x00A1,0x00A2,0x00A3,0x00A4,0x00A5,0x00A6,
	0x00A7,0x00A8,0x00A9,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x00AA,0x00AB,0x00AC,0x00AD,0x00AE,
	0x00AF,0x0092,0x00B0,0x00B1,0x00B2,0x00B3,0x00B4,0x00B5,
	0x00B6,0x00B7,0x00B8,0x00B9,0x00BA,0x00BB,0x00BC,0x00BD,
	0x00BE,0x00BF,0x00C0,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x00C1,0x00C2,0x00C3,0x00C4,0x00C5,
	0x00C6,0x00C7,0x00C8,0x00C9,0x00CA,0x00CB,0x00CC,0x00CD,
	0x00CE,0x00CF,0x0024,0x0024,0x0024,0x0024,0x0024,0x0024,
	0x00D0,0x00D1,0x00D2,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x00D3,0x0C52,0x00D4,0x00D5,0x0808,
	0x00D6,0x00D7,0x0024,0x00D8,0x00D9,0x00DA,0x00DB,0x00DC,
	0x00DD,0x00DE,0x00DF,0x00E0,0x00E1,0x00E2,0x00E3,0x00E4,
	0x00E5,0x00E6,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x00E7,0x0435,0x0000,0x0000,
	0x0000,0x00E8,0x00E9,0x0000,0x0000,0x00EA,0x00EB,0x00EC,
	0x00ED,0x00EE,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x00EF,0x00F0,0x00F1,0x00F2,0x00F3,0x00F4,0x00F5,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x00F6,
	0x00F7,0x00F8,0x00F9,0x00FA,0x00FB,0x00FC,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
};

const unsigned short sleepPal[256] __attribute__((aligned(4)))=
{
	0x0000,0x5182,0x69BA,0x0C41,0x7B50,0x5574,0x2482,0x76BD,
	0x0420,0x396A,0x7BDE,0x498D,0x5274,0x28E7,0x75DD,0x1082,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
};

//}}BLOCK(sleep)