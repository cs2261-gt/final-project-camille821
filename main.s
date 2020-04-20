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
	mov	r2, #67108864
	mov	r1, #5248
	push	{r4, lr}
	ldr	r3, .L84
	strh	r1, [r2, #8]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L84+4
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToStart
.L85:
	.align	2
.L84:
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
	ldr	r4, .L116
	ldr	r3, [r4]
	ldr	r5, .L116+4
	add	r3, r3, #1
	ldr	r2, .L116+8
	str	r3, [r4]
	mov	lr, pc
	bx	r2
	ldrh	r3, [r5]
	tst	r3, #8
	beq	.L105
	ldr	r2, .L116+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L114
.L105:
	tst	r3, #16
	beq	.L104
	ldr	r3, .L116+12
	ldrh	r3, [r3]
	tst	r3, #16
	beq	.L115
.L104:
	pop	{r4, r5, r6, lr}
	bx	lr
.L115:
	pop	{r4, r5, r6, lr}
	b	goToPrison
.L114:
	ldr	r0, [r4]
	ldr	r3, .L116+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L116+20
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldr	r3, .L116+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L116+28
	mov	r2, #1
	ldr	r1, .L116+32
	ldr	r0, .L116+36
	mov	lr, pc
	bx	r3
	ldrh	r3, [r5]
	b	.L105
.L117:
	.align	2
.L116:
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
	ldr	r4, .L120
	strh	r1, [r2, #18]	@ movhi
	strh	r3, [r2]	@ movhi
	strh	r0, [r2, #8]	@ movhi
	ldr	r1, .L120+4
	mov	r2, #83886080
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #512
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
	ldr	r4, .L124
	strh	r1, [r2, #18]	@ movhi
	strh	r3, [r2]	@ movhi
	strh	r0, [r2, #8]	@ movhi
	ldr	r1, .L124+4
	mov	r2, #83886080
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1568
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
	mov	r2, #3
	ldr	r3, .L124+20
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L125:
	.align	2
.L124:
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
	ldr	r3, .L133
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L133+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L126
	ldr	r3, .L133+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L132
.L126:
	pop	{r4, lr}
	bx	lr
.L132:
	pop	{r4, lr}
	b	goToStart
.L134:
	.align	2
.L133:
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
	ldr	r4, .L137
	strh	r1, [r2, #18]	@ movhi
	strh	r3, [r2]	@ movhi
	strh	r0, [r2, #8]	@ movhi
	ldr	r1, .L137+4
	mov	r2, #83886080
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #3040
	mov	r2, #100663296
	ldr	r1, .L137+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L137+12
	ldr	r1, .L137+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L137+20
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L138:
	.align	2
.L137:
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
	ldr	r4, .L142
	strh	r1, [r2, #18]	@ movhi
	strh	r3, [r2]	@ movhi
	strh	r0, [r2, #8]	@ movhi
	ldr	r1, .L142+4
	mov	r2, #83886080
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #832
	mov	r2, #100663296
	ldr	r1, .L142+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L142+12
	ldr	r1, .L142+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #5
	ldr	r3, .L142+20
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L143:
	.align	2
.L142:
	.word	DMANow
	.word	helpPal
	.word	helpTiles
	.word	100704256
	.word	helpMap
	.word	state
	.size	goToHelpState, .-goToHelpState
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
	ldr	r3, .L156
	mov	lr, pc
	bx	r3
	ldr	r3, .L156+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L156+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L145
	ldr	r2, .L156+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L154
.L145:
	tst	r3, #4
	beq	.L144
	ldr	r3, .L156+12
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L155
.L144:
	pop	{r4, lr}
	bx	lr
.L155:
	mov	r2, #67108864
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	pop	{r4, lr}
	b	goToHelpState
.L154:
	ldr	r3, .L156+16
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToGame
.L157:
	.align	2
.L156:
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
	ldr	r4, .L170
	ldr	r3, .L170+4
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L159
	ldr	r2, .L170+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L168
.L159:
	tst	r3, #4
	beq	.L158
	ldr	r3, .L170+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L169
.L158:
	pop	{r4, lr}
	bx	lr
.L169:
	pop	{r4, lr}
	b	goToStart
.L168:
	ldr	r3, .L170+12
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldrh	r3, [r4]
	b	.L159
.L171:
	.align	2
.L170:
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
	ldr	r4, .L174
	strh	r2, [r5, #16]	@ movhi
	strh	r3, [r5]	@ movhi
	strh	r2, [r5, #18]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L174+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L174+8
	ldr	r3, .L174+12
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L174+16
	ldr	r2, .L174+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L174+24
	ldr	r1, .L174+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #5120
	mov	r3, #3168
	strh	r2, [r5, #8]	@ movhi
	ldr	r1, .L174+32
	mov	r2, #100663296
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L174+36
	ldr	r1, .L174+40
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L174+44
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L175:
	.align	2
.L174:
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
	ldr	r4, .L178
	strh	r2, [r5, #16]	@ movhi
	strh	r3, [r5]	@ movhi
	strh	r2, [r5, #18]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L178+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L178+8
	ldr	r3, .L178+12
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L178+16
	ldr	r2, .L178+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L178+24
	ldr	r1, .L178+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #5120
	mov	r3, #3840
	strh	r2, [r5, #8]	@ movhi
	ldr	r1, .L178+32
	mov	r2, #100663296
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L178+36
	ldr	r1, .L178+40
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L178+44
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L179:
	.align	2
.L178:
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
	ldr	r4, .L182
	strh	r2, [r5, #16]	@ movhi
	strh	r3, [r5]	@ movhi
	strh	r2, [r5, #18]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L182+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L182+8
	mov	r3, #5184
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L182+12
	ldr	r2, .L182+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L182+20
	ldr	r1, .L182+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #5120
	mov	r3, #3472
	strh	r2, [r5, #8]	@ movhi
	ldr	r1, .L182+28
	mov	r2, #100663296
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L182+32
	ldr	r1, .L182+36
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L182+40
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L183:
	.align	2
.L182:
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
	ldr	r4, .L186
	strh	r2, [r5, #16]	@ movhi
	strh	r3, [r5]	@ movhi
	strh	r2, [r5, #18]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L186+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L186+8
	ldr	r3, .L186+12
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L186+16
	ldr	r2, .L186+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L186+24
	ldr	r1, .L186+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #5120
	mov	r3, #3424
	strh	r2, [r5, #8]	@ movhi
	ldr	r1, .L186+32
	mov	r2, #100663296
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L186+36
	ldr	r1, .L186+40
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L186+44
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L187:
	.align	2
.L186:
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
	ldr	r4, .L190
	strh	r2, [r5, #16]	@ movhi
	strh	r3, [r5]	@ movhi
	strh	r2, [r5, #18]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L190+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L190+8
	mov	r3, #14400
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L190+12
	ldr	r2, .L190+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L190+20
	ldr	r1, .L190+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #6656
	ldr	r3, .L190+28
	strh	r2, [r5, #8]	@ movhi
	ldr	r1, .L190+32
	mov	r2, #100663296
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L190+36
	ldr	r1, .L190+40
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L190+44
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L191:
	.align	2
.L190:
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
	ldr	r4, .L194
	strh	r2, [r5, #16]	@ movhi
	strh	r3, [r5]	@ movhi
	strh	r2, [r5, #18]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L194+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L194+8
	ldr	r3, .L194+12
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L194+16
	ldr	r2, .L194+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L194+24
	ldr	r1, .L194+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #5120
	mov	r3, #3216
	strh	r2, [r5, #8]	@ movhi
	ldr	r1, .L194+32
	mov	r2, #100663296
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L194+36
	ldr	r1, .L194+40
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L194+44
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L195:
	.align	2
.L194:
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
	ldr	r4, .L198
	strh	r2, [r5, #16]	@ movhi
	strh	r3, [r5]	@ movhi
	strh	r2, [r5, #18]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L198+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L198+8
	mov	r3, #6976
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L198+12
	ldr	r2, .L198+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L198+20
	ldr	r1, .L198+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #5120
	mov	r3, #2608
	strh	r2, [r5, #8]	@ movhi
	ldr	r1, .L198+28
	mov	r2, #100663296
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L198+32
	ldr	r1, .L198+36
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L198+40
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L199:
	.align	2
.L198:
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
	ldr	r3, .L268
	sub	sp, sp, #16
	mov	lr, pc
	bx	r3
	ldr	r4, .L268+4
	ldr	r3, .L268+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L268+12
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L201
	ldr	r2, .L268+16
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L258
.L201:
	tst	r3, #4
	beq	.L202
	ldr	r3, .L268+16
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L259
.L202:
	ldr	r4, .L268+20
	ldr	r2, [r4]
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L260
.L204:
	ldr	r2, [r4, #4]
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L261
.L207:
	ldr	r2, [r4, #8]
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L262
.L210:
	ldr	r2, [r4, #12]
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L263
.L213:
	ldr	r2, [r4, #16]
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L264
.L216:
	ldr	r2, [r4, #20]
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L265
.L219:
	ldr	r2, [r4, #24]
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L266
.L222:
	ldr	r2, [r4, #28]
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L267
.L200:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L267:
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	r4, .L268+24
	ldr	ip, [r2, #48]
	add	r0, r4, #48
	ldr	r3, [r4, #68]
	ldr	r2, [r4, #72]
	ldm	r0, {r0, r1}
	ldr	r5, .L268+28
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L200
	mov	r2, #68
	ldr	r3, .L268+32
	str	r2, [r4, #48]
	str	r3, [r4, #52]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	b	goToDesertState
.L266:
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	r5, .L268+24
	ldr	ip, [r2, #48]
	add	r0, r5, #48
	ldr	r3, [r5, #68]
	ldr	r2, [r5, #72]
	ldm	r0, {r0, r1}
	ldr	r6, .L268+28
	str	ip, [sp]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L222
	ldr	r2, [r4, #24]
	add	r2, r2, #48
	ldm	r2, {r2, r3}
	add	r3, r3, #16
	str	r3, [r5, #52]
	str	r2, [r5, #48]
	bl	goToArenaState
	b	.L222
.L265:
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	r5, .L268+24
	ldr	ip, [r2, #48]
	add	r0, r5, #48
	ldr	r3, [r5, #68]
	ldr	r2, [r5, #72]
	ldm	r0, {r0, r1}
	ldr	r6, .L268+28
	str	ip, [sp]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L219
	ldr	r2, [r4, #20]
	add	r2, r2, #48
	ldm	r2, {r2, r3}
	sub	r3, r3, #20
	str	r3, [r5, #52]
	str	r2, [r5, #48]
	bl	goToKindergartenState
	b	.L219
.L264:
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	r5, .L268+24
	ldr	ip, [r2, #48]
	add	r0, r5, #48
	ldr	r3, [r5, #68]
	ldr	r2, [r5, #72]
	ldm	r0, {r0, r1}
	ldr	r6, .L268+28
	str	ip, [sp]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L216
	mov	r2, #30
	mov	r3, #620
	str	r2, [r5, #48]
	str	r3, [r5, #52]
	bl	goToMIState
	b	.L216
.L263:
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	r5, .L268+24
	ldr	ip, [r2, #48]
	add	r0, r5, #48
	ldr	r3, [r5, #68]
	ldr	r2, [r5, #72]
	ldm	r0, {r0, r1}
	ldr	r6, .L268+28
	str	ip, [sp]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L213
	mov	r2, #95
	ldr	r3, .L268+36
	str	r2, [r5, #48]
	str	r3, [r5, #52]
	bl	goToGardenState
	b	.L213
.L262:
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	r5, .L268+24
	ldr	ip, [r2, #48]
	add	r0, r5, #48
	ldr	r3, [r5, #68]
	ldr	r2, [r5, #72]
	ldm	r0, {r0, r1}
	ldr	r6, .L268+28
	str	ip, [sp]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L210
	mov	r2, #90
	mov	r3, #380
	str	r2, [r5, #48]
	str	r3, [r5, #52]
	bl	goToJdbState
	b	.L210
.L261:
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	r5, .L268+24
	ldr	ip, [r2, #48]
	add	r0, r5, #48
	ldr	r3, [r5, #68]
	ldr	r2, [r5, #72]
	ldm	r0, {r0, r1}
	ldr	r6, .L268+28
	str	ip, [sp]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L207
	mov	r2, #50
	mov	r3, #125
	str	r2, [r5, #48]
	str	r3, [r5, #52]
	bl	goToZooState
	b	.L207
.L260:
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	r0, .L268+24
	ldr	ip, [r2, #48]
	ldr	r3, [r0, #68]
	ldr	r2, [r0, #72]
	add	r0, r0, #48
	ldm	r0, {r0, r1}
	ldr	r5, .L268+28
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L204
	bl	goToWinState
	b	.L204
.L259:
	ldr	r3, .L268+40
	mov	lr, pc
	bx	r3
	bl	goToHelpState
	b	.L202
.L258:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L201
.L269:
	.align	2
.L268:
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
	mov	r2, #67108864
	mov	r1, #5248
	push	{r4, r7, fp, lr}
	ldr	r3, .L287
	strh	r1, [r2, #8]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L287+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L287+8
	mov	lr, pc
	bx	r3
	ldr	r6, .L287+12
	ldr	r8, .L287+16
	ldr	r5, .L287+20
	ldr	fp, .L287+24
	ldr	r10, .L287+28
	ldr	r9, .L287+32
	ldr	r7, .L287+36
	ldr	r4, .L287+40
.L271:
	ldr	r2, [r6]
	ldrh	r3, [r8]
.L272:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r8]	@ movhi
	cmp	r2, #10
	ldrls	pc, [pc, r2, asl #2]
	b	.L272
.L274:
	.word	.L273
	.word	.L275
	.word	.L276
	.word	.L277
	.word	.L277
	.word	.L278
	.word	.L279
	.word	.L280
	.word	.L281
	.word	.L282
	.word	.L283
.L277:
	mov	lr, pc
	bx	r7
	b	.L271
.L276:
	mov	lr, pc
	bx	r9
	b	.L271
.L275:
	mov	lr, pc
	bx	r10
	b	.L271
.L273:
	mov	lr, pc
	bx	fp
	b	.L271
.L282:
	ldr	r3, .L287+44
	mov	lr, pc
	bx	r3
	b	.L271
.L281:
	ldr	r3, .L287+48
	mov	lr, pc
	bx	r3
	b	.L271
.L280:
	ldr	r3, .L287+52
	mov	lr, pc
	bx	r3
	b	.L271
.L279:
	ldr	r3, .L287+56
	mov	lr, pc
	bx	r3
	b	.L271
.L278:
	ldr	r3, .L287+60
	mov	lr, pc
	bx	r3
	b	.L271
.L283:
	ldr	r3, .L287+64
	mov	lr, pc
	bx	r3
	b	.L271
.L288:
	.align	2
.L287:
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
