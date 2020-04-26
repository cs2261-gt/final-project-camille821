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
	mov	r5, #67108864
	mov	r4, #0
	ldr	r3, .L8
	strh	r4, [r5, #16]	@ movhi
	strh	r4, [r5, #18]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #4352
	ldr	r6, .L8+4
	strh	r2, [r5]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L8+8
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r2, .L8+12
	mov	r3, #4048
	strh	r2, [r5, #8]	@ movhi
	ldr	r1, .L8+16
	ldr	r2, .L8+20
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L8+24
	ldr	r1, .L8+28
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r5, #87
	mov	lr, #57
	mov	r2, #64
	mov	ip, #3
	mov	r0, #7
	ldr	r3, .L8+32
	ldr	r1, .L8+36
	str	r4, [r3, #76]
	str	r4, [r3, #88]
	str	r5, [r3, #44]
	str	lr, [r3, #40]
	str	ip, [r3, #92]
	str	r2, [r3, #68]
	str	r2, [r3, #72]
	str	r0, [r1]
	pop	{r4, r5, r6, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	hideSprites
	.word	DMANow
	.word	sleepPal
	.word	6916
	.word	sleepTiles
	.word	100679680
	.word	100718592
	.word	sleepMap
	.word	sleep
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
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, .L29
	ldrh	r3, [r4]
	tst	r3, #16
	beq	.L15
	ldr	r2, .L29+4
	ldrh	r2, [r2]
	tst	r2, #16
	beq	.L27
.L15:
	tst	r3, #32
	beq	.L16
	ldr	r3, .L29+4
	ldrh	r3, [r3]
	tst	r3, #32
	beq	.L28
.L16:
	ldr	r4, .L29+8
	mov	lr, pc
	bx	r4
	ldr	r1, .L29+12
	ldr	r0, [r1, #44]
	mvn	r0, r0, lsl #18
	mvn	r0, r0, lsr #18
	ldr	r2, [r1, #76]
	ldr	r3, .L29+16
	smull	r6, r7, r2, r3
	ldr	ip, [r1, #88]
	add	lr, r2, r7
	asr	r3, r2, #31
	rsb	r3, r3, lr, asr #4
	ldr	lr, .L29+20
	rsb	r3, r3, r3, lsl #4
	add	ip, ip, #1
	ldr	r5, [r1, #40]
	strh	r0, [lr, #2]	@ movhi
	subs	r3, r2, r3, lsl #1
	lsl	r0, ip, #3
	strh	r5, [lr]	@ movhi
	strh	r0, [lr, #4]	@ movhi
	bne	.L17
	ldr	r0, [r1, #92]
	cmp	ip, r0
	str	ip, [r1, #88]
	movge	ip, r3
	sub	r0, r0, #1
	strge	r3, [r1, #88]
	cmp	r0, ip
	moveq	r0, #27
	moveq	r3, #47
	movne	r0, #57
	movne	r3, #87
	str	r0, [r1, #40]
	str	r3, [r1, #44]
.L17:
	add	r2, r2, #1
	str	r2, [r1, #76]
	mov	lr, pc
	bx	r4
	ldr	r4, .L29+24
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L29+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L28:
	bl	goToPrison
	b	.L16
.L27:
	bl	goToFound
	ldrh	r3, [r4]
	b	.L15
.L30:
	.align	2
.L29:
	.word	oldButtons
	.word	buttons
	.word	waitForVBlank
	.word	sleep
	.word	-2004318071
	.word	shadowOAM
	.word	DMANow
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
	mov	r5, #67108864
	mov	r4, #0
	ldr	r3, .L33
	strh	r4, [r5, #16]	@ movhi
	strh	r4, [r5, #18]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #4352
	ldr	r6, .L33+4
	strh	r2, [r5]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L33+8
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r2, .L33+12
	mov	r3, #4864
	strh	r2, [r5, #8]	@ movhi
	ldr	r1, .L33+16
	ldr	r2, .L33+20
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L33+24
	ldr	r1, .L33+28
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r5, #152
	mov	lr, #84
	mov	r2, #64
	mov	ip, #2
	mov	r0, #9
	ldr	r3, .L33+32
	ldr	r1, .L33+36
	str	r4, [r3, #76]
	str	r4, [r3, #88]
	str	r5, [r3, #44]
	str	lr, [r3, #40]
	str	ip, [r3, #92]
	str	r2, [r3, #68]
	str	r2, [r3, #72]
	str	r0, [r1]
	pop	{r4, r5, r6, lr}
	bx	lr
.L34:
	.align	2
.L33:
	.word	hideSprites
	.word	DMANow
	.word	swimPal
	.word	6916
	.word	swimTiles
	.word	100679680
	.word	100718592
	.word	swimMap
	.word	swim
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
	ldr	r4, .L47
	ldrh	r3, [r4]
	tst	r3, #16
	beq	.L36
	ldr	r2, .L47+4
	ldrh	r2, [r2]
	tst	r2, #16
	beq	.L45
.L36:
	tst	r3, #32
	beq	.L35
	ldr	r3, .L47+4
	ldrh	r3, [r3]
	tst	r3, #32
	beq	.L46
.L35:
	pop	{r4, lr}
	bx	lr
.L46:
	pop	{r4, lr}
	b	goToSleep
.L45:
	bl	goToSwim
	ldrh	r3, [r4]
	b	.L36
.L48:
	.align	2
.L47:
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
	ldr	r5, .L51
	strh	r3, [r4]	@ movhi
	strh	r2, [r4, #18]	@ movhi
	ldr	r1, .L51+4
	mov	r2, #83886080
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r2, .L51+8
	ldr	r3, .L51+12
	strh	r2, [r4, #8]	@ movhi
	ldr	r1, .L51+16
	ldr	r2, .L51+20
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L51+24
	ldr	r1, .L51+28
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r2, #10
	ldr	r3, .L51+32
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L52:
	.align	2
.L51:
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
	push	{r4, r5, r6, lr}
	ldr	r4, .L68
	ldrh	r3, [r4]
	tst	r3, #16
	beq	.L54
	ldr	r2, .L68+4
	ldrh	r2, [r2]
	tst	r2, #16
	beq	.L66
.L54:
	tst	r3, #32
	beq	.L55
	ldr	r3, .L68+4
	ldrh	r3, [r3]
	tst	r3, #32
	beq	.L67
.L55:
	ldr	r1, .L68+8
	ldr	r0, [r1, #44]
	mvn	r0, r0, lsl #18
	mvn	r0, r0, lsr #18
	ldr	r2, [r1, #76]
	ldr	r3, .L68+12
	smull	r4, r5, r2, r3
	asr	r3, r2, #31
	add	lr, r2, r5
	rsb	r3, r3, lr, asr #4
	ldr	ip, [r1, #88]
	ldr	lr, .L68+16
	rsb	r3, r3, r3, lsl #4
	ldr	r4, [r1, #40]
	strh	r0, [lr, #2]	@ movhi
	add	r0, ip, #48
	lsl	r0, r0, #3
	subs	r3, r2, r3, lsl #1
	strh	r4, [lr]	@ movhi
	strh	r0, [lr, #4]	@ movhi
	bne	.L57
	ldr	r0, [r1, #92]
	add	ip, ip, #1
	cmp	ip, r0
	str	ip, [r1, #88]
	strge	r3, [r1, #88]
.L57:
	add	r2, r2, #1
	ldr	r3, .L68+20
	str	r2, [r1, #76]
	ldr	r4, .L68+24
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L68+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L67:
	bl	goToFound
	b	.L55
.L66:
	bl	goToFast
	ldrh	r3, [r4]
	b	.L54
.L69:
	.align	2
.L68:
	.word	oldButtons
	.word	buttons
	.word	swim
	.word	-2004318071
	.word	shadowOAM
	.word	waitForVBlank
	.word	DMANow
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
	mov	r1, #5248
	mov	r4, #0
	mov	r5, #67108864
	ldr	r2, .L72
	ldr	r6, .L72+4
	str	r4, [r2]
	mov	r3, #256
	strh	r1, [r5, #8]	@ movhi
	mov	r2, #83886080
	strh	r4, [r5, #16]	@ movhi
	ldr	r1, .L72+8
	mov	r0, #3
	strh	r4, [r5, #18]	@ movhi
	mov	lr, pc
	bx	r6
	ldr	r3, .L72+12
	mov	r2, #100663296
	ldr	r1, .L72+16
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r2, .L72+20
	ldr	r1, .L72+24
	mov	r0, #3
	mov	r3, #1024
	mov	lr, pc
	bx	r6
	ldr	r3, .L72+28
	mov	lr, pc
	bx	r3
	mov	r3, #256
	mov	r2, #1
	strh	r3, [r5]	@ movhi
	ldr	r1, .L72+32
	ldr	r3, .L72+36
	ldr	r0, .L72+40
	mov	lr, pc
	bx	r3
	ldr	r2, .L72+44
	ldr	r3, .L72+48
	str	r4, [r2]
	str	r4, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L73:
	.align	2
.L72:
	.word	helpFirst
	.word	DMANow
	.word	startPal
	.word	16992
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
	ldr	r4, .L86
	ldrh	r3, [r4]
	tst	r3, #32
	beq	.L75
	ldr	r2, .L86+4
	ldrh	r2, [r2]
	tst	r2, #32
	beq	.L84
.L75:
	tst	r3, #16
	beq	.L74
	ldr	r3, .L86+4
	ldrh	r3, [r3]
	tst	r3, #16
	beq	.L85
.L74:
	pop	{r4, lr}
	bx	lr
.L85:
	pop	{r4, lr}
	b	goToSleep
.L84:
	bl	goToStart
	ldrh	r3, [r4]
	b	.L75
.L87:
	.align	2
.L86:
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
	mov	r3, #16384
	strh	r1, [r2, #8]	@ movhi
	ldr	r4, .L90
	ldr	r2, .L90+4
	ldr	r1, .L90+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L90+12
	ldr	r1, .L90+16
	mov	r0, #3
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L90+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L90+24
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToStart
.L91:
	.align	2
.L90:
	.word	DMANow
	.word	100728832
	.word	spritesheet1Tiles
	.word	83886592
	.word	spritesheet1Pal
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
	ldr	r3, .L94
	ldr	r3, [r3]
	lsl	r3, r3, #24
	orr	r3, r3, #1073741824
	orr	r3, r3, #8388608
	lsr	r3, r3, #16
	push	{r4, lr}
	mov	r0, #3
	ldr	r4, .L94+4
	strh	r1, [r2]	@ movhi
	strh	r3, [r2, #8]	@ movhi
	ldr	r1, .L94+8
	mov	r3, #256
	mov	r2, #83886080
	mov	lr, pc
	bx	r4
	mov	r3, #23808
	mov	r2, #100663296
	ldr	r1, .L94+12
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	ldr	r2, .L94+16
	ldr	r1, .L94+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #256
	ldr	r2, .L94+24
	ldr	r1, .L94+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L94+32
	ldr	r1, .L94+36
	mov	r0, #3
	mov	r3, #16384
	mov	lr, pc
	bx	r4
	ldr	r3, .L94+40
	mov	lr, pc
	bx	r3
	ldr	r3, .L94+44
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L94+48
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L94+52
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L95:
	.align	2
.L94:
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
	ldr	r4, .L108
	ldr	r3, [r4]
	ldr	r5, .L108+4
	add	r3, r3, #1
	ldr	r2, .L108+8
	str	r3, [r4]
	mov	lr, pc
	bx	r2
	ldrh	r3, [r5]
	tst	r3, #32
	beq	.L97
	ldr	r2, .L108+12
	ldrh	r2, [r2]
	tst	r2, #32
	beq	.L106
.L97:
	tst	r3, #8
	beq	.L96
	ldr	r3, .L108+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L107
.L96:
	pop	{r4, r5, r6, lr}
	bx	lr
.L107:
	ldr	r0, [r4]
	ldr	r3, .L108+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L108+20
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldr	r3, .L108+24
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r1, .L108+28
	ldr	r0, .L108+32
	ldr	r3, .L108+36
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	bx	lr
.L106:
	bl	goToSwim
	ldrh	r3, [r5]
	b	.L97
.L109:
	.align	2
.L108:
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
	push	{r4, r5, r6, lr}
	mov	r5, #67108864
	mov	r4, #0
	ldr	r3, .L112
	strh	r4, [r5, #16]	@ movhi
	strh	r4, [r5, #18]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #4352
	ldr	r6, .L112+4
	strh	r2, [r5]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L112+8
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r2, .L112+12
	ldr	r3, .L112+16
	strh	r2, [r5, #8]	@ movhi
	ldr	r1, .L112+20
	ldr	r2, .L112+24
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L112+28
	ldr	r1, .L112+32
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r5, #152
	mov	lr, #84
	mov	r2, #64
	mov	ip, #2
	mov	r0, #11
	ldr	r3, .L112+36
	ldr	r1, .L112+40
	str	r4, [r3, #76]
	str	r4, [r3, #88]
	str	r5, [r3, #44]
	str	lr, [r3, #40]
	str	ip, [r3, #92]
	str	r2, [r3, #68]
	str	r2, [r3, #72]
	str	r0, [r1]
	pop	{r4, r5, r6, lr}
	bx	lr
.L113:
	.align	2
.L112:
	.word	hideSprites
	.word	DMANow
	.word	pauseswimPal
	.word	7044
	.word	10336
	.word	pauseswimTiles
	.word	100679680
	.word	100718592
	.word	pauseswimMap
	.word	swim
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
	ldr	r4, .L116
	strh	r1, [r2, #18]	@ movhi
	strh	r3, [r2]	@ movhi
	strh	r0, [r2, #8]	@ movhi
	ldr	r1, .L116+4
	mov	r2, #83886080
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #16320
	mov	r2, #100663296
	ldr	r1, .L116+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L116+12
	ldr	r1, .L116+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L116+20
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L117:
	.align	2
.L116:
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
	ldr	r3, .L125
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L125+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L118
	ldr	r3, .L125+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L124
.L118:
	pop	{r4, lr}
	bx	lr
.L124:
	pop	{r4, lr}
	b	goToStart
.L126:
	.align	2
.L125:
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
	ldr	r4, .L129
	strh	r1, [r2, #18]	@ movhi
	strh	r3, [r2]	@ movhi
	strh	r0, [r2, #8]	@ movhi
	ldr	r1, .L129+4
	mov	r2, #83886080
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #16000
	mov	r2, #100663296
	ldr	r1, .L129+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L129+12
	ldr	r1, .L129+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L129+20
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L130:
	.align	2
.L129:
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
	ldr	r4, .L134
	strh	r1, [r2, #18]	@ movhi
	strh	r3, [r2]	@ movhi
	strh	r0, [r2, #8]	@ movhi
	ldr	r1, .L134+4
	mov	r2, #83886080
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L134+8
	mov	r2, #100663296
	ldr	r1, .L134+12
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L134+16
	ldr	r1, .L134+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #5
	ldr	r3, .L134+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L135:
	.align	2
.L134:
	.word	DMANow
	.word	helpPal
	.word	16544
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
	ldr	r4, .L153
	ldr	r3, [r4]
	ldr	r5, .L153+4
	add	r3, r3, #1
	ldr	r2, .L153+8
	str	r3, [r4]
	mov	lr, pc
	bx	r2
	ldrh	r3, [r5]
	tst	r3, #8
	beq	.L137
	ldr	r2, .L153+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L150
.L137:
	tst	r3, #16
	beq	.L138
	ldr	r2, .L153+12
	ldrh	r2, [r2]
	tst	r2, #16
	beq	.L151
.L138:
	tst	r3, #4
	beq	.L139
	ldr	r3, .L153+12
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L152
.L139:
	mov	r2, #0
	ldr	r3, .L153+16
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L151:
	bl	goToPrison
	ldrh	r3, [r5]
	b	.L138
.L150:
	ldr	r0, [r4]
	ldr	r3, .L153+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L153+24
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldr	r3, .L153+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L153+32
	mov	r2, #1
	ldr	r1, .L153+36
	ldr	r0, .L153+40
	mov	lr, pc
	bx	r3
	ldrh	r3, [r5]
	b	.L137
.L152:
	mov	r2, #1
	ldr	r3, .L153+16
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	b	goToHelpState
.L154:
	.align	2
.L153:
	.word	seed
	.word	oldButtons
	.word	waitForVBlank
	.word	buttons
	.word	helpFirst
	.word	srand
	.word	initGame
	.word	stopSound
	.word	playSoundA
	.word	903042
	.word	gameSong
	.size	start, .-start
	.align	2
	.global	swimPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	swimPause, %function
swimPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r3, .L170
	ldr	r4, .L170+4
	mov	lr, pc
	bx	r3
	mov	lr, pc
	bx	r4
	ldr	r3, .L170+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L156
	ldr	r2, .L170+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L168
.L156:
	tst	r3, #4
	bne	.L169
.L157:
	ldr	r1, .L170+16
	ldr	r0, [r1, #44]
	mvn	r0, r0, lsl #18
	mvn	r0, r0, lsr #18
	ldr	r2, [r1, #76]
	ldr	r3, .L170+20
	smull	r6, r7, r2, r3
	asr	r3, r2, #31
	add	lr, r2, r7
	rsb	r3, r3, lr, asr #4
	ldr	ip, [r1, #88]
	ldr	lr, .L170+24
	rsb	r3, r3, r3, lsl #4
	ldr	r5, [r1, #40]
	strh	r0, [lr, #2]	@ movhi
	add	r0, ip, #48
	lsl	r0, r0, #3
	subs	r3, r2, r3, lsl #1
	strh	r5, [lr]	@ movhi
	strh	r0, [lr, #4]	@ movhi
	bne	.L159
	ldr	r0, [r1, #92]
	add	ip, ip, #1
	cmp	ip, r0
	str	ip, [r1, #88]
	strge	r3, [r1, #88]
.L159:
	add	r2, r2, #1
	str	r2, [r1, #76]
	mov	lr, pc
	bx	r4
	ldr	r4, .L170+28
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L170+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L169:
	ldr	r3, .L170+12
	ldrh	r3, [r3]
	tst	r3, #4
	bne	.L157
	mov	r2, #67108864
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	bl	goToHelpState
	b	.L157
.L168:
	ldr	r3, .L170+32
	mov	lr, pc
	bx	r3
	bl	goToGame
	b	.L157
.L171:
	.align	2
.L170:
	.word	pauseSound
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	swim
	.word	-2004318071
	.word	shadowOAM
	.word	DMANow
	.word	unpauseSound
	.size	swimPause, .-swimPause
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
	ldr	r3, .L184
	mov	lr, pc
	bx	r3
	ldr	r3, .L184+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L184+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L173
	ldr	r2, .L184+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L182
.L173:
	tst	r3, #4
	beq	.L172
	ldr	r3, .L184+12
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L183
.L172:
	pop	{r4, lr}
	bx	lr
.L183:
	mov	r2, #67108864
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	pop	{r4, lr}
	b	goToHelpState
.L182:
	ldr	r3, .L184+16
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToGame
.L185:
	.align	2
.L184:
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
	push	{r4, r5, r6, lr}
	ldr	r4, .L210
	ldr	r3, .L210+4
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L187
	ldr	r5, .L210+8
	ldrh	r3, [r5]
	tst	r3, #8
	bne	.L188
	ldr	r6, .L210+12
	ldr	r3, [r6]
	cmp	r3, #0
	beq	.L207
.L189:
	ldr	r3, [r6]
	cmp	r3, #0
	bne	.L208
.L188:
	ldrh	r3, [r4]
.L187:
	tst	r3, #4
	beq	.L186
	ldr	r3, .L210+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L209
.L186:
	pop	{r4, r5, r6, lr}
	bx	lr
.L209:
	pop	{r4, r5, r6, lr}
	b	goToStart
.L207:
	ldr	r3, .L210+16
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L187
	ldrh	r3, [r5]
	tst	r3, #8
	beq	.L189
	b	.L188
.L208:
	ldr	r2, .L210+20
	ldr	r3, .L210+24
	ldr	r0, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L210+28
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldr	r3, .L210+32
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L210+36
	ldr	r1, .L210+40
	ldr	r0, .L210+44
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldrh	r3, [r4]
	str	r2, [r6]
	b	.L187
.L211:
	.align	2
.L210:
	.word	oldButtons
	.word	waitForVBlank
	.word	buttons
	.word	helpFirst
	.word	unpauseSound
	.word	seed
	.word	srand
	.word	initGame
	.word	stopSound
	.word	playSoundA
	.word	903042
	.word	gameSong
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
	ldr	r4, .L214
	strh	r2, [r5, #16]	@ movhi
	strh	r3, [r5]	@ movhi
	strh	r2, [r5, #18]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L214+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L214+8
	ldr	r3, .L214+12
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L214+16
	ldr	r2, .L214+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L214+24
	ldr	r1, .L214+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #5120
	mov	r3, #3168
	strh	r2, [r5, #8]	@ movhi
	ldr	r1, .L214+32
	mov	r2, #100663296
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L214+36
	ldr	r1, .L214+40
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L214+44
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L215:
	.align	2
.L214:
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
	ldr	r4, .L218
	strh	r2, [r5, #16]	@ movhi
	strh	r3, [r5]	@ movhi
	strh	r2, [r5, #18]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L218+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L218+8
	ldr	r3, .L218+12
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L218+16
	ldr	r2, .L218+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L218+24
	ldr	r1, .L218+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #5120
	mov	r3, #3840
	strh	r2, [r5, #8]	@ movhi
	ldr	r1, .L218+32
	mov	r2, #100663296
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L218+36
	ldr	r1, .L218+40
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L218+44
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L219:
	.align	2
.L218:
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
	ldr	r4, .L222
	strh	r2, [r5, #16]	@ movhi
	strh	r3, [r5]	@ movhi
	strh	r2, [r5, #18]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L222+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L222+8
	mov	r3, #5184
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L222+12
	ldr	r2, .L222+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L222+20
	ldr	r1, .L222+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #5120
	mov	r3, #3472
	strh	r2, [r5, #8]	@ movhi
	ldr	r1, .L222+28
	mov	r2, #100663296
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L222+32
	ldr	r1, .L222+36
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L222+40
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L223:
	.align	2
.L222:
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
	ldr	r4, .L226
	strh	r2, [r5, #16]	@ movhi
	strh	r3, [r5]	@ movhi
	strh	r2, [r5, #18]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L226+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L226+8
	ldr	r3, .L226+12
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L226+16
	ldr	r2, .L226+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L226+24
	ldr	r1, .L226+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #5120
	mov	r3, #3424
	strh	r2, [r5, #8]	@ movhi
	ldr	r1, .L226+32
	mov	r2, #100663296
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L226+36
	ldr	r1, .L226+40
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L226+44
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L227:
	.align	2
.L226:
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
	ldr	r4, .L230
	strh	r2, [r5, #16]	@ movhi
	strh	r3, [r5]	@ movhi
	strh	r2, [r5, #18]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L230+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L230+8
	mov	r3, #14400
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L230+12
	ldr	r2, .L230+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L230+20
	ldr	r1, .L230+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #6656
	ldr	r3, .L230+28
	strh	r2, [r5, #8]	@ movhi
	ldr	r1, .L230+32
	mov	r2, #100663296
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L230+36
	ldr	r1, .L230+40
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L230+44
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L231:
	.align	2
.L230:
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
	ldr	r4, .L234
	strh	r2, [r5, #16]	@ movhi
	strh	r3, [r5]	@ movhi
	strh	r2, [r5, #18]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L234+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L234+8
	ldr	r3, .L234+12
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L234+16
	ldr	r2, .L234+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L234+24
	ldr	r1, .L234+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #5120
	mov	r3, #3216
	strh	r2, [r5, #8]	@ movhi
	ldr	r1, .L234+32
	mov	r2, #100663296
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L234+36
	ldr	r1, .L234+40
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L234+44
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L235:
	.align	2
.L234:
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
	ldr	r4, .L238
	strh	r2, [r5, #16]	@ movhi
	strh	r3, [r5]	@ movhi
	strh	r2, [r5, #18]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L238+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L238+8
	mov	r3, #6976
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L238+12
	ldr	r2, .L238+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L238+20
	ldr	r1, .L238+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #5120
	mov	r3, #2608
	strh	r2, [r5, #8]	@ movhi
	ldr	r1, .L238+28
	mov	r2, #100663296
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L238+32
	ldr	r1, .L238+36
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L238+40
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L239:
	.align	2
.L238:
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
	ldr	r3, .L308
	sub	sp, sp, #16
	mov	lr, pc
	bx	r3
	ldr	r4, .L308+4
	ldr	r3, .L308+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L308+12
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L241
	ldr	r2, .L308+16
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L298
.L241:
	tst	r3, #4
	beq	.L242
	ldr	r3, .L308+16
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L299
.L242:
	ldr	r4, .L308+20
	ldr	r2, [r4]
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L300
.L244:
	ldr	r2, [r4, #4]
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L301
.L247:
	ldr	r2, [r4, #8]
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L302
.L250:
	ldr	r2, [r4, #12]
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L303
.L253:
	ldr	r2, [r4, #16]
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L304
.L256:
	ldr	r2, [r4, #20]
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L305
.L259:
	ldr	r2, [r4, #24]
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L306
.L262:
	ldr	r2, [r4, #28]
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L307
.L240:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L307:
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	r4, .L308+24
	ldr	ip, [r2, #48]
	add	r0, r4, #48
	ldr	r3, [r4, #68]
	ldr	r2, [r4, #72]
	ldm	r0, {r0, r1}
	ldr	r5, .L308+28
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L240
	mov	r2, #68
	ldr	r3, .L308+32
	str	r2, [r4, #48]
	str	r3, [r4, #52]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	b	goToDesertState
.L306:
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	r5, .L308+24
	ldr	ip, [r2, #48]
	add	r0, r5, #48
	ldr	r3, [r5, #68]
	ldr	r2, [r5, #72]
	ldm	r0, {r0, r1}
	ldr	r6, .L308+28
	str	ip, [sp]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L262
	mov	r2, #54
	ldr	r3, .L308+36
	str	r2, [r5, #48]
	str	r3, [r5, #52]
	bl	goToArenaState
	b	.L262
.L305:
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	r5, .L308+24
	ldr	ip, [r2, #48]
	add	r0, r5, #48
	ldr	r3, [r5, #68]
	ldr	r2, [r5, #72]
	ldm	r0, {r0, r1}
	ldr	r6, .L308+28
	str	ip, [sp]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L259
	mov	r2, #95
	ldr	r3, .L308+40
	str	r2, [r5, #48]
	str	r3, [r5, #52]
	bl	goToKindergartenState
	b	.L259
.L304:
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	r5, .L308+24
	ldr	ip, [r2, #48]
	add	r0, r5, #48
	ldr	r3, [r5, #68]
	ldr	r2, [r5, #72]
	ldm	r0, {r0, r1}
	ldr	r6, .L308+28
	str	ip, [sp]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L256
	mov	r2, #30
	ldr	r3, .L308+44
	str	r2, [r5, #48]
	str	r3, [r5, #52]
	bl	goToMIState
	b	.L256
.L303:
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	r5, .L308+24
	ldr	ip, [r2, #48]
	add	r0, r5, #48
	ldr	r3, [r5, #68]
	ldr	r2, [r5, #72]
	ldm	r0, {r0, r1}
	ldr	r6, .L308+28
	str	ip, [sp]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L253
	mov	r2, #95
	ldr	r3, .L308+48
	str	r2, [r5, #48]
	str	r3, [r5, #52]
	bl	goToGardenState
	b	.L253
.L302:
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	r5, .L308+24
	ldr	ip, [r2, #48]
	add	r0, r5, #48
	ldr	r3, [r5, #68]
	ldr	r2, [r5, #72]
	ldm	r0, {r0, r1}
	ldr	r6, .L308+28
	str	ip, [sp]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L250
	mov	r2, #65
	mov	r3, #400
	str	r2, [r5, #48]
	str	r3, [r5, #52]
	bl	goToJdbState
	b	.L250
.L301:
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	r5, .L308+24
	ldr	ip, [r2, #48]
	add	r0, r5, #48
	ldr	r3, [r5, #68]
	ldr	r2, [r5, #72]
	ldm	r0, {r0, r1}
	ldr	r6, .L308+28
	str	ip, [sp]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L247
	mov	r2, #50
	mov	r3, #125
	str	r2, [r5, #48]
	str	r3, [r5, #52]
	bl	goToZooState
	b	.L247
.L300:
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	r0, .L308+24
	ldr	ip, [r2, #48]
	ldr	r3, [r0, #68]
	ldr	r2, [r0, #72]
	add	r0, r0, #48
	ldm	r0, {r0, r1}
	ldr	r5, .L308+28
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L244
	bl	goToWinState
	b	.L244
.L299:
	ldr	r3, .L308+52
	mov	lr, pc
	bx	r3
	bl	goToHelpState
	b	.L242
.L298:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L241
.L309:
	.align	2
.L308:
	.word	updateGame
	.word	oldButtons
	.word	waitForVBlank
	.word	drawGame
	.word	buttons
	.word	stars
	.word	steven
	.word	collision
	.word	985
	.word	935
	.word	875
	.word	645
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
	ldr	r3, .L326
	mov	lr, pc
	bx	r3
	ldr	r7, .L326+4
	ldr	r4, .L326+8
	ldr	r6, .L326+12
	ldr	fp, .L326+16
	ldr	r10, .L326+20
	ldr	r9, .L326+24
	ldr	r5, .L326+28
	ldr	r8, .L326+32
.L324:
	ldrh	r3, [r4]
	strh	r3, [r7]	@ movhi
	ldr	r3, [r6]
	ldrh	r2, [r5, #48]
	strh	r2, [r4]	@ movhi
	cmp	r3, #11
	ldrls	pc, [pc, r3, asl #2]
	b	.L311
.L313:
	.word	.L312
	.word	.L314
	.word	.L315
	.word	.L316
	.word	.L316
	.word	.L317
	.word	.L318
	.word	.L319
	.word	.L320
	.word	.L321
	.word	.L322
	.word	.L323
.L316:
	mov	lr, pc
	bx	fp
.L311:
	mov	lr, pc
	bx	r10
	mov	r3, #512
	mov	r2, #117440512
	mov	r1, r8
	mov	r0, #3
	mov	lr, pc
	bx	r9
	b	.L324
.L315:
	ldr	r3, .L326+36
	mov	lr, pc
	bx	r3
	b	.L311
.L314:
	ldr	r3, .L326+40
	mov	lr, pc
	bx	r3
	b	.L311
.L312:
	ldr	r3, .L326+44
	mov	lr, pc
	bx	r3
	b	.L311
.L322:
	ldr	r3, .L326+48
	mov	lr, pc
	bx	r3
	b	.L311
.L321:
	ldr	r3, .L326+52
	mov	lr, pc
	bx	r3
	b	.L311
.L320:
	ldr	r3, .L326+56
	mov	lr, pc
	bx	r3
	b	.L311
.L319:
	ldr	r3, .L326+60
	mov	lr, pc
	bx	r3
	b	.L311
.L318:
	ldr	r3, .L326+64
	mov	lr, pc
	bx	r3
	b	.L311
.L317:
	ldr	r3, .L326+68
	mov	lr, pc
	bx	r3
	b	.L311
.L323:
	ldr	r3, .L326+72
	mov	lr, pc
	bx	r3
	b	.L311
.L327:
	.align	2
.L326:
	.word	initialize
	.word	oldButtons
	.word	buttons
	.word	state
	.word	winState
	.word	waitForVBlank
	.word	DMANow
	.word	67109120
	.word	shadowOAM
	.word	pause
	.word	game
	.word	start
	.word	fastState
	.word	swimState
	.word	foundState
	.word	sleepState
	.word	prisonState
	.word	helpState
	.word	swimPause
	.size	main, .-main
	.comm	buffer,41,4
	.comm	seed,4,4
	.comm	swim,108,4
	.comm	sleep,108,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	helpFirst,4,4
	.comm	lose,4,4
	.comm	state,4,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 47) 7.1.0"
