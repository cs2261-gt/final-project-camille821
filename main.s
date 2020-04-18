	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"main.c"
	.text
	.align	2
	.global	goToStart
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #67108864
	mov	r4, #0
	mov	r3, #256
	strh	r4, [r2, #16]	@ movhi
	ldr	r5, .L4
	strh	r3, [r2]	@ movhi
	strh	r4, [r2, #18]	@ movhi
	ldr	r1, .L4+4
	mov	r2, #83886080
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #736
	mov	r2, #100663296
	ldr	r1, .L4+8
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L4+12
	ldr	r1, .L4+16
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r2, #1
	ldr	r3, .L4+20
	ldr	r1, .L4+24
	ldr	r0, .L4+28
	mov	lr, pc
	bx	r3
	ldr	r2, .L4+32
	ldr	r3, .L4+36
	str	r4, [r2]
	str	r4, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	DMANow
	.word	startPal
	.word	startTiles
	.word	100704256
	.word	startMap
	.word	playSoundA
	.word	1177056
	.word	spacedOutBeats
	.word	state
	.word	seed
	.size	goToStart, .-goToStart
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r1, #5248
	push	{r4, lr}
	ldr	r3, .L8
	strh	r1, [r2, #8]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+4
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToStart
.L9:
	.align	2
.L8:
	.word	setupInterrupts
	.word	setupSounds
	.size	initialize, .-initialize
	.align	2
	.global	goToGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r3, #67108864
	mov	r5, #256
	mov	r1, #4352
	ldr	r2, .L12
	ldr	r4, .L12+4
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	ldr	r1, .L12+8
	mov	r3, r5
	mov	r2, #83886080
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L12+12
	mov	r2, #100663296
	ldr	r1, .L12+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L12+20
	ldr	r1, .L12+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, r5
	ldr	r2, .L12+28
	ldr	r1, .L12+32
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L12+36
	ldr	r1, .L12+40
	mov	r0, #3
	mov	r3, #16384
	mov	lr, pc
	bx	r4
	ldr	r3, .L12+44
	mov	lr, pc
	bx	r3
	ldr	r3, .L12+48
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L12+52
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L12+56
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L13:
	.align	2
.L12:
	.word	-26240
	.word	DMANow
	.word	gameSplash1Pal
	.word	21888
	.word	gameSplash1Tiles
	.word	100714496
	.word	gameSplash1Map
	.word	83886592
	.word	spritesheet1Pal
	.word	100728832
	.word	spritesheet1Tiles
	.word	hideSprites
	.word	waitForVBlank
	.word	shadowOAM
	.word	state
	.size	goToGame, .-goToGame
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r1, #0
	mov	r3, #256
	mov	r0, #5248
	push	{r4, lr}
	strh	r1, [r2, #16]	@ movhi
	ldr	r4, .L16
	strh	r1, [r2, #18]	@ movhi
	strh	r3, [r2]	@ movhi
	strh	r0, [r2, #8]	@ movhi
	ldr	r1, .L16+4
	mov	r2, #83886080
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #512
	mov	r2, #100663296
	ldr	r1, .L16+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L16+12
	ldr	r1, .L16+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L16+20
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L17:
	.align	2
.L16:
	.word	DMANow
	.word	pausePal
	.word	pauseTiles
	.word	100704256
	.word	pauseMap
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L30
	mov	lr, pc
	bx	r3
	ldr	r3, .L30+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L30+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L19
	ldr	r2, .L30+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L28
.L19:
	tst	r3, #4
	beq	.L18
	ldr	r3, .L30+12
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L29
.L18:
	pop	{r4, lr}
	bx	lr
.L29:
	pop	{r4, lr}
	b	goToStart
.L28:
	ldr	r3, .L30+16
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToGame
.L31:
	.align	2
.L30:
	.word	pauseSound
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	unpauseSound
	.size	pause, .-pause
	.align	2
	.global	goToWinState
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWinState, %function
goToWinState:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r1, #0
	mov	r3, #256
	mov	r0, #5248
	push	{r4, lr}
	strh	r1, [r2, #16]	@ movhi
	ldr	r4, .L34
	strh	r1, [r2, #18]	@ movhi
	strh	r3, [r2]	@ movhi
	strh	r0, [r2, #8]	@ movhi
	ldr	r1, .L34+4
	mov	r2, #83886080
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1568
	mov	r2, #100663296
	ldr	r1, .L34+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L34+12
	ldr	r1, .L34+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L34+20
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L35:
	.align	2
.L34:
	.word	DMANow
	.word	winPal
	.word	winTiles
	.word	100704256
	.word	winMap
	.word	state
	.size	goToWinState, .-goToWinState
	.align	2
	.global	winState
	.syntax unified
	.arm
	.fpu softvfp
	.type	winState, %function
winState:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L43
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L43+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L36
	ldr	r3, .L43+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L42
.L36:
	pop	{r4, lr}
	bx	lr
.L42:
	pop	{r4, lr}
	b	goToStart
.L44:
	.align	2
.L43:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.size	winState, .-winState
	.align	2
	.global	goToLoseState
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLoseState, %function
goToLoseState:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r1, #0
	mov	r3, #256
	mov	r0, #5248
	push	{r4, lr}
	strh	r1, [r2, #16]	@ movhi
	ldr	r4, .L47
	strh	r1, [r2, #18]	@ movhi
	strh	r3, [r2]	@ movhi
	strh	r0, [r2, #8]	@ movhi
	ldr	r1, .L47+4
	mov	r2, #83886080
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #3040
	mov	r2, #100663296
	ldr	r1, .L47+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L47+12
	ldr	r1, .L47+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L47+20
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L48:
	.align	2
.L47:
	.word	DMANow
	.word	losePal
	.word	loseTiles
	.word	100704256
	.word	loseMap
	.word	state
	.size	goToLoseState, .-goToLoseState
	.align	2
	.global	loseState
	.syntax unified
	.arm
	.fpu softvfp
	.type	loseState, %function
loseState:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	winState
	.size	loseState, .-loseState
	.align	2
	.global	goToHelpState
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToHelpState, %function
goToHelpState:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r1, #0
	mov	r3, #256
	mov	r0, #5248
	push	{r4, lr}
	strh	r1, [r2, #16]	@ movhi
	ldr	r4, .L52
	strh	r1, [r2, #18]	@ movhi
	strh	r3, [r2]	@ movhi
	strh	r0, [r2, #8]	@ movhi
	ldr	r1, .L52+4
	mov	r2, #83886080
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #832
	mov	r2, #100663296
	ldr	r1, .L52+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L52+12
	ldr	r1, .L52+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #5
	ldr	r3, .L52+20
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L53:
	.align	2
.L52:
	.word	DMANow
	.word	helpPal
	.word	helpTiles
	.word	100704256
	.word	helpMap
	.word	state
	.size	goToHelpState, .-goToHelpState
	.align	2
	.global	start
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L66
	ldr	r3, [r4]
	ldr	r5, .L66+4
	add	r3, r3, #1
	ldr	r2, .L66+8
	str	r3, [r4]
	mov	lr, pc
	bx	r2
	ldrh	r3, [r5]
	tst	r3, #8
	beq	.L55
	ldr	r2, .L66+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L64
.L55:
	tst	r3, #4
	beq	.L54
	ldr	r3, .L66+12
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L65
.L54:
	pop	{r4, r5, r6, lr}
	bx	lr
.L65:
	pop	{r4, r5, r6, lr}
	b	goToHelpState
.L64:
	ldr	r0, [r4]
	ldr	r3, .L66+16
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldr	r3, .L66+20
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r1, .L66+24
	ldr	r0, .L66+28
	ldr	r3, .L66+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L66+36
	mov	lr, pc
	bx	r3
	ldrh	r3, [r5]
	b	.L55
.L67:
	.align	2
.L66:
	.word	seed
	.word	oldButtons
	.word	waitForVBlank
	.word	buttons
	.word	srand
	.word	stopSound
	.word	903052
	.word	gameSong
	.word	playSoundA
	.word	initGame
	.size	start, .-start
	.align	2
	.global	helpState
	.syntax unified
	.arm
	.fpu softvfp
	.type	helpState, %function
helpState:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L80
	ldr	r3, .L80+4
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L69
	ldr	r2, .L80+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L78
.L69:
	tst	r3, #4
	beq	.L68
	ldr	r3, .L80+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L79
.L68:
	pop	{r4, lr}
	bx	lr
.L79:
	pop	{r4, lr}
	b	goToStart
.L78:
	ldr	r3, .L80+12
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldrh	r3, [r4]
	b	.L69
.L81:
	.align	2
.L80:
	.word	oldButtons
	.word	waitForVBlank
	.word	buttons
	.word	unpauseSound
	.size	helpState, .-helpState
	.align	2
	.global	goToJdbState
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToJdbState, %function
goToJdbState:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #0
	mov	r5, #67108864
	mov	r3, #768
	ldr	r4, .L84
	strh	r2, [r5, #16]	@ movhi
	strh	r3, [r5]	@ movhi
	strh	r2, [r5, #18]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L84+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L84+8
	ldr	r3, .L84+12
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L84+16
	ldr	r2, .L84+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L84+24
	ldr	r1, .L84+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #5120
	mov	r3, #3168
	strh	r2, [r5, #8]	@ movhi
	ldr	r1, .L84+32
	mov	r2, #100663296
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L84+36
	ldr	r1, .L84+40
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L84+44
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L85:
	.align	2
.L84:
	.word	DMANow
	.word	junglePal
	.word	6916
	.word	6624
	.word	jungleTiles
	.word	100679680
	.word	100718592
	.word	jungleMap
	.word	jungle2Tiles
	.word	100704256
	.word	jungle2Map
	.word	state
	.size	goToJdbState, .-goToJdbState
	.align	2
	.global	goToMIState
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToMIState, %function
goToMIState:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #0
	mov	r5, #67108864
	mov	r3, #768
	ldr	r4, .L88
	strh	r2, [r5, #16]	@ movhi
	strh	r3, [r5]	@ movhi
	strh	r2, [r5, #18]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L88+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L88+8
	ldr	r3, .L88+12
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L88+16
	ldr	r2, .L88+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L88+24
	ldr	r1, .L88+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #5120
	mov	r3, #3840
	strh	r2, [r5, #8]	@ movhi
	ldr	r1, .L88+32
	mov	r2, #100663296
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L88+36
	ldr	r1, .L88+40
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L88+44
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L89:
	.align	2
.L88:
	.word	DMANow
	.word	islandPal
	.word	6916
	.word	7056
	.word	islandTiles
	.word	100679680
	.word	100718592
	.word	islandMap
	.word	island2Tiles
	.word	100704256
	.word	island2Map
	.word	state
	.size	goToMIState, .-goToMIState
	.align	2
	.global	goToZooState
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToZooState, %function
goToZooState:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #0
	mov	r5, #67108864
	mov	r3, #768
	ldr	r4, .L92
	strh	r2, [r5, #16]	@ movhi
	strh	r3, [r5]	@ movhi
	strh	r2, [r5, #18]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L92+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L92+8
	mov	r3, #5184
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L92+12
	ldr	r2, .L92+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L92+20
	ldr	r1, .L92+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #5120
	mov	r3, #3472
	strh	r2, [r5, #8]	@ movhi
	ldr	r1, .L92+28
	mov	r2, #100663296
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L92+32
	ldr	r1, .L92+36
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L92+40
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L93:
	.align	2
.L92:
	.word	DMANow
	.word	zooPal
	.word	6916
	.word	zooTiles
	.word	100679680
	.word	100718592
	.word	zooMap
	.word	zoo2Tiles
	.word	100704256
	.word	zoo2Map
	.word	state
	.size	goToZooState, .-goToZooState
	.align	2
	.global	goToGardenState
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGardenState, %function
goToGardenState:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #0
	mov	r5, #67108864
	mov	r3, #768
	ldr	r4, .L96
	strh	r2, [r5, #16]	@ movhi
	strh	r3, [r5]	@ movhi
	strh	r2, [r5, #18]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L96+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L96+8
	ldr	r3, .L96+12
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L96+16
	ldr	r2, .L96+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L96+24
	ldr	r1, .L96+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #5120
	mov	r3, #3424
	strh	r2, [r5, #8]	@ movhi
	ldr	r1, .L96+32
	mov	r2, #100663296
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L96+36
	ldr	r1, .L96+40
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L96+44
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L97:
	.align	2
.L96:
	.word	DMANow
	.word	gardenPal
	.word	6916
	.word	6448
	.word	gardenTiles
	.word	100679680
	.word	100718592
	.word	gardenMap
	.word	garden2Tiles
	.word	100704256
	.word	garden2Map
	.word	state
	.size	goToGardenState, .-goToGardenState
	.align	2
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	r3, .L145
	sub	sp, sp, #20
	mov	lr, pc
	bx	r3
	ldr	r4, .L145+4
	ldr	r3, .L145+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L145+12
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L99
	ldr	r2, .L145+16
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L138
.L99:
	tst	r3, #4
	beq	.L100
	ldr	r3, .L145+16
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L139
.L100:
	ldr	r4, .L145+20
	ldr	r2, [r4]
	ldr	r3, [r2, #12]
	cmp	r3, #0
	beq	.L140
.L102:
	ldr	r2, [r4, #4]
	ldr	r3, [r2, #12]
	cmp	r3, #0
	beq	.L141
.L105:
	ldr	r2, [r4, #8]
	ldr	r3, [r2, #12]
	cmp	r3, #0
	beq	.L142
.L108:
	ldr	r2, [r4, #12]
	ldr	r3, [r2, #12]
	cmp	r3, #0
	beq	.L143
.L111:
	ldr	r2, [r4, #16]
	ldr	r3, [r2, #12]
	cmp	r3, #0
	beq	.L144
.L98:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L144:
	ldr	r3, [r2, #64]
	str	r3, [sp, #12]
	ldr	r3, [r2, #68]
	str	r3, [sp, #8]
	ldr	r3, [r2, #48]
	str	r3, [sp, #4]
	ldr	r0, .L145+24
	ldr	ip, [r2, #44]
	ldr	r3, [r0, #64]
	ldr	r2, [r0, #68]
	add	r0, r0, #44
	ldm	r0, {r0, r1}
	ldr	r4, .L145+28
	str	ip, [sp]
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L98
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	b	goToMIState
.L143:
	ldr	r3, [r2, #64]
	str	r3, [sp, #12]
	ldr	r3, [r2, #68]
	str	r3, [sp, #8]
	ldr	r3, [r2, #48]
	str	r3, [sp, #4]
	ldr	r0, .L145+24
	ldr	ip, [r2, #44]
	ldr	r3, [r0, #64]
	ldr	r2, [r0, #68]
	add	r0, r0, #44
	ldm	r0, {r0, r1}
	ldr	r5, .L145+28
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L111
	bl	goToGardenState
	b	.L111
.L142:
	ldr	r3, [r2, #64]
	str	r3, [sp, #12]
	ldr	r3, [r2, #68]
	str	r3, [sp, #8]
	ldr	r3, [r2, #48]
	str	r3, [sp, #4]
	ldr	r0, .L145+24
	ldr	ip, [r2, #44]
	ldr	r3, [r0, #64]
	ldr	r2, [r0, #68]
	add	r0, r0, #44
	ldm	r0, {r0, r1}
	ldr	r5, .L145+28
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L108
	bl	goToJdbState
	b	.L108
.L141:
	ldr	r3, [r2, #64]
	str	r3, [sp, #12]
	ldr	r3, [r2, #68]
	str	r3, [sp, #8]
	ldr	r3, [r2, #48]
	str	r3, [sp, #4]
	ldr	r0, .L145+24
	ldr	ip, [r2, #44]
	ldr	r3, [r0, #64]
	ldr	r2, [r0, #68]
	add	r0, r0, #44
	ldm	r0, {r0, r1}
	ldr	r5, .L145+28
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L105
	bl	goToZooState
	b	.L105
.L140:
	ldr	r3, [r2, #64]
	str	r3, [sp, #12]
	ldr	r3, [r2, #68]
	str	r3, [sp, #8]
	ldr	r3, [r2, #48]
	str	r3, [sp, #4]
	ldr	r0, .L145+24
	ldr	ip, [r2, #44]
	ldr	r3, [r0, #64]
	ldr	r2, [r0, #68]
	add	r0, r0, #44
	ldm	r0, {r0, r1}
	ldr	r5, .L145+28
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L102
	bl	goToWinState
	b	.L102
.L139:
	ldr	r3, .L145+32
	mov	lr, pc
	bx	r3
	bl	goToHelpState
	b	.L100
.L138:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L99
.L146:
	.align	2
.L145:
	.word	updateGame
	.word	oldButtons
	.word	waitForVBlank
	.word	drawGame
	.word	buttons
	.word	stars
	.word	steven
	.word	collision
	.word	pauseSound
	.size	game, .-game
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r1, #5248
	push	{r4, r7, fp, lr}
	ldr	r3, .L159
	strh	r1, [r2, #8]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L159+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L159+8
	mov	lr, pc
	bx	r3
	ldr	r6, .L159+12
	ldr	r8, .L159+16
	ldr	r5, .L159+20
	ldr	fp, .L159+24
	ldr	r10, .L159+28
	ldr	r9, .L159+32
	ldr	r7, .L159+36
	ldr	r4, .L159+40
.L148:
	ldr	r2, [r6]
	ldrh	r3, [r8]
.L149:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r8]	@ movhi
	cmp	r2, #5
	ldrls	pc, [pc, r2, asl #2]
	b	.L149
.L151:
	.word	.L150
	.word	.L152
	.word	.L153
	.word	.L154
	.word	.L154
	.word	.L155
.L154:
	mov	lr, pc
	bx	r7
	b	.L148
.L153:
	mov	lr, pc
	bx	r9
	b	.L148
.L152:
	mov	lr, pc
	bx	r10
	b	.L148
.L150:
	mov	lr, pc
	bx	fp
	b	.L148
.L155:
	ldr	r3, .L159+44
	mov	lr, pc
	bx	r3
	b	.L148
.L160:
	.align	2
.L159:
	.word	setupInterrupts
	.word	setupSounds
	.word	goToStart
	.word	state
	.word	buttons
	.word	oldButtons
	.word	start
	.word	game
	.word	pause
	.word	winState
	.word	67109120
	.word	helpState
	.size	main, .-main
	.comm	buffer,41,4
	.comm	seed,4,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	lose,4,4
	.comm	state,4,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 47) 7.1.0"
