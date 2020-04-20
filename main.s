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
	.global	goToPrison
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPrison, %function
goToPrison:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #0
	mov	r5, #67108864
	mov	r3, #768
	ldr	r4, .L4
	strh	r2, [r5, #16]	@ movhi
	strh	r3, [r5]	@ movhi
	strh	r2, [r5, #18]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L4+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L4+8
	ldr	r3, .L4+12
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L4+16
	ldr	r2, .L4+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L4+24
	ldr	r1, .L4+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #5120
	ldr	r3, .L4+32
	strh	r2, [r5, #8]	@ movhi
	ldr	r1, .L4+36
	mov	r2, #100663296
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L4+40
	ldr	r1, .L4+44
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #6
	ldr	r3, .L4+48
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L5:
	.align	2
.L4:
	.word	DMANow
	.word	prisonPal
	.word	6916
	.word	5360
	.word	prisonTiles
	.word	100679680
	.word	100718592
	.word	prisonMap
	.word	4528
	.word	prison2Tiles
	.word	100704256
	.word	prison2Map
	.word	state
	.size	goToPrison, .-goToPrison
	.align	2
	.global	goToSleep
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToSleep, %function
goToSleep:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #0
	mov	r4, #67108864
	mov	r3, #256
	strh	r2, [r4, #16]	@ movhi
	ldr	r5, .L8
	strh	r3, [r4]	@ movhi
	strh	r2, [r4, #18]	@ movhi
	ldr	r1, .L8+4
	mov	r2, #83886080
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r2, .L8+8
	mov	r3, #4048
	strh	r2, [r4, #8]	@ movhi
	ldr	r1, .L8+12
	ldr	r2, .L8+16
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L8+20
	ldr	r1, .L8+24
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r2, #7
	ldr	r3, .L8+28
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L9:
	.align	2
.L8:
	.word	DMANow
	.word	sleepPal
	.word	6916
	.word	sleepTiles
	.word	100679680
	.word	100718592
	.word	sleepMap
	.word	state
	.size	goToSleep, .-goToSleep
	.align	2
	.global	goToFound
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToFound, %function
goToFound:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #0
	mov	r4, #67108864
	mov	r3, #256
	strh	r2, [r4, #16]	@ movhi
	ldr	r5, .L12
	strh	r3, [r4]	@ movhi
	strh	r2, [r4, #18]	@ movhi
	ldr	r1, .L12+4
	mov	r2, #83886080
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r2, .L12+8
	ldr	r3, .L12+12
	strh	r2, [r4, #8]	@ movhi
	ldr	r1, .L12+16
	ldr	r2, .L12+20
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L12+24
	ldr	r1, .L12+28
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r2, #8
	ldr	r3, .L12+32
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L13:
	.align	2
.L12:
	.word	DMANow
	.word	foundPal
	.word	6916
	.word	5040
	.word	foundTiles
	.word	100679680
	.word	100718592
	.word	foundMap
	.word	state
	.size	goToFound, .-goToFound
	.align	2
	.global	sleepState
	.syntax unified
	.arm
	.fpu softvfp
	.type	sleepState, %function
sleepState:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L26
	ldrh	r3, [r4]
	tst	r3, #16
	beq	.L15
	ldr	r2, .L26+4
	ldrh	r2, [r2]
	tst	r2, #16
	beq	.L24
.L15:
	tst	r3, #32
	beq	.L14
	ldr	r3, .L26+4
	ldrh	r3, [r3]
	tst	r3, #32
	beq	.L25
.L14:
	pop	{r4, lr}
	bx	lr
.L25:
	pop	{r4, lr}
	b	goToPrison
.L24:
	bl	goToFound
	ldrh	r3, [r4]
	b	.L15
.L27:
	.align	2
.L26:
	.word	oldButtons
	.word	buttons
	.size	sleepState, .-sleepState
	.align	2
	.global	goToSwim
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToSwim, %function
goToSwim:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #0
	mov	r4, #67108864
	mov	r3, #256
	strh	r2, [r4, #16]	@ movhi
	ldr	r5, .L30
	strh	r3, [r4]	@ movhi
	strh	r2, [r4, #18]	@ movhi
	ldr	r1, .L30+4
	mov	r2, #83886080
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r2, .L30+8
	mov	r3, #4864
	strh	r2, [r4, #8]	@ movhi
	ldr	r1, .L30+12
	ldr	r2, .L30+16
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L30+20
	ldr	r1, .L30+24
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r2, #9
	ldr	r3, .L30+28
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L31:
	.align	2
.L30:
	.word	DMANow
	.word	swimPal
	.word	6916
	.word	swimTiles
	.word	100679680
	.word	100718592
	.word	swimMap
	.word	state
	.size	goToSwim, .-goToSwim
	.align	2
	.global	foundState
	.syntax unified
	.arm
	.fpu softvfp
	.type	foundState, %function
foundState:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L44
	ldrh	r3, [r4]
	tst	r3, #16
	beq	.L33
	ldr	r2, .L44+4
	ldrh	r2, [r2]
	tst	r2, #16
	beq	.L42
.L33:
	tst	r3, #32
	beq	.L32
	ldr	r3, .L44+4
	ldrh	r3, [r3]
	tst	r3, #32
	beq	.L43
.L32:
	pop	{r4, lr}
	bx	lr
.L43:
	pop	{r4, lr}
	b	goToSleep
.L42:
	bl	goToSwim
	ldrh	r3, [r4]
	b	.L33
.L45:
	.align	2
.L44:
	.word	oldButtons
	.word	buttons
	.size	foundState, .-foundState
	.align	2
	.global	goToFast
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToFast, %function
goToFast:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #0
	mov	r4, #67108864
	mov	r3, #256
	strh	r2, [r4, #16]	@ movhi
	ldr	r5, .L48
	strh	r3, [r4]	@ movhi
	strh	r2, [r4, #18]	@ movhi
	ldr	r1, .L48+4
	mov	r2, #83886080
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r2, .L48+8
	ldr	r3, .L48+12
	strh	r2, [r4, #8]	@ movhi
	ldr	r1, .L48+16
	ldr	r2, .L48+20
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L48+24
	ldr	r1, .L48+28
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r2, #10
	ldr	r3, .L48+32
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L49:
	.align	2
.L48:
	.word	DMANow
	.word	fastPal
	.word	6916
	.word	4832
	.word	fastTiles
	.word	100679680
	.word	100718592
	.word	fastMap
	.word	state
	.size	goToFast, .-goToFast
	.align	2
	.global	swimState
	.syntax unified
	.arm
	.fpu softvfp
	.type	swimState, %function
swimState:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L62
	ldrh	r3, [r4]
	tst	r3, #16
	beq	.L51
	ldr	r2, .L62+4
	ldrh	r2, [r2]
	tst	r2, #16
	beq	.L60
.L51:
	tst	r3, #32
	beq	.L50
	ldr	r3, .L62+4
	ldrh	r3, [r3]
	tst	r3, #32
	beq	.L61
.L50:
	pop	{r4, lr}
	bx	lr
.L61:
	pop	{r4, lr}
	b	goToFound
.L60:
	bl	goToFast
	ldrh	r3, [r4]
	b	.L51
.L63:
	.align	2
.L62:
	.word	oldButtons
	.word	buttons
	.size	swimState, .-swimState
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
	mov	r3, #5248
	mov	r5, #67108864
	mov	r4, #0
	strh	r3, [r5, #8]	@ movhi
	ldr	r6, .L66
	strh	r4, [r5, #16]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	strh	r4, [r5, #18]	@ movhi
	ldr	r1, .L66+4
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r3, #736
	mov	r2, #100663296
	ldr	r1, .L66+8
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r2, .L66+12
	ldr	r1, .L66+16
	mov	r0, #3
	mov	r3, #1024
	mov	lr, pc
	bx	r6
	ldr	r3, .L66+20
	mov	lr, pc
	bx	r3
	mov	r3, #256
	mov	r2, #1
	strh	r3, [r5]	@ movhi
	ldr	r1, .L66+24
	ldr	r3, .L66+28
	ldr	r0, .L66+32
	mov	lr, pc
	bx	r3
	ldr	r2, .L66+36
	ldr	r3, .L66+40
	str	r4, [r2]
	str	r4, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L67:
	.align	2
.L66:
	.word	DMANow
	.word	startPal
	.word	startTiles
	.word	100704256
	.word	startMap
	.word	waitForVBlank
	.word	1177056
	.word	playSoundA
	.word	spacedOutBeats
	.word	state
	.word	seed
	.size	goToStart, .-goToStart
	.align	2
	.global	prisonState
	.syntax unified
	.arm
	.fpu softvfp
	.type	prisonState, %function
prisonState:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L80
	ldrh	r3, [r4]
	tst	r3, #32
	beq	.L69
	ldr	r2, .L80+4
	ldrh	r2, [r2]
	tst	r2, #32
	beq	.L78
.L69:
	tst	r3, #16
	beq	.L68
	ldr	r3, .L80+4
	ldrh	r3, [r3]
	tst	r3, #16
	beq	.L79
.L68:
	pop	{r4, lr}
	bx	lr
.L79:
	pop	{r4, lr}
	b	goToSleep
.L78:
	bl	goToStart
	ldrh	r3, [r4]
	b	.L69
.L81:
	.align	2
.L80:
	.word	oldButtons
	.word	buttons
	.size	prisonState, .-prisonState
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
	push	{r4, lr}
	ldr	r3, .L84
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #5248
	ldr	r3, .L84+4
	strh	r1, [r2, #8]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L84+8
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToStart
.L85:
	.align	2
.L84:
	.word	initGame
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
	mov	r2, #67108864
	mov	r1, #4352
	ldr	r3, .L88
	ldr	r3, [r3]
	lsl	r3, r3, #24
	orr	r3, r3, #1073741824
	orr	r3, r3, #8388608
	lsr	r3, r3, #16
	push	{r4, lr}
	mov	r0, #3
	ldr	r4, .L88+4
	strh	r1, [r2]	@ movhi
	strh	r3, [r2, #8]	@ movhi
	ldr	r1, .L88+8
	mov	r3, #256
	mov	r2, #83886080
	mov	lr, pc
	bx	r4
	mov	r3, #23808
	mov	r2, #100663296
	ldr	r1, .L88+12
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	ldr	r2, .L88+16
	ldr	r1, .L88+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #256
	ldr	r2, .L88+24
	ldr	r1, .L88+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L88+32
	ldr	r1, .L88+36
	mov	r0, #3
	mov	r3, #16384
	mov	lr, pc
	bx	r4
	ldr	r3, .L88+40
	mov	lr, pc
	bx	r3
	ldr	r3, .L88+44
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L88+48
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L88+52
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L89:
	.align	2
.L88:
	.word	screenBlock
	.word	DMANow
	.word	escapismbgPal
	.word	escapismbgTiles
	.word	100720640
	.word	escapismbgMap
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
	.global	fastState
	.syntax unified
	.arm
	.fpu softvfp
	.type	fastState, %function
fastState:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L102
	ldr	r3, [r4]
	ldr	r5, .L102+4
	add	r3, r3, #1
	ldr	r2, .L102+8
	str	r3, [r4]
	mov	lr, pc
	bx	r2
	ldrh	r3, [r5]
	tst	r3, #32
	beq	.L91
	ldr	r2, .L102+12
	ldrh	r2, [r2]
	tst	r2, #32
	beq	.L100
.L91:
	tst	r3, #8
	beq	.L90
	ldr	r3, .L102+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L101
.L90:
	pop	{r4, r5, r6, lr}
	bx	lr
.L101:
	ldr	r0, [r4]
	ldr	r3, .L102+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L102+20
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldr	r3, .L102+24
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r1, .L102+28
	ldr	r0, .L102+32
	ldr	r3, .L102+36
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	bx	lr
.L100:
	bl	goToSwim
	ldrh	r3, [r5]
	b	.L91
.L103:
	.align	2
.L102:
	.word	seed
	.word	oldButtons
	.word	waitForVBlank
	.word	buttons
	.word	srand
	.word	initGame
	.word	stopSound
	.word	903052
	.word	gameSong
	.word	playSoundA
	.size	fastState, .-fastState
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
	ldr	r4, .L106
	strh	r1, [r2, #18]	@ movhi
	strh	r3, [r2]	@ movhi
	strh	r0, [r2, #8]	@ movhi
	ldr	r1, .L106+4
	mov	r2, #83886080
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #512
	mov	r2, #100663296
	ldr	r1, .L106+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L106+12
	ldr	r1, .L106+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L106+20
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L107:
	.align	2
.L106:
	.word	DMANow
	.word	pausePal
	.word	pauseTiles
	.word	100704256
	.word	pauseMap
	.word	state
	.size	goToPause, .-goToPause
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
	ldr	r4, .L110
	strh	r1, [r2, #18]	@ movhi
	strh	r3, [r2]	@ movhi
	strh	r0, [r2, #8]	@ movhi
	ldr	r1, .L110+4
	mov	r2, #83886080
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1568
	mov	r2, #100663296
	ldr	r1, .L110+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L110+12
	ldr	r1, .L110+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L110+20
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L111:
	.align	2
.L110:
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
	ldr	r3, .L119
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L119+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L112
	ldr	r3, .L119+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L118
.L112:
	pop	{r4, lr}
	bx	lr
.L118:
	pop	{r4, lr}
	b	goToStart
.L120:
	.align	2
.L119:
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
	ldr	r4, .L123
	strh	r1, [r2, #18]	@ movhi
	strh	r3, [r2]	@ movhi
	strh	r0, [r2, #8]	@ movhi
	ldr	r1, .L123+4
	mov	r2, #83886080
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #3040
	mov	r2, #100663296
	ldr	r1, .L123+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L123+12
	ldr	r1, .L123+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L123+20
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L124:
	.align	2
.L123:
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
	ldr	r4, .L128
	strh	r1, [r2, #18]	@ movhi
	strh	r3, [r2]	@ movhi
	strh	r0, [r2, #8]	@ movhi
	ldr	r1, .L128+4
	mov	r2, #83886080
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #832
	mov	r2, #100663296
	ldr	r1, .L128+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L128+12
	ldr	r1, .L128+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #5
	ldr	r3, .L128+20
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L129:
	.align	2
.L128:
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
	ldr	r4, .L147
	ldr	r3, [r4]
	ldr	r5, .L147+4
	add	r3, r3, #1
	ldr	r2, .L147+8
	str	r3, [r4]
	mov	lr, pc
	bx	r2
	ldrh	r3, [r5]
	tst	r3, #8
	beq	.L131
	ldr	r2, .L147+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L144
.L131:
	tst	r3, #16
	beq	.L132
	ldr	r2, .L147+12
	ldrh	r2, [r2]
	tst	r2, #16
	beq	.L145
.L132:
	tst	r3, #4
	beq	.L130
	ldr	r3, .L147+12
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L146
.L130:
	pop	{r4, r5, r6, lr}
	bx	lr
.L146:
	pop	{r4, r5, r6, lr}
	b	goToHelpState
.L144:
	ldr	r0, [r4]
	ldr	r3, .L147+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L147+20
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldr	r3, .L147+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L147+28
	mov	r2, #1
	ldr	r1, .L147+32
	ldr	r0, .L147+36
	mov	lr, pc
	bx	r3
	ldrh	r3, [r5]
	b	.L131
.L145:
	bl	goToPrison
	ldrh	r3, [r5]
	b	.L132
.L148:
	.align	2
.L147:
	.word	seed
	.word	oldButtons
	.word	waitForVBlank
	.word	buttons
	.word	srand
	.word	initGame
	.word	stopSound
	.word	playSoundA
	.word	903052
	.word	gameSong
	.size	start, .-start
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
	ldr	r3, .L161
	mov	lr, pc
	bx	r3
	ldr	r3, .L161+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L161+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L150
	ldr	r2, .L161+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L159
.L150:
	tst	r3, #4
	beq	.L149
	ldr	r3, .L161+12
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L160
.L149:
	pop	{r4, lr}
	bx	lr
.L160:
	mov	r2, #67108864
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	pop	{r4, lr}
	b	goToHelpState
.L159:
	ldr	r3, .L161+16
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToGame
.L162:
	.align	2
.L161:
	.word	pauseSound
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	unpauseSound
	.size	pause, .-pause
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
	ldr	r4, .L175
	ldr	r3, .L175+4
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L164
	ldr	r2, .L175+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L173
.L164:
	tst	r3, #4
	beq	.L163
	ldr	r3, .L175+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L174
.L163:
	pop	{r4, lr}
	bx	lr
.L174:
	pop	{r4, lr}
	b	goToStart
.L173:
	ldr	r3, .L175+12
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldrh	r3, [r4]
	b	.L164
.L176:
	.align	2
.L175:
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
	ldr	r4, .L179
	strh	r2, [r5, #16]	@ movhi
	strh	r3, [r5]	@ movhi
	strh	r2, [r5, #18]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L179+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L179+8
	ldr	r3, .L179+12
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L179+16
	ldr	r2, .L179+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L179+24
	ldr	r1, .L179+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #5120
	mov	r3, #3168
	strh	r2, [r5, #8]	@ movhi
	ldr	r1, .L179+32
	mov	r2, #100663296
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L179+36
	ldr	r1, .L179+40
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L179+44
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L180:
	.align	2
.L179:
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
	ldr	r4, .L183
	strh	r2, [r5, #16]	@ movhi
	strh	r3, [r5]	@ movhi
	strh	r2, [r5, #18]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L183+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L183+8
	ldr	r3, .L183+12
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L183+16
	ldr	r2, .L183+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L183+24
	ldr	r1, .L183+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #5120
	mov	r3, #3840
	strh	r2, [r5, #8]	@ movhi
	ldr	r1, .L183+32
	mov	r2, #100663296
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L183+36
	ldr	r1, .L183+40
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L183+44
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L184:
	.align	2
.L183:
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
	ldr	r4, .L187
	strh	r2, [r5, #16]	@ movhi
	strh	r3, [r5]	@ movhi
	strh	r2, [r5, #18]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L187+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L187+8
	mov	r3, #5184
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L187+12
	ldr	r2, .L187+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L187+20
	ldr	r1, .L187+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #5120
	mov	r3, #3472
	strh	r2, [r5, #8]	@ movhi
	ldr	r1, .L187+28
	mov	r2, #100663296
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L187+32
	ldr	r1, .L187+36
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L187+40
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L188:
	.align	2
.L187:
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
	ldr	r4, .L191
	strh	r2, [r5, #16]	@ movhi
	strh	r3, [r5]	@ movhi
	strh	r2, [r5, #18]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L191+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L191+8
	ldr	r3, .L191+12
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L191+16
	ldr	r2, .L191+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L191+24
	ldr	r1, .L191+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #5120
	mov	r3, #3424
	strh	r2, [r5, #8]	@ movhi
	ldr	r1, .L191+32
	mov	r2, #100663296
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L191+36
	ldr	r1, .L191+40
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L191+44
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L192:
	.align	2
.L191:
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
	.global	goToKindergartenState
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToKindergartenState, %function
goToKindergartenState:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #0
	mov	r5, #67108864
	mov	r3, #768
	ldr	r4, .L195
	strh	r2, [r5, #16]	@ movhi
	strh	r3, [r5]	@ movhi
	strh	r2, [r5, #18]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L195+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L195+8
	mov	r3, #14400
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L195+12
	ldr	r2, .L195+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L195+20
	ldr	r1, .L195+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #6656
	ldr	r3, .L195+28
	strh	r2, [r5, #8]	@ movhi
	ldr	r1, .L195+32
	mov	r2, #100663296
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L195+36
	ldr	r1, .L195+40
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L195+44
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L196:
	.align	2
.L195:
	.word	DMANow
	.word	kindergartenPal
	.word	5252
	.word	kindergartenTiles
	.word	100679680
	.word	100704256
	.word	kindergartenMap
	.word	4304
	.word	kindergarten2Tiles
	.word	100716544
	.word	kindergarten2Map
	.word	state
	.size	goToKindergartenState, .-goToKindergartenState
	.align	2
	.global	goToArenaState
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToArenaState, %function
goToArenaState:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #0
	mov	r5, #67108864
	mov	r3, #768
	ldr	r4, .L199
	strh	r2, [r5, #16]	@ movhi
	strh	r3, [r5]	@ movhi
	strh	r2, [r5, #18]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L199+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L199+8
	ldr	r3, .L199+12
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L199+16
	ldr	r2, .L199+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L199+24
	ldr	r1, .L199+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #5120
	mov	r3, #3216
	strh	r2, [r5, #8]	@ movhi
	ldr	r1, .L199+32
	mov	r2, #100663296
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L199+36
	ldr	r1, .L199+40
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L199+44
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L200:
	.align	2
.L199:
	.word	DMANow
	.word	arenaPal
	.word	6916
	.word	6480
	.word	arenaTiles
	.word	100679680
	.word	100718592
	.word	arenaMap
	.word	arena2Tiles
	.word	100704256
	.word	arena2Map
	.word	state
	.size	goToArenaState, .-goToArenaState
	.align	2
	.global	goToDesertState
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToDesertState, %function
goToDesertState:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #0
	mov	r5, #67108864
	mov	r3, #768
	ldr	r4, .L203
	strh	r2, [r5, #16]	@ movhi
	strh	r3, [r5]	@ movhi
	strh	r2, [r5, #18]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L203+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L203+8
	mov	r3, #6976
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L203+12
	ldr	r2, .L203+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L203+20
	ldr	r1, .L203+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #5120
	mov	r3, #2608
	strh	r2, [r5, #8]	@ movhi
	ldr	r1, .L203+28
	mov	r2, #100663296
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L203+32
	ldr	r1, .L203+36
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L203+40
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L204:
	.align	2
.L203:
	.word	DMANow
	.word	desertPal
	.word	6916
	.word	desertTiles
	.word	100679680
	.word	100718592
	.word	desertMap
	.word	desert2Tiles
	.word	100704256
	.word	desert2Map
	.word	state
	.size	goToDesertState, .-goToDesertState
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
	push	{r4, r5, r6, lr}
	ldr	r3, .L273
	sub	sp, sp, #16
	mov	lr, pc
	bx	r3
	ldr	r4, .L273+4
	ldr	r3, .L273+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L273+12
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L206
	ldr	r2, .L273+16
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L263
.L206:
	tst	r3, #4
	beq	.L207
	ldr	r3, .L273+16
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L264
.L207:
	ldr	r4, .L273+20
	ldr	r2, [r4]
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L265
.L209:
	ldr	r2, [r4, #4]
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L266
.L212:
	ldr	r2, [r4, #8]
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L267
.L215:
	ldr	r2, [r4, #12]
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L268
.L218:
	ldr	r2, [r4, #16]
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L269
.L221:
	ldr	r2, [r4, #20]
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L270
.L224:
	ldr	r2, [r4, #24]
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L271
.L227:
	ldr	r2, [r4, #28]
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L272
.L205:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L272:
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	r4, .L273+24
	ldr	ip, [r2, #48]
	add	r0, r4, #48
	ldr	r3, [r4, #68]
	ldr	r2, [r4, #72]
	ldm	r0, {r0, r1}
	ldr	r5, .L273+28
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L205
	mov	r2, #68
	ldr	r3, .L273+32
	str	r2, [r4, #48]
	str	r3, [r4, #52]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	b	goToDesertState
.L271:
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	r5, .L273+24
	ldr	ip, [r2, #48]
	add	r0, r5, #48
	ldr	r3, [r5, #68]
	ldr	r2, [r5, #72]
	ldm	r0, {r0, r1}
	ldr	r6, .L273+28
	str	ip, [sp]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L227
	ldr	r2, [r4, #24]
	add	r2, r2, #48
	ldm	r2, {r2, r3}
	add	r3, r3, #16
	str	r3, [r5, #52]
	str	r2, [r5, #48]
	bl	goToArenaState
	b	.L227
.L270:
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	r5, .L273+24
	ldr	ip, [r2, #48]
	add	r0, r5, #48
	ldr	r3, [r5, #68]
	ldr	r2, [r5, #72]
	ldm	r0, {r0, r1}
	ldr	r6, .L273+28
	str	ip, [sp]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L224
	ldr	r2, [r4, #20]
	add	r2, r2, #48
	ldm	r2, {r2, r3}
	sub	r3, r3, #20
	str	r3, [r5, #52]
	str	r2, [r5, #48]
	bl	goToKindergartenState
	b	.L224
.L269:
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	r5, .L273+24
	ldr	ip, [r2, #48]
	add	r0, r5, #48
	ldr	r3, [r5, #68]
	ldr	r2, [r5, #72]
	ldm	r0, {r0, r1}
	ldr	r6, .L273+28
	str	ip, [sp]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L221
	mov	r2, #30
	mov	r3, #620
	str	r2, [r5, #48]
	str	r3, [r5, #52]
	bl	goToMIState
	b	.L221
.L268:
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	r5, .L273+24
	ldr	ip, [r2, #48]
	add	r0, r5, #48
	ldr	r3, [r5, #68]
	ldr	r2, [r5, #72]
	ldm	r0, {r0, r1}
	ldr	r6, .L273+28
	str	ip, [sp]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L218
	mov	r2, #95
	ldr	r3, .L273+36
	str	r2, [r5, #48]
	str	r3, [r5, #52]
	bl	goToGardenState
	b	.L218
.L267:
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	r5, .L273+24
	ldr	ip, [r2, #48]
	add	r0, r5, #48
	ldr	r3, [r5, #68]
	ldr	r2, [r5, #72]
	ldm	r0, {r0, r1}
	ldr	r6, .L273+28
	str	ip, [sp]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L215
	mov	r2, #90
	mov	r3, #380
	str	r2, [r5, #48]
	str	r3, [r5, #52]
	bl	goToJdbState
	b	.L215
.L266:
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	r5, .L273+24
	ldr	ip, [r2, #48]
	add	r0, r5, #48
	ldr	r3, [r5, #68]
	ldr	r2, [r5, #72]
	ldm	r0, {r0, r1}
	ldr	r6, .L273+28
	str	ip, [sp]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L212
	mov	r2, #50
	mov	r3, #125
	str	r2, [r5, #48]
	str	r3, [r5, #52]
	bl	goToZooState
	b	.L212
.L265:
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	r0, .L273+24
	ldr	ip, [r2, #48]
	ldr	r3, [r0, #68]
	ldr	r2, [r0, #72]
	add	r0, r0, #48
	ldm	r0, {r0, r1}
	ldr	r5, .L273+28
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L209
	bl	goToWinState
	b	.L209
.L264:
	ldr	r3, .L273+40
	mov	lr, pc
	bx	r3
	bl	goToHelpState
	b	.L207
.L263:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L206
.L274:
	.align	2
.L273:
	.word	updateGame
	.word	oldButtons
	.word	waitForVBlank
	.word	drawGame
	.word	buttons
	.word	stars
	.word	steven
	.word	collision
	.word	985
	.word	535
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
	push	{r4, r7, fp, lr}
	ldr	r3, .L292
	mov	lr, pc
	bx	r3
	ldr	r6, .L292+4
	ldr	r8, .L292+8
	ldr	r5, .L292+12
	ldr	fp, .L292+16
	ldr	r10, .L292+20
	ldr	r9, .L292+24
	ldr	r7, .L292+28
	ldr	r4, .L292+32
.L276:
	ldr	r2, [r6]
	ldrh	r3, [r8]
.L277:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r8]	@ movhi
	cmp	r2, #10
	ldrls	pc, [pc, r2, asl #2]
	b	.L277
.L279:
	.word	.L278
	.word	.L280
	.word	.L281
	.word	.L282
	.word	.L282
	.word	.L283
	.word	.L284
	.word	.L285
	.word	.L286
	.word	.L287
	.word	.L288
.L282:
	mov	lr, pc
	bx	r7
	b	.L276
.L281:
	mov	lr, pc
	bx	r9
	b	.L276
.L280:
	mov	lr, pc
	bx	r10
	b	.L276
.L278:
	mov	lr, pc
	bx	fp
	b	.L276
.L287:
	ldr	r3, .L292+36
	mov	lr, pc
	bx	r3
	b	.L276
.L286:
	ldr	r3, .L292+40
	mov	lr, pc
	bx	r3
	b	.L276
.L285:
	ldr	r3, .L292+44
	mov	lr, pc
	bx	r3
	b	.L276
.L284:
	ldr	r3, .L292+48
	mov	lr, pc
	bx	r3
	b	.L276
.L283:
	ldr	r3, .L292+52
	mov	lr, pc
	bx	r3
	b	.L276
.L288:
	ldr	r3, .L292+56
	mov	lr, pc
	bx	r3
	b	.L276
.L293:
	.align	2
.L292:
	.word	initialize
	.word	state
	.word	buttons
	.word	oldButtons
	.word	start
	.word	game
	.word	pause
	.word	winState
	.word	67109120
	.word	swimState
	.word	foundState
	.word	sleepState
	.word	prisonState
	.word	helpState
	.word	fastState
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
