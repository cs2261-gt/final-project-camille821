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
	mov	r3, #256
	mov	r1, #67108864
	push	{r4, lr}
	mov	r2, #83886080
	ldr	r4, .L4
	strh	r3, [r1]	@ movhi
	mov	r0, #3
	ldr	r1, .L4+4
	mov	lr, pc
	bx	r4
	mov	r3, #736
	mov	r2, #100663296
	ldr	r1, .L4+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L4+12
	ldr	r1, .L4+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #0
	ldr	r1, .L4+20
	ldr	r2, .L4+24
	str	r3, [r1]
	str	r3, [r2]
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	DMANow
	.word	startPal
	.word	startTiles
	.word	100704256
	.word	startMap
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
	@ link register save eliminated.
	mov	r3, #67108864
	mov	r2, #5248
	strh	r2, [r3, #8]	@ movhi
	b	goToStart
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
	ldrh	r2, [r3]
	ldr	r1, .L9
	orr	r2, r2, #4096
	push	{r4, lr}
	mov	r0, #3
	ldr	r4, .L9+4
	strh	r1, [r3, #8]	@ movhi
	strh	r2, [r3]	@ movhi
	ldr	r1, .L9+8
	mov	r3, #256
	mov	r2, #83886080
	mov	lr, pc
	bx	r4
	ldr	r3, .L9+12
	mov	r2, #100663296
	ldr	r1, .L9+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L9+20
	ldr	r1, .L9+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #256
	ldr	r2, .L9+28
	ldr	r1, .L9+32
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L9+36
	ldr	r1, .L9+40
	mov	r0, #3
	mov	r3, #16384
	mov	lr, pc
	bx	r4
	ldr	r3, .L9+44
	mov	lr, pc
	bx	r3
	ldr	r3, .L9+48
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L9+52
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L9+56
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L10:
	.align	2
.L9:
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
	ldr	r4, .L13
	strh	r1, [r2, #18]	@ movhi
	strh	r3, [r2]	@ movhi
	strh	r0, [r2, #8]	@ movhi
	ldr	r1, .L13+4
	mov	r2, #83886080
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #512
	mov	r2, #100663296
	ldr	r1, .L13+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L13+12
	ldr	r1, .L13+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L13+20
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L14:
	.align	2
.L13:
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
	mov	r3, #67108864
	mov	r2, #0
	push	{r4, lr}
	ldr	r1, .L27
	strh	r2, [r3, #16]	@ movhi
	strh	r2, [r3, #18]	@ movhi
	mov	lr, pc
	bx	r1
	ldr	r3, .L27+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L16
	ldr	r2, .L27+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L25
.L16:
	tst	r3, #4
	beq	.L15
	ldr	r3, .L27+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L26
.L15:
	pop	{r4, lr}
	bx	lr
.L26:
	pop	{r4, lr}
	b	goToStart
.L25:
	pop	{r4, lr}
	b	goToGame
.L28:
	.align	2
.L27:
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
	ldr	r4, .L31
	strh	r1, [r2, #18]	@ movhi
	strh	r3, [r2]	@ movhi
	strh	r0, [r2, #8]	@ movhi
	ldr	r1, .L31+4
	mov	r2, #83886080
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1568
	mov	r2, #100663296
	ldr	r1, .L31+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L31+12
	ldr	r1, .L31+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L31+20
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L32:
	.align	2
.L31:
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
	ldr	r3, .L40
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L40+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L33
	ldr	r3, .L40+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L39
.L33:
	pop	{r4, lr}
	bx	lr
.L39:
	pop	{r4, lr}
	b	goToStart
.L41:
	.align	2
.L40:
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
	ldr	r4, .L44
	strh	r1, [r2, #18]	@ movhi
	strh	r3, [r2]	@ movhi
	strh	r0, [r2, #8]	@ movhi
	ldr	r1, .L44+4
	mov	r2, #83886080
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #3040
	mov	r2, #100663296
	ldr	r1, .L44+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L44+12
	ldr	r1, .L44+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L44+20
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L45:
	.align	2
.L44:
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
	mov	r3, #256
	mov	r1, #5248
	push	{r4, lr}
	mov	r0, #3
	ldr	r4, .L49
	strh	r1, [r2, #8]	@ movhi
	strh	r3, [r2]	@ movhi
	ldr	r1, .L49+4
	mov	r2, #83886080
	mov	lr, pc
	bx	r4
	mov	r3, #832
	mov	r2, #100663296
	ldr	r1, .L49+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L49+12
	ldr	r1, .L49+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #5
	ldr	r3, .L49+20
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L50:
	.align	2
.L49:
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
	mov	r3, #67108864
	mov	r2, #0
	push	{r4, r5, r6, lr}
	ldr	r4, .L63
	strh	r2, [r3, #16]	@ movhi
	strh	r2, [r3, #18]	@ movhi
	ldr	r3, [r4]
	ldr	r5, .L63+4
	add	r3, r3, #1
	ldr	r2, .L63+8
	str	r3, [r4]
	mov	lr, pc
	bx	r2
	ldrh	r3, [r5]
	tst	r3, #8
	beq	.L52
	ldr	r2, .L63+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L61
.L52:
	tst	r3, #4
	beq	.L51
	ldr	r3, .L63+12
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L62
.L51:
	pop	{r4, r5, r6, lr}
	bx	lr
.L62:
	pop	{r4, r5, r6, lr}
	b	goToHelpState
.L61:
	ldr	r0, [r4]
	ldr	r3, .L63+16
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldr	r3, .L63+20
	mov	lr, pc
	bx	r3
	ldrh	r3, [r5]
	b	.L52
.L64:
	.align	2
.L63:
	.word	seed
	.word	oldButtons
	.word	waitForVBlank
	.word	buttons
	.word	srand
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
	ldr	r2, .L77
	ldrh	r1, [r2]
	ldr	r2, .L77+4
	push	{r4, lr}
	strh	r1, [r3, #16]	@ movhi
	ldrh	r1, [r2]
	ldr	r2, .L77+8
	strh	r1, [r3, #18]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r4, .L77+12
	ldr	r3, .L77+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L77+20
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L66
	ldr	r2, .L77+24
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L75
.L66:
	tst	r3, #4
	beq	.L65
	ldr	r3, .L77+24
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L76
.L65:
	pop	{r4, lr}
	bx	lr
.L76:
	pop	{r4, lr}
	b	goToHelpState
.L75:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L66
.L78:
	.align	2
.L77:
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
	mov	r3, #67108864
	mov	r2, #0
	push	{r4, lr}
	ldr	r4, .L91
	strh	r2, [r3, #16]	@ movhi
	ldr	r1, .L91+4
	strh	r2, [r3, #18]	@ movhi
	mov	lr, pc
	bx	r1
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L80
	ldr	r2, .L91+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L89
.L80:
	tst	r3, #4
	beq	.L79
	ldr	r3, .L91+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L90
.L79:
	pop	{r4, lr}
	bx	lr
.L90:
	pop	{r4, lr}
	b	goToStart
.L89:
	bl	goToGame
	ldrh	r3, [r4]
	b	.L80
.L92:
	.align	2
.L91:
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
	ldr	r3, .L105
	strh	r1, [r2, #8]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r6, .L105+4
	ldr	r8, .L105+8
	ldr	r5, .L105+12
	ldr	fp, .L105+16
	ldr	r10, .L105+20
	ldr	r9, .L105+24
	ldr	r7, .L105+28
	ldr	r4, .L105+32
.L94:
	ldr	r2, [r6]
	ldrh	r3, [r8]
.L95:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r8]	@ movhi
	cmp	r2, #5
	ldrls	pc, [pc, r2, asl #2]
	b	.L95
.L97:
	.word	.L96
	.word	.L98
	.word	.L99
	.word	.L100
	.word	.L100
	.word	.L101
.L100:
	mov	lr, pc
	bx	r7
	b	.L94
.L99:
	mov	lr, pc
	bx	r9
	b	.L94
.L98:
	mov	lr, pc
	bx	r10
	b	.L94
.L96:
	mov	lr, pc
	bx	fp
	b	.L94
.L101:
	ldr	r3, .L105+36
	mov	lr, pc
	bx	r3
	b	.L94
.L106:
	.align	2
.L105:
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
	.ident	"GCC: (devkitARM release 47) 7.1.0"
