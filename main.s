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
	ldr	r3, .L4
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r1, .L4+4
	ldr	r0, .L4+8
	ldr	r3, .L4+12
	mov	lr, pc
	bx	r3
	mov	r5, #67108864
	mov	r2, #0
	mov	r3, #768
	ldr	r4, .L4+16
	strh	r2, [r5, #16]	@ movhi
	strh	r3, [r5]	@ movhi
	strh	r2, [r5, #18]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L4+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L4+24
	ldr	r3, .L4+28
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L4+32
	ldr	r2, .L4+36
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L4+40
	ldr	r1, .L4+44
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #5120
	ldr	r3, .L4+48
	strh	r2, [r5, #8]	@ movhi
	ldr	r1, .L4+52
	mov	r2, #100663296
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L4+56
	ldr	r1, .L4+60
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #6
	ldr	r3, .L4+64
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L5:
	.align	2
.L4:
	.word	stopSound
	.word	274192
	.word	prisonSound
	.word	playSoundA
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
	mov	r4, #0
	mov	r5, #67108864
	ldr	r3, .L8
	mov	lr, pc
	bx	r3
	mov	r2, r4
	ldr	r1, .L8+4
	ldr	r0, .L8+8
	ldr	r3, .L8+12
	mov	lr, pc
	bx	r3
	strh	r4, [r5, #16]	@ movhi
	ldr	r3, .L8+16
	strh	r4, [r5, #18]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #4352
	ldr	r6, .L8+20
	strh	r2, [r5]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L8+24
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r2, .L8+28
	mov	r3, #4048
	strh	r2, [r5, #8]	@ movhi
	ldr	r1, .L8+32
	ldr	r2, .L8+36
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L8+40
	ldr	r1, .L8+44
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r5, #87
	mov	lr, #57
	mov	r2, #64
	mov	ip, #3
	mov	r0, #7
	ldr	r3, .L8+48
	ldr	r1, .L8+52
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
	.word	stopSound
	.word	154944
	.word	sleepSound
	.word	playSoundA
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
	ldr	r3, .L12
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r1, .L12+4
	ldr	r0, .L12+8
	ldr	r3, .L12+12
	mov	lr, pc
	bx	r3
	mov	r4, #67108864
	mov	r2, #0
	mov	r3, #256
	strh	r2, [r4, #16]	@ movhi
	ldr	r5, .L12+16
	strh	r3, [r4]	@ movhi
	strh	r2, [r4, #18]	@ movhi
	ldr	r1, .L12+20
	mov	r2, #83886080
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r2, .L12+24
	ldr	r3, .L12+28
	strh	r2, [r4, #8]	@ movhi
	ldr	r1, .L12+32
	ldr	r2, .L12+36
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L12+40
	ldr	r1, .L12+44
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r2, #8
	ldr	r3, .L12+48
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L13:
	.align	2
.L12:
	.word	stopSound
	.word	113184
	.word	foundSound
	.word	playSoundA
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
	ldr	r2, .L29+12
	ldr	r0, [r2, #44]
	mvn	r0, r0, lsl #18
	mvn	r0, r0, lsr #18
	ldr	r1, [r2, #76]
	ldr	r3, .L29+16
	smull	r6, r7, r1, r3
	asr	r3, r1, #31
	rsb	r3, r3, r7, asr #4
	ldr	ip, [r2, #88]
	ldr	lr, .L29+20
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	add	ip, ip, #1
	ldr	r5, [r2, #40]
	strh	r0, [lr, #2]	@ movhi
	subs	r3, r1, r3, lsl #1
	lsl	r0, ip, #3
	strh	r5, [lr]	@ movhi
	strh	r0, [lr, #4]	@ movhi
	bne	.L17
	ldr	r0, [r2, #92]
	cmp	ip, r0
	str	ip, [r2, #88]
	movge	ip, r3
	sub	r0, r0, #1
	strge	r3, [r2, #88]
	cmp	r0, ip
	moveq	r0, #27
	moveq	r3, #47
	movne	r0, #57
	movne	r3, #87
	str	r0, [r2, #40]
	str	r3, [r2, #44]
.L17:
	add	r1, r1, #1
	str	r1, [r2, #76]
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
	.word	1374389535
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
	mov	r4, #0
	mov	r5, #67108864
	ldr	r3, .L33
	mov	lr, pc
	bx	r3
	mov	r2, r4
	ldr	r1, .L33+4
	ldr	r0, .L33+8
	ldr	r3, .L33+12
	mov	lr, pc
	bx	r3
	strh	r4, [r5, #16]	@ movhi
	ldr	r3, .L33+16
	strh	r4, [r5, #18]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #4352
	ldr	r6, .L33+20
	strh	r2, [r5]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L33+24
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r2, .L33+28
	mov	r3, #4864
	strh	r2, [r5, #8]	@ movhi
	ldr	r1, .L33+32
	ldr	r2, .L33+36
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L33+40
	ldr	r1, .L33+44
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r5, #152
	mov	lr, #84
	mov	r2, #64
	mov	ip, #2
	mov	r0, #9
	ldr	r3, .L33+48
	ldr	r1, .L33+52
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
	.word	stopSound
	.word	116352
	.word	swimSound
	.word	playSoundA
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
	ldr	r3, .L51
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r1, .L51+4
	ldr	r0, .L51+8
	ldr	r3, .L51+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L51+16
	mov	lr, pc
	bx	r3
	mov	r5, #67108864
	mov	r4, #0
	mov	r3, #4352
	strh	r4, [r5, #16]	@ movhi
	ldr	r6, .L51+20
	strh	r3, [r5]	@ movhi
	strh	r4, [r5, #18]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L51+24
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r2, .L51+28
	ldr	r3, .L51+32
	strh	r2, [r5, #8]	@ movhi
	ldr	r1, .L51+36
	ldr	r2, .L51+40
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L51+44
	ldr	r1, .L51+48
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r5, #98
	mov	lr, #8
	mov	r2, #64
	mov	ip, #2
	mov	r0, #10
	ldr	r3, .L51+52
	ldr	r1, .L51+56
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
.L52:
	.align	2
.L51:
	.word	stopSound
	.word	80352
	.word	fastSound
	.word	playSoundB
	.word	hideSprites
	.word	DMANow
	.word	fastPal
	.word	6916
	.word	4832
	.word	fastTiles
	.word	100679680
	.word	100718592
	.word	fastMap
	.word	hair
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
	ldr	r1, .L72+20
	mov	r0, #3
	ldr	r2, .L72+24
	mov	r3, #1024
	mov	lr, pc
	bx	r6
	ldr	r3, .L72+28
	mov	lr, pc
	bx	r3
	mov	r2, #256
	ldr	r3, .L72+32
	strh	r2, [r5]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L72+36
	ldr	r1, .L72+40
	ldr	r0, .L72+44
	mov	lr, pc
	bx	r3
	ldr	r2, .L72+48
	ldr	r3, .L72+52
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
	.word	startMap
	.word	100704256
	.word	waitForVBlank
	.word	stopSound
	.word	playSoundA
	.word	1177056
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
	ldr	r3, .L86+8
	mov	lr, pc
	bx	r3
	bl	goToStart
	ldrh	r3, [r4]
	b	.L75
.L87:
	.align	2
.L86:
	.word	oldButtons
	.word	buttons
	.word	stopSound
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
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, .L111
	ldr	r3, [r4]
	ldr	r5, .L111+4
	add	r3, r3, #1
	str	r3, [r4]
	mov	lr, pc
	bx	r5
	ldr	r1, .L111+8
	ldr	r0, [r1, #44]
	mvn	r0, r0, lsl #18
	mvn	r0, r0, lsr #18
	ldr	r2, [r1, #76]
	ldr	r3, .L111+12
	smull	r6, r7, r2, r3
	asr	r3, r2, #31
	add	lr, r2, r7
	rsb	r3, r3, lr, asr #4
	ldr	ip, [r1, #88]
	ldr	lr, .L111+16
	rsb	r3, r3, r3, lsl #4
	ldr	r6, [r1, #40]
	strh	r0, [lr, #2]	@ movhi
	add	r0, ip, #50
	lsl	r0, r0, #3
	subs	r3, r2, r3, lsl #1
	strh	r6, [lr]	@ movhi
	strh	r0, [lr, #4]	@ movhi
	bne	.L98
	ldr	r0, [r1, #92]
	add	ip, ip, #1
	cmp	ip, r0
	str	ip, [r1, #88]
	strge	r3, [r1, #88]
.L98:
	add	r2, r2, #1
	ldr	r6, .L111+20
	str	r2, [r1, #76]
	mov	lr, pc
	bx	r5
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L111+16
	mov	r0, #3
	ldr	r5, .L111+24
	mov	lr, pc
	bx	r5
	ldrh	r3, [r6]
	tst	r3, #32
	beq	.L100
	ldr	r2, .L111+28
	ldrh	r2, [r2]
	tst	r2, #32
	beq	.L109
.L100:
	tst	r3, #8
	beq	.L96
	ldr	r3, .L111+28
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L110
.L96:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L110:
	ldr	r0, [r4]
	ldr	r3, .L111+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L111+36
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldr	r3, .L111+40
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r1, .L111+44
	ldr	r0, .L111+48
	ldr	r3, .L111+52
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L109:
	bl	goToSwim
	ldrh	r3, [r6]
	b	.L100
.L112:
	.align	2
.L111:
	.word	seed
	.word	waitForVBlank
	.word	hair
	.word	-2004318071
	.word	shadowOAM
	.word	oldButtons
	.word	DMANow
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
	ldr	r3, .L115
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r1, .L115+4
	ldr	r0, .L115+8
	ldr	r3, .L115+12
	mov	lr, pc
	bx	r3
	strh	r4, [r5, #16]	@ movhi
	ldr	r3, .L115+16
	strh	r4, [r5, #18]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #4352
	ldr	r6, .L115+20
	strh	r2, [r5]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L115+24
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r2, .L115+28
	ldr	r3, .L115+32
	strh	r2, [r5, #8]	@ movhi
	ldr	r1, .L115+36
	ldr	r2, .L115+40
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L115+44
	ldr	r1, .L115+48
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r5, #152
	mov	lr, #84
	mov	r2, #64
	mov	ip, #2
	mov	r0, #11
	ldr	r3, .L115+52
	ldr	r1, .L115+56
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
.L116:
	.align	2
.L115:
	.word	pauseSoundA
	.word	634689
	.word	pauseSong
	.word	playSoundB
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
	push	{r4, lr}
	ldr	r3, .L119
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r1, .L119+4
	ldr	r0, .L119+8
	ldr	r3, .L119+12
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #0
	mov	r3, #256
	mov	r0, #5248
	strh	r1, [r2, #16]	@ movhi
	ldr	r4, .L119+16
	strh	r1, [r2, #18]	@ movhi
	strh	r3, [r2]	@ movhi
	strh	r0, [r2, #8]	@ movhi
	ldr	r1, .L119+20
	mov	r2, #83886080
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #16320
	mov	r2, #100663296
	ldr	r1, .L119+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L119+28
	ldr	r1, .L119+32
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L119+36
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L120:
	.align	2
.L119:
	.word	pauseSound
	.word	563904
	.word	winSound
	.word	playSoundB
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
	ldr	r3, .L128
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L128+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L121
	ldr	r3, .L128+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L127
.L121:
	pop	{r4, lr}
	bx	lr
.L127:
	pop	{r4, lr}
	b	goToStart
.L129:
	.align	2
.L128:
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
	push	{r4, lr}
	ldr	r3, .L132
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r1, .L132+4
	ldr	r0, .L132+8
	ldr	r3, .L132+12
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #0
	mov	r3, #256
	mov	r0, #5248
	strh	r1, [r2, #16]	@ movhi
	ldr	r4, .L132+16
	strh	r1, [r2, #18]	@ movhi
	strh	r3, [r2]	@ movhi
	strh	r0, [r2, #8]	@ movhi
	ldr	r1, .L132+20
	mov	r2, #83886080
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #16000
	mov	r2, #100663296
	ldr	r1, .L132+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L132+28
	ldr	r1, .L132+32
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L132+36
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L133:
	.align	2
.L132:
	.word	pauseSound
	.word	2505312
	.word	loseSound
	.word	playSoundB
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
	push	{r4, lr}
	ldr	r3, .L137
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r1, .L137+4
	ldr	r0, .L137+8
	ldr	r3, .L137+12
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #0
	mov	r3, #256
	mov	r0, #5248
	strh	r1, [r2, #16]	@ movhi
	ldr	r4, .L137+16
	strh	r1, [r2, #18]	@ movhi
	strh	r3, [r2]	@ movhi
	strh	r0, [r2, #8]	@ movhi
	ldr	r1, .L137+20
	mov	r2, #83886080
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L137+24
	mov	r2, #100663296
	ldr	r1, .L137+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L137+32
	ldr	r1, .L137+36
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #5
	ldr	r3, .L137+40
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L138:
	.align	2
.L137:
	.word	pauseSoundA
	.word	567052
	.word	helpSound
	.word	playSoundB
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
	ldr	r4, .L156
	ldr	r3, [r4]
	ldr	r5, .L156+4
	add	r3, r3, #1
	ldr	r2, .L156+8
	str	r3, [r4]
	mov	lr, pc
	bx	r2
	ldrh	r3, [r5]
	tst	r3, #8
	beq	.L140
	ldr	r2, .L156+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L153
.L140:
	tst	r3, #16
	beq	.L141
	ldr	r2, .L156+12
	ldrh	r2, [r2]
	tst	r2, #16
	beq	.L154
.L141:
	tst	r3, #4
	beq	.L142
	ldr	r3, .L156+12
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L155
.L142:
	mov	r2, #0
	ldr	r3, .L156+16
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L154:
	bl	goToPrison
	ldrh	r3, [r5]
	b	.L141
.L153:
	ldr	r0, [r4]
	ldr	r3, .L156+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L156+24
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldr	r3, .L156+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L156+32
	mov	r2, #1
	ldr	r1, .L156+36
	ldr	r0, .L156+40
	mov	lr, pc
	bx	r3
	ldrh	r3, [r5]
	b	.L140
.L155:
	mov	r2, #1
	ldr	r3, .L156+16
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	b	goToHelpState
.L157:
	.align	2
.L156:
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
	ldr	r4, .L173
	mov	lr, pc
	bx	r4
	ldr	r3, .L173+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L159
	ldr	r2, .L173+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L171
.L159:
	tst	r3, #4
	bne	.L172
.L160:
	ldr	r1, .L173+12
	ldr	r0, [r1, #44]
	mvn	r0, r0, lsl #18
	mvn	r0, r0, lsr #18
	ldr	r2, [r1, #76]
	ldr	r3, .L173+16
	smull	r6, r7, r2, r3
	asr	r3, r2, #31
	add	lr, r2, r7
	rsb	r3, r3, lr, asr #4
	ldr	ip, [r1, #88]
	ldr	lr, .L173+20
	rsb	r3, r3, r3, lsl #4
	ldr	r5, [r1, #40]
	strh	r0, [lr, #2]	@ movhi
	add	r0, ip, #48
	lsl	r0, r0, #3
	subs	r3, r2, r3, lsl #1
	strh	r5, [lr]	@ movhi
	strh	r0, [lr, #4]	@ movhi
	bne	.L162
	ldr	r0, [r1, #92]
	add	ip, ip, #1
	cmp	ip, r0
	str	ip, [r1, #88]
	strge	r3, [r1, #88]
.L162:
	add	r2, r2, #1
	str	r2, [r1, #76]
	mov	lr, pc
	bx	r4
	ldr	r4, .L173+24
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L173+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L172:
	ldr	r3, .L173+8
	ldrh	r3, [r3]
	tst	r3, #4
	bne	.L160
	mov	r2, #67108864
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	bl	goToHelpState
	b	.L160
.L171:
	ldr	r3, .L173+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L173+32
	mov	lr, pc
	bx	r3
	bl	goToGame
	b	.L160
.L174:
	.align	2
.L173:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	swim
	.word	-2004318071
	.word	shadowOAM
	.word	DMANow
	.word	stopSoundB
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
	ldr	r3, .L187
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L187+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L176
	ldr	r2, .L187+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L185
.L176:
	tst	r3, #4
	beq	.L175
	ldr	r3, .L187+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L186
.L175:
	pop	{r4, lr}
	bx	lr
.L186:
	mov	r2, #67108864
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	pop	{r4, lr}
	b	goToHelpState
.L185:
	ldr	r3, .L187+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L187+16
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToGame
.L188:
	.align	2
.L187:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	stopSoundB
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
	ldr	r4, .L213
	ldr	r3, .L213+4
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L190
	ldr	r5, .L213+8
	ldrh	r3, [r5]
	tst	r3, #8
	bne	.L191
	ldr	r6, .L213+12
	ldr	r3, [r6]
	cmp	r3, #0
	beq	.L210
.L192:
	ldr	r3, [r6]
	cmp	r3, #0
	bne	.L211
.L191:
	ldrh	r3, [r4]
.L190:
	tst	r3, #4
	beq	.L189
	ldr	r3, .L213+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L212
.L189:
	pop	{r4, r5, r6, lr}
	bx	lr
.L212:
	ldr	r3, .L213+16
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	b	goToStart
.L210:
	ldr	r3, .L213+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L213+20
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L190
	ldrh	r3, [r5]
	tst	r3, #8
	beq	.L192
	b	.L191
.L211:
	ldr	r2, .L213+24
	ldr	r3, .L213+28
	ldr	r0, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L213+32
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldr	r3, .L213+16
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L213+36
	ldr	r1, .L213+40
	ldr	r0, .L213+44
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldrh	r3, [r4]
	str	r2, [r6]
	b	.L190
.L214:
	.align	2
.L213:
	.word	oldButtons
	.word	waitForVBlank
	.word	buttons
	.word	helpFirst
	.word	stopSoundB
	.word	unpauseSound
	.word	seed
	.word	srand
	.word	initGame
	.word	playSoundA
	.word	902852
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
	ldr	r4, .L217
	strh	r2, [r5, #16]	@ movhi
	strh	r3, [r5]	@ movhi
	strh	r2, [r5, #18]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L217+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L217+8
	ldr	r3, .L217+12
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L217+16
	ldr	r2, .L217+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L217+24
	ldr	r1, .L217+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #5120
	mov	r3, #3616
	strh	r2, [r5, #8]	@ movhi
	ldr	r1, .L217+32
	mov	r2, #100663296
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L217+36
	ldr	r1, .L217+40
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L217+44
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L218:
	.align	2
.L217:
	.word	DMANow
	.word	junglePal
	.word	6916
	.word	6624
	.word	jungleTiles
	.word	100679680
	.word	100718592
	.word	jungleMap
	.word	jungle3Tiles
	.word	100704256
	.word	jungle3Map
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
	ldr	r4, .L221
	strh	r2, [r5, #16]	@ movhi
	strh	r3, [r5]	@ movhi
	strh	r2, [r5, #18]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L221+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L221+8
	ldr	r3, .L221+12
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L221+16
	ldr	r2, .L221+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L221+24
	ldr	r1, .L221+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #5120
	mov	r3, #3904
	strh	r2, [r5, #8]	@ movhi
	ldr	r1, .L221+32
	mov	r2, #100663296
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L221+36
	ldr	r1, .L221+40
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L221+44
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L222:
	.align	2
.L221:
	.word	DMANow
	.word	islandPal
	.word	6916
	.word	7056
	.word	islandTiles
	.word	100679680
	.word	100718592
	.word	islandMap
	.word	island3Tiles
	.word	100704256
	.word	island3Map
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
	ldr	r4, .L225
	strh	r2, [r5, #16]	@ movhi
	strh	r3, [r5]	@ movhi
	strh	r2, [r5, #18]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L225+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L225+8
	ldr	r3, .L225+12
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L225+16
	ldr	r2, .L225+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L225+24
	ldr	r1, .L225+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #5120
	mov	r3, #3872
	strh	r2, [r5, #8]	@ movhi
	ldr	r1, .L225+32
	mov	r2, #100663296
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L225+36
	ldr	r1, .L225+40
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L225+44
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L226:
	.align	2
.L225:
	.word	DMANow
	.word	zooPal
	.word	6916
	.word	5168
	.word	zooTiles
	.word	100679680
	.word	100718592
	.word	zooMap
	.word	zoo3Tiles
	.word	100704256
	.word	zoo3Map
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
	ldr	r4, .L229
	strh	r2, [r5, #16]	@ movhi
	strh	r3, [r5]	@ movhi
	strh	r2, [r5, #18]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L229+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L229+8
	ldr	r3, .L229+12
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L229+16
	ldr	r2, .L229+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L229+24
	ldr	r1, .L229+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #5120
	mov	r3, #3792
	strh	r2, [r5, #8]	@ movhi
	ldr	r1, .L229+32
	mov	r2, #100663296
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L229+36
	ldr	r1, .L229+40
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L229+44
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L230:
	.align	2
.L229:
	.word	DMANow
	.word	gardenPal
	.word	6916
	.word	6448
	.word	gardenTiles
	.word	100679680
	.word	100718592
	.word	gardenMap
	.word	garden3Tiles
	.word	100704256
	.word	garden3Map
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
	ldr	r4, .L233
	strh	r2, [r5, #16]	@ movhi
	strh	r3, [r5]	@ movhi
	strh	r2, [r5, #18]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L233+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L233+8
	mov	r3, #14528
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L233+12
	ldr	r2, .L233+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L233+20
	ldr	r1, .L233+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #6656
	mov	r3, #3744
	strh	r2, [r5, #8]	@ movhi
	ldr	r1, .L233+28
	mov	r2, #100663296
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L233+32
	ldr	r1, .L233+36
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L233+40
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L234:
	.align	2
.L233:
	.word	DMANow
	.word	kindergartenPal
	.word	5252
	.word	kindergartenTiles
	.word	100679680
	.word	100704256
	.word	kindergartenMap
	.word	kindergarten3Tiles
	.word	100716544
	.word	kindergarten3Map
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
	ldr	r4, .L237
	strh	r2, [r5, #16]	@ movhi
	strh	r3, [r5]	@ movhi
	strh	r2, [r5, #18]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L237+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L237+8
	ldr	r3, .L237+12
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L237+16
	ldr	r2, .L237+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L237+24
	ldr	r1, .L237+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #5120
	mov	r3, #3904
	strh	r2, [r5, #8]	@ movhi
	ldr	r1, .L237+32
	mov	r2, #100663296
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L237+36
	ldr	r1, .L237+40
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L237+44
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L238:
	.align	2
.L237:
	.word	DMANow
	.word	arenaPal
	.word	6916
	.word	6496
	.word	arenaTiles
	.word	100679680
	.word	100718592
	.word	arenaMap
	.word	arena3Tiles
	.word	100704256
	.word	arena3Map
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
	ldr	r4, .L241
	strh	r2, [r5, #16]	@ movhi
	strh	r3, [r5]	@ movhi
	strh	r2, [r5, #18]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L241+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L241+8
	mov	r3, #6976
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L241+12
	ldr	r2, .L241+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L241+20
	ldr	r1, .L241+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #5120
	mov	r3, #2672
	strh	r2, [r5, #8]	@ movhi
	ldr	r1, .L241+28
	mov	r2, #100663296
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L241+32
	ldr	r1, .L241+36
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L241+40
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L242:
	.align	2
.L241:
	.word	DMANow
	.word	desertPal
	.word	6916
	.word	desertTiles
	.word	100679680
	.word	100718592
	.word	desertMap
	.word	desert3Tiles
	.word	100704256
	.word	desert3Map
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
	ldr	r3, .L311
	sub	sp, sp, #16
	mov	lr, pc
	bx	r3
	ldr	r4, .L311+4
	ldr	r3, .L311+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L311+12
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L244
	ldr	r2, .L311+16
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L301
.L244:
	tst	r3, #4
	beq	.L245
	ldr	r3, .L311+16
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L302
.L245:
	ldr	r4, .L311+20
	ldr	r2, [r4]
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L303
.L247:
	ldr	r2, [r4, #4]
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L304
.L250:
	ldr	r2, [r4, #8]
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L305
.L253:
	ldr	r2, [r4, #12]
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L306
.L256:
	ldr	r2, [r4, #16]
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L307
.L259:
	ldr	r2, [r4, #20]
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L308
.L262:
	ldr	r2, [r4, #24]
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L309
.L265:
	ldr	r2, [r4, #28]
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L310
.L243:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L310:
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	r4, .L311+24
	ldr	ip, [r2, #48]
	add	r0, r4, #48
	ldr	r3, [r4, #68]
	ldr	r2, [r4, #72]
	ldm	r0, {r0, r1}
	ldr	r5, .L311+28
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L243
	mov	r2, #68
	ldr	r3, .L311+32
	str	r2, [r4, #48]
	str	r3, [r4, #52]
	bl	goToDesertState
	ldr	r3, .L311+36
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r1, .L311+40
	ldr	r0, .L311+44
	ldr	r3, .L311+48
	mov	lr, pc
	bx	r3
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L309:
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	r5, .L311+24
	ldr	ip, [r2, #48]
	add	r0, r5, #48
	ldr	r3, [r5, #68]
	ldr	r2, [r5, #72]
	ldm	r0, {r0, r1}
	ldr	r6, .L311+28
	str	ip, [sp]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L265
	mov	r2, #54
	ldr	r3, .L311+52
	str	r2, [r5, #48]
	str	r3, [r5, #52]
	bl	goToArenaState
	ldr	r3, .L311+36
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r1, .L311+56
	ldr	r0, .L311+60
	ldr	r3, .L311+48
	mov	lr, pc
	bx	r3
	b	.L265
.L308:
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	r5, .L311+24
	ldr	ip, [r2, #48]
	add	r0, r5, #48
	ldr	r3, [r5, #68]
	ldr	r2, [r5, #72]
	ldm	r0, {r0, r1}
	ldr	r6, .L311+28
	str	ip, [sp]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L262
	mov	r2, #95
	ldr	r3, .L311+64
	str	r2, [r5, #48]
	str	r3, [r5, #52]
	bl	goToKindergartenState
	ldr	r3, .L311+36
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r1, .L311+68
	ldr	r0, .L311+72
	ldr	r3, .L311+48
	mov	lr, pc
	bx	r3
	b	.L262
.L307:
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	r5, .L311+24
	ldr	ip, [r2, #48]
	add	r0, r5, #48
	ldr	r3, [r5, #68]
	ldr	r2, [r5, #72]
	ldm	r0, {r0, r1}
	ldr	r6, .L311+28
	str	ip, [sp]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L259
	mov	r2, #30
	ldr	r3, .L311+76
	str	r2, [r5, #48]
	str	r3, [r5, #52]
	bl	goToMIState
	ldr	r3, .L311+36
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r1, .L311+80
	ldr	r0, .L311+84
	ldr	r3, .L311+48
	mov	lr, pc
	bx	r3
	b	.L259
.L306:
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	r5, .L311+24
	ldr	ip, [r2, #48]
	add	r0, r5, #48
	ldr	r3, [r5, #68]
	ldr	r2, [r5, #72]
	ldm	r0, {r0, r1}
	ldr	r6, .L311+28
	str	ip, [sp]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L256
	mov	r2, #95
	ldr	r3, .L311+88
	str	r2, [r5, #48]
	str	r3, [r5, #52]
	bl	goToGardenState
	ldr	r3, .L311+36
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r1, .L311+92
	ldr	r0, .L311+96
	ldr	r3, .L311+48
	mov	lr, pc
	bx	r3
	b	.L256
.L305:
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	r5, .L311+24
	ldr	ip, [r2, #48]
	add	r0, r5, #48
	ldr	r3, [r5, #68]
	ldr	r2, [r5, #72]
	ldm	r0, {r0, r1}
	ldr	r6, .L311+28
	str	ip, [sp]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L253
	mov	r2, #65
	mov	r3, #400
	str	r2, [r5, #48]
	str	r3, [r5, #52]
	bl	goToJdbState
	ldr	r3, .L311+36
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r1, .L311+100
	ldr	r0, .L311+104
	ldr	r3, .L311+48
	mov	lr, pc
	bx	r3
	b	.L253
.L304:
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	r5, .L311+24
	ldr	ip, [r2, #48]
	add	r0, r5, #48
	ldr	r3, [r5, #68]
	ldr	r2, [r5, #72]
	ldm	r0, {r0, r1}
	ldr	r6, .L311+28
	str	ip, [sp]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L250
	mov	r2, #50
	mov	r3, #125
	str	r2, [r5, #48]
	str	r3, [r5, #52]
	bl	goToZooState
	ldr	r3, .L311+36
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r1, .L311+108
	ldr	r0, .L311+112
	ldr	r3, .L311+48
	mov	lr, pc
	bx	r3
	b	.L250
.L303:
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	r0, .L311+24
	ldr	ip, [r2, #48]
	ldr	r3, [r0, #68]
	ldr	r2, [r0, #72]
	add	r0, r0, #48
	ldm	r0, {r0, r1}
	ldr	r5, .L311+28
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L247
	bl	goToWinState
	b	.L247
.L302:
	bl	goToHelpState
	b	.L245
.L301:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L244
.L312:
	.align	2
.L311:
	.word	updateGame
	.word	oldButtons
	.word	waitForVBlank
	.word	drawGame
	.word	buttons
	.word	stars
	.word	steven
	.word	collision
	.word	985
	.word	pauseSoundA
	.word	1267576
	.word	desertSound
	.word	playSoundB
	.word	935
	.word	1133368
	.word	starSound2
	.word	875
	.word	296440
	.word	jungleSound
	.word	645
	.word	713867
	.word	islandSound
	.word	535
	.word	414808
	.word	gardenSound
	.word	834712
	.word	kindergartenSound
	.word	989656
	.word	zooSound
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
	ldr	r3, .L329
	mov	lr, pc
	bx	r3
	ldr	r7, .L329+4
	ldr	r4, .L329+8
	ldr	r6, .L329+12
	ldr	fp, .L329+16
	ldr	r10, .L329+20
	ldr	r9, .L329+24
	ldr	r5, .L329+28
	ldr	r8, .L329+32
.L327:
	ldrh	r3, [r4]
	strh	r3, [r7]	@ movhi
	ldr	r3, [r6]
	ldrh	r2, [r5, #48]
	strh	r2, [r4]	@ movhi
	cmp	r3, #11
	ldrls	pc, [pc, r3, asl #2]
	b	.L314
.L316:
	.word	.L315
	.word	.L317
	.word	.L318
	.word	.L319
	.word	.L319
	.word	.L320
	.word	.L321
	.word	.L322
	.word	.L323
	.word	.L324
	.word	.L325
	.word	.L326
.L319:
	mov	lr, pc
	bx	fp
.L314:
	mov	lr, pc
	bx	r10
	mov	r3, #512
	mov	r2, #117440512
	mov	r1, r8
	mov	r0, #3
	mov	lr, pc
	bx	r9
	b	.L327
.L318:
	ldr	r3, .L329+36
	mov	lr, pc
	bx	r3
	b	.L314
.L317:
	ldr	r3, .L329+40
	mov	lr, pc
	bx	r3
	b	.L314
.L315:
	ldr	r3, .L329+44
	mov	lr, pc
	bx	r3
	b	.L314
.L325:
	ldr	r3, .L329+48
	mov	lr, pc
	bx	r3
	b	.L314
.L324:
	ldr	r3, .L329+52
	mov	lr, pc
	bx	r3
	b	.L314
.L323:
	ldr	r3, .L329+56
	mov	lr, pc
	bx	r3
	b	.L314
.L322:
	ldr	r3, .L329+60
	mov	lr, pc
	bx	r3
	b	.L314
.L321:
	ldr	r3, .L329+64
	mov	lr, pc
	bx	r3
	b	.L314
.L320:
	ldr	r3, .L329+68
	mov	lr, pc
	bx	r3
	b	.L314
.L326:
	ldr	r3, .L329+72
	mov	lr, pc
	bx	r3
	b	.L314
.L330:
	.align	2
.L329:
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
	.comm	hair,108,4
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
