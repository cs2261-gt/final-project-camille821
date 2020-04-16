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
	mov	r3, #67108864
	ldr	r2, .L12
	ldr	r1, .L12+4
	ldrh	r2, [r2]
	push	{r4, lr}
	strh	r1, [r3, #8]	@ movhi
	ldr	r1, .L12+8
	strh	r2, [r3, #16]	@ movhi
	ldrh	r2, [r3]
	ldrh	r1, [r1]
	orr	r2, r2, #4096
	ldr	r4, .L12+12
	strh	r1, [r3, #18]	@ movhi
	strh	r2, [r3]	@ movhi
	ldr	r1, .L12+16
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L12+20
	mov	r2, #100663296
	ldr	r1, .L12+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L12+28
	ldr	r1, .L12+32
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #256
	ldr	r2, .L12+36
	ldr	r1, .L12+40
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L12+44
	ldr	r1, .L12+48
	mov	r0, #3
	mov	r3, #16384
	mov	lr, pc
	bx	r4
	ldr	r3, .L12+52
	mov	lr, pc
	bx	r3
	ldr	r3, .L12+56
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L12+60
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L12+64
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L13:
	.align	2
.L12:
	.word	hOff
	.word	-26240
	.word	vOff
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
	ldr	r3, .L30
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L30+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L19
	ldr	r2, .L30+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L28
.L19:
	tst	r3, #4
	beq	.L18
	ldr	r3, .L30+8
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
	pop	{r4, lr}
	b	goToGame
.L31:
	.align	2
.L30:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
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
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	ldr	r2, .L80
	ldrh	r1, [r2]
	ldr	r2, .L80+4
	push	{r4, lr}
	strh	r1, [r3, #16]	@ movhi
	ldrh	r1, [r2]
	ldr	r2, .L80+8
	strh	r1, [r3, #18]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r4, .L80+12
	ldr	r3, .L80+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L80+20
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L69
	ldr	r2, .L80+24
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L78
.L69:
	tst	r3, #4
	beq	.L68
	ldr	r3, .L80+24
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L79
.L68:
	pop	{r4, lr}
	bx	lr
.L79:
	pop	{r4, lr}
	b	goToHelpState
.L78:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L69
.L81:
	.align	2
.L80:
	.word	hOff
	.word	vOff
	.word	updateGame
	.word	oldButtons
	.word	waitForVBlank
	.word	drawGame
	.word	buttons
	.size	game, .-game
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
	ldr	r4, .L94
	ldr	r3, .L94+4
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L83
	ldr	r2, .L94+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L92
.L83:
	tst	r3, #4
	beq	.L82
	ldr	r3, .L94+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L93
.L82:
	pop	{r4, lr}
	bx	lr
.L93:
	pop	{r4, lr}
	b	goToStart
.L92:
	bl	goToGame
	ldrh	r3, [r4]
	b	.L83
.L95:
	.align	2
.L94:
	.word	oldButtons
	.word	waitForVBlank
	.word	buttons
	.size	helpState, .-helpState
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
	ldr	r3, .L108
	strh	r1, [r2, #8]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L108+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L108+8
	mov	lr, pc
	bx	r3
	ldr	r6, .L108+12
	ldr	r8, .L108+16
	ldr	r5, .L108+20
	ldr	fp, .L108+24
	ldr	r10, .L108+28
	ldr	r9, .L108+32
	ldr	r7, .L108+36
	ldr	r4, .L108+40
.L97:
	ldr	r2, [r6]
	ldrh	r3, [r8]
.L98:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r8]	@ movhi
	cmp	r2, #5
	ldrls	pc, [pc, r2, asl #2]
	b	.L98
.L100:
	.word	.L99
	.word	.L101
	.word	.L102
	.word	.L103
	.word	.L103
	.word	.L104
.L103:
	mov	lr, pc
	bx	r7
	b	.L97
.L102:
	mov	lr, pc
	bx	r9
	b	.L97
.L101:
	mov	lr, pc
	bx	r10
	b	.L97
.L99:
	mov	lr, pc
	bx	fp
	b	.L97
.L104:
	ldr	r3, .L108+44
	mov	lr, pc
	bx	r3
	b	.L97
.L109:
	.align	2
.L108:
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
	.text
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
	mov	r2, #67108864
	mov	r1, #0
	mov	r3, #256
	mov	r0, #5248
	push	{r4, lr}
	strh	r1, [r2, #16]	@ movhi
	ldr	r4, .L112
	strh	r1, [r2, #18]	@ movhi
	strh	r3, [r2]	@ movhi
	strh	r0, [r2, #8]	@ movhi
	ldr	r1, .L112+4
	mov	r2, #83886080
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L112+8
	mov	r2, #100663296
	ldr	r1, .L112+12
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L112+16
	ldr	r1, .L112+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L112+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L113:
	.align	2
.L112:
	.word	DMANow
	.word	jdbPal
	.word	15648
	.word	jdbTiles
	.word	100704256
	.word	jdbMap
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
	mov	r2, #67108864
	mov	r1, #0
	mov	r3, #256
	mov	r0, #5248
	push	{r4, lr}
	strh	r1, [r2, #16]	@ movhi
	ldr	r4, .L116
	strh	r1, [r2, #18]	@ movhi
	strh	r3, [r2]	@ movhi
	strh	r0, [r2, #8]	@ movhi
	ldr	r1, .L116+4
	mov	r2, #83886080
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L116+8
	mov	r2, #100663296
	ldr	r1, .L116+12
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L116+16
	ldr	r1, .L116+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L116+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L117:
	.align	2
.L116:
	.word	DMANow
	.word	mIslandPal
	.word	17600
	.word	mIslandTiles
	.word	100704256
	.word	mIslandMap
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
	mov	r2, #67108864
	mov	r1, #0
	mov	r3, #256
	mov	r0, #5248
	push	{r4, lr}
	strh	r1, [r2, #16]	@ movhi
	ldr	r4, .L120
	strh	r1, [r2, #18]	@ movhi
	strh	r3, [r2]	@ movhi
	strh	r0, [r2, #8]	@ movhi
	ldr	r1, .L120+4
	mov	r2, #83886080
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #14272
	mov	r2, #100663296
	ldr	r1, .L120+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L120+12
	ldr	r1, .L120+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L120+20
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L121:
	.align	2
.L120:
	.word	DMANow
	.word	zooPal
	.word	zooTiles
	.word	100704256
	.word	zooMap
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
	mov	r2, #67108864
	mov	r1, #0
	mov	r3, #256
	mov	r0, #5248
	push	{r4, lr}
	strh	r1, [r2, #16]	@ movhi
	ldr	r4, .L124
	strh	r1, [r2, #18]	@ movhi
	strh	r3, [r2]	@ movhi
	strh	r0, [r2, #8]	@ movhi
	ldr	r1, .L124+4
	mov	r2, #83886080
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #12928
	mov	r2, #100663296
	ldr	r1, .L124+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L124+12
	ldr	r1, .L124+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L124+20
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L125:
	.align	2
.L124:
	.word	DMANow
	.word	gardenPal
	.word	gardenTiles
	.word	100704256
	.word	gardenMap
	.word	state
	.size	goToGardenState, .-goToGardenState
	.comm	buffer,41,4
	.comm	seed,4,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	lose,4,4
	.comm	state,4,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 47) 7.1.0"
