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
	.file	"game.c"
	.text
	.align	2
	.global	initBG
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBG, %function
initBG:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	mov	r1, #28
	str	lr, [sp, #-4]!
	ldr	ip, .L4
	ldr	lr, .L4+4
	ldr	r0, .L4+8
	ldr	r2, .L4+12
	str	r3, [lr]
	str	r3, [ip]
	str	r3, [r0]
	str	r1, [r2]
	ldr	lr, [sp], #4
	bx	lr
.L5:
	.align	2
.L4:
	.word	vOff
	.word	hOff
	.word	steven
	.word	screenBlock
	.size	initBG, .-initBG
	.align	2
	.global	updateBG
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBG, %function
updateBG:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L22
	ldr	r1, [r2]
	cmp	r1, #256
	str	lr, [sp, #-4]!
	ble	.L7
	mov	lr, #67108864
	ldr	ip, .L22+4
	ldr	r0, [ip]
	add	r0, r0, #1
	lsl	r3, r0, #24
	orr	r3, r3, #1073741824
	orr	r3, r3, #8388608
	sub	r1, r1, #256
	lsr	r3, r3, #16
	str	r1, [r2]
	str	r0, [ip]
	strh	r3, [lr, #8]	@ movhi
.L7:
	ldr	r2, .L22+8
	ldr	r3, [r2]
	cmp	r3, #512
	subgt	r3, r3, #512
	strgt	r3, [r2]
	ldr	r3, .L22+12
	add	ip, r3, #32
.L10:
	ldr	r0, [r3], #4
	ldr	r2, [r0]
	cmp	r2, #512
	ble	.L9
	cmp	r1, #0
	subeq	r2, r2, #512
	streq	r2, [r0]
.L9:
	cmp	r3, ip
	bne	.L10
	ldr	r3, .L22+16
	add	ip, r3, #32
.L12:
	ldr	r0, [r3], #4
	ldr	r2, [r0]
	cmp	r2, #512
	ble	.L11
	cmp	r1, #0
	subeq	r2, r2, #512
	streq	r2, [r0]
.L11:
	cmp	ip, r3
	bne	.L12
	ldr	r3, .L22+20
	add	r0, r3, #540
.L14:
	ldr	r2, [r3]
	cmp	r2, #512
	ble	.L13
	cmp	r1, #0
	subge	r2, r2, #512
	strge	r2, [r3]
.L13:
	add	r3, r3, #108
	cmp	r3, r0
	bne	.L14
	ldr	r3, .L22+24
	add	r0, r3, #324
.L16:
	ldr	r2, [r3]
	cmp	r2, #512
	ble	.L15
	cmp	r1, #0
	subge	r2, r2, #512
	strge	r2, [r3]
.L15:
	add	r3, r3, #108
	cmp	r3, r0
	bne	.L16
	mov	r3, #67108864
	ldr	r2, .L22+28
	lsl	r1, r1, #16
	ldrh	r2, [r2]
	lsr	r1, r1, #16
	strh	r1, [r3, #16]	@ movhi
	ldr	lr, [sp], #4
	strh	r2, [r3, #18]	@ movhi
	bx	lr
.L23:
	.align	2
.L22:
	.word	hOff
	.word	screenBlock
	.word	steven
	.word	.LANCHOR0
	.word	.LANCHOR0+32
	.word	bubbles
	.word	lives
	.word	vOff
	.size	updateBG, .-updateBG
	.align	2
	.global	drawBG
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBG, %function
drawBG:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	drawBG, .-drawBG
	.align	2
	.global	initBubbles
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBubbles, %function
initBubbles:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r6, #1
	mov	r0, #8
	mov	r1, #3
	mov	lr, #0
	ldr	r2, .L29
	ldr	ip, .L29+4
	ldr	r3, [r2, #72]
	ldr	r4, [r2, #48]
	ldr	r5, [r2, #68]
	add	r7, r3, r3, lsr #31
	ldr	ip, [ip]
	ldr	r2, [r2, #52]
	ldr	r3, .L29+8
	add	r5, r5, r5, lsr #31
	add	r4, r4, r7, asr r6
	add	r2, r2, r5, asr r6
	sub	ip, r4, ip
	add	r5, r3, #540
.L26:
	str	r0, [r3, #96]
	str	r1, [r3, #100]
	str	lr, [r3]
	str	r4, [r3, #48]
	str	r2, [r3, #52]
	str	r2, [r3, #40]
	str	ip, [r3, #44]
	str	r2, [r3, #24]
	str	ip, [r3, #28]
	str	r0, [r3, #72]
	str	r0, [r3, #68]
	str	r1, [r3, #60]
	str	r1, [r3, #64]
	str	lr, [r3, #56]
	str	r6, [r3, #104]
	add	r3, r3, #108
	cmp	r3, r5
	bne	.L26
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L30:
	.align	2
.L29:
	.word	steven
	.word	vOff
	.word	bubbles
	.size	initBubbles, .-initBubbles
	.align	2
	.global	updateBubble
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBubble, %function
updateBubble:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #56]
	cmp	r3, #0
	str	lr, [sp, #-4]!
	beq	.L32
	ldr	r3, [r0, #12]
	cmp	r3, #1
	beq	.L43
	cmp	r3, #2
	beq	.L44
	cmp	r3, #3
	bne	.L37
	ldr	r2, [r0, #60]
	ldr	r3, [r0, #40]
	add	r3, r2, r3
	cmp	r3, #159
	bgt	.L32
	ldr	r1, [r0, #72]
	rsb	r1, r1, #0
	cmp	r3, r1
	bgt	.L45
.L32:
	mov	r2, #0
	mov	r3, #1
	str	r2, [r0, #56]
	str	r3, [r0, #104]
.L34:
	ldr	r2, .L46
	ldr	r3, .L46+4
	ldr	lr, [r2]
	add	ip, r3, #540
.L36:
	add	r1, r3, #48
	ldm	r1, {r1, r2}
	ldr	r0, [r3]
	sub	r1, r1, lr
	sub	r2, r2, r0
	str	r1, [r3, #40]
	str	r2, [r3, #44]
	add	r3, r3, #108
	cmp	ip, r3
	bne	.L36
	ldr	lr, [sp], #4
	bx	lr
.L43:
	ldr	r2, [r0, #64]
	ldr	r3, [r0, #44]
	add	r3, r2, r3
	cmp	r3, #1024
	bge	.L32
	ldr	r1, [r0, #68]
	rsb	r1, r1, #0
	cmp	r3, r1
	ble	.L32
	ldr	r3, [r0]
	cmp	r3, #0
	ble	.L32
	ldr	r3, [r0, #52]
	sub	r2, r3, r2
	str	r2, [r0, #52]
	b	.L34
.L44:
	ldr	r1, [r0, #64]
	ldr	r3, [r0, #44]
	ldr	r2, [r0, #68]
	add	r3, r1, r3
	add	ip, r2, #1024
	cmp	r3, ip
	bgt	.L32
	rsb	r2, r2, #0
	cmp	r3, r2
	ble	.L32
	ldr	r3, [r0]
	cmp	r3, #1024
	bge	.L32
	ldr	r3, [r0, #52]
	add	r1, r3, r1
	str	r1, [r0, #52]
	b	.L34
.L45:
	ldr	r3, [r0, #48]
	sub	r2, r3, r2
	str	r2, [r0, #48]
	b	.L34
.L37:
	cmp	r3, #4
	bne	.L32
	ldr	r1, [r0, #60]
	ldr	r3, [r0, #40]
	ldr	r2, [r0, #72]
	add	r3, r1, r3
	add	ip, r2, #160
	cmp	r3, ip
	bgt	.L32
	rsb	r2, r2, #0
	cmp	r3, r2
	ble	.L32
	ldr	r3, [r0, #48]
	add	r1, r3, r1
	str	r1, [r0, #48]
	b	.L34
.L47:
	.align	2
.L46:
	.word	vOff
	.word	bubbles
	.size	updateBubble, .-updateBubble
	.align	2
	.global	throwLeft
	.syntax unified
	.arm
	.fpu softvfp
	.type	throwLeft, %function
throwLeft:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L59
	mov	r2, r0
	ldr	r1, [r2, #56]
	cmp	r1, #0
	mov	r3, #0
	beq	.L58
.L49:
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #108
	bxeq	lr
	ldr	r1, [r2, #56]
	cmp	r1, #0
	bne	.L49
.L58:
	push	{r4, lr}
	mov	r4, #1
	ldr	lr, .L59+4
	ldr	r2, [lr, #72]
	add	ip, r2, r2, lsr #31
	ldr	r2, [lr, #48]
	add	r3, r3, r3, lsl r4
	add	r2, r2, ip, asr r4
	add	r3, r3, r3, lsl #3
	ldr	ip, [lr, #52]
	add	r3, r0, r3, lsl #2
	sub	r2, r2, #4
	str	r4, [r3, #56]
	str	r4, [r3, #12]
	str	r1, [r3, #104]
	str	r2, [r3, #48]
	str	ip, [r3, #52]
	pop	{r4, lr}
	bx	lr
.L60:
	.align	2
.L59:
	.word	bubbles
	.word	steven
	.size	throwLeft, .-throwLeft
	.align	2
	.global	throwRight
	.syntax unified
	.arm
	.fpu softvfp
	.type	throwRight, %function
throwRight:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L72
	mov	r2, r0
	ldr	r1, [r2, #56]
	cmp	r1, #0
	mov	r3, #0
	beq	.L71
.L62:
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #108
	bxeq	lr
	ldr	r1, [r2, #56]
	cmp	r1, #0
	bne	.L62
.L71:
	push	{r4, r5, lr}
	mov	r4, #1
	mov	r5, #2
	ldr	ip, .L72+4
	ldr	r2, [ip, #72]
	add	r3, r3, r3, lsl r4
	add	lr, r2, r2, lsr #31
	add	r3, r3, r3, lsl #3
	ldr	r2, [ip, #48]
	add	r3, r0, r3, lsl r5
	ldr	r0, [ip, #52]
	ldr	ip, [ip, #68]
	add	r2, r2, lr, asr r4
	sub	r2, r2, #4
	add	r0, r0, ip
	str	r5, [r3, #12]
	str	r4, [r3, #56]
	str	r1, [r3, #104]
	str	r2, [r3, #48]
	str	r0, [r3, #52]
	pop	{r4, r5, lr}
	bx	lr
.L73:
	.align	2
.L72:
	.word	bubbles
	.word	steven
	.size	throwRight, .-throwRight
	.align	2
	.global	throwUp
	.syntax unified
	.arm
	.fpu softvfp
	.type	throwUp, %function
throwUp:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L85
	mov	r2, r0
	ldr	r1, [r2, #56]
	cmp	r1, #0
	mov	r3, #0
	beq	.L84
.L75:
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #108
	bxeq	lr
	ldr	r1, [r2, #56]
	cmp	r1, #0
	bne	.L75
.L84:
	push	{r4, r5, lr}
	mov	lr, #1
	mov	r4, #3
	ldr	r5, .L85+4
	add	r3, r3, r3, lsl lr
	ldr	r2, [r5, #68]
	add	r3, r3, r3, lsl r4
	add	r3, r0, r3, lsl #2
	ldr	ip, [r5, #48]
	ldr	r0, [r5, #52]
	add	r2, r2, r2, lsr #31
	add	ip, ip, r4
	add	r2, r0, r2, asr lr
	str	r4, [r3, #12]
	str	lr, [r3, #56]
	str	r1, [r3, #104]
	str	ip, [r3, #48]
	str	r2, [r3, #52]
	pop	{r4, r5, lr}
	bx	lr
.L86:
	.align	2
.L85:
	.word	bubbles
	.word	steven
	.size	throwUp, .-throwUp
	.align	2
	.global	throwDown
	.syntax unified
	.arm
	.fpu softvfp
	.type	throwDown, %function
throwDown:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L98
	mov	r2, r0
	ldr	r1, [r2, #56]
	cmp	r1, #0
	mov	r3, #0
	beq	.L97
.L88:
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #108
	bxeq	lr
	ldr	r1, [r2, #56]
	cmp	r1, #0
	bne	.L88
.L97:
	mov	ip, #1
	str	lr, [sp, #-4]!
	mov	lr, #4
	ldr	r2, .L98+4
	add	r3, r3, r3, lsl ip
	add	r3, r3, r3, lsl #3
	add	r3, r0, r3, lsl #2
	add	r0, r2, #48
	ldm	r0, {r0, r2}
	add	r2, r2, lr
	add	r0, r0, #11
	str	lr, [r3, #12]
	str	r1, [r3, #104]
	str	r0, [r3, #48]
	str	r2, [r3, #52]
	str	ip, [r3, #56]
	ldr	lr, [sp], #4
	bx	lr
.L99:
	.align	2
.L98:
	.word	bubbles
	.word	steven
	.size	throwDown, .-throwDown
	.align	2
	.global	throwBubble
	.syntax unified
	.arm
	.fpu softvfp
	.type	throwBubble, %function
throwBubble:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L106
	mov	r2, r0
	ldr	r1, [r2, #56]
	cmp	r1, #0
	mov	r3, #0
	beq	.L105
.L101:
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #108
	bxeq	lr
	ldr	r1, [r2, #56]
	cmp	r1, #0
	bne	.L101
.L105:
	mov	r2, #1
	add	r3, r3, r3, lsl r2
	add	r3, r3, r3, lsl #3
	add	r3, r0, r3, lsl #2
	str	r2, [r3, #56]
	bx	lr
.L107:
	.align	2
.L106:
	.word	bubbles
	.size	throwBubble, .-throwBubble
	.align	2
	.global	drawBubble
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBubble, %function
drawBubble:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L114
	push	{r4, r5, lr}
	ldr	r2, .L114+4
	ldr	r5, .L114+8
	add	ip, r3, #540
.L111:
	ldr	r1, [r3, #104]
	cmp	r1, #0
	beq	.L109
	ldrh	r1, [r2, #160]
	orr	r1, r1, #512
	strh	r1, [r2, #160]	@ movhi
.L110:
	add	r3, r3, #108
	cmp	r3, ip
	add	r2, r2, #8
	bne	.L111
	pop	{r4, r5, lr}
	bx	lr
.L109:
	ldr	r0, [r3, #44]
	ldr	r4, [r3, #96]
	ldr	r1, [r3, #100]
	ldrb	lr, [r3, #40]	@ zero_extendqisi2
	and	r0, r0, r5
	add	r1, r1, r4, lsl #5
	strh	r0, [r2, #162]	@ movhi
	strh	r1, [r2, #164]	@ movhi
	strh	lr, [r2, #160]	@ movhi
	b	.L110
.L115:
	.align	2
.L114:
	.word	bubbles
	.word	shadowOAM
	.word	511
	.size	drawBubble, .-drawBubble
	.align	2
	.global	initLives
	.syntax unified
	.arm
	.fpu softvfp
	.type	initLives, %function
initLives:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r5, #3
	mov	r2, #180
	mov	ip, #0
	mov	r0, #16
	mov	r4, #1
	mov	r1, #4
	mov	lr, #8
	ldr	r3, .L120
	str	r5, [r3]
	ldr	r3, .L120+4
.L117:
	str	r2, [r3, #44]
	add	r2, r2, #20
	cmp	r2, #240
	str	ip, [r3]
	str	r0, [r3, #72]
	str	r0, [r3, #68]
	str	r4, [r3, #56]
	str	r1, [r3, #40]
	str	lr, [r3, #96]
	str	r1, [r3, #100]
	str	ip, [r3, #104]
	add	r3, r3, #108
	bne	.L117
	pop	{r4, r5, lr}
	bx	lr
.L121:
	.align	2
.L120:
	.word	livesLeft
	.word	lives
	.size	initLives, .-initLives
	.align	2
	.global	updateLives
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateLives, %function
updateLives:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L128
	push	{r4, lr}
	ldr	r4, [r3]
	cmp	r4, #2
	beq	.L127
	cmp	r4, #1
	bne	.L125
	ldr	r3, .L128+4
	str	r4, [r3, #212]
.L122:
	pop	{r4, lr}
	bx	lr
.L125:
	cmp	r4, #0
	bne	.L122
	mov	r1, #1
	ldr	r2, .L128+4
	ldr	r3, .L128+8
	str	r1, [r2, #104]
	mov	lr, pc
	bx	r3
	ldr	r3, .L128+12
	str	r4, [r3]
	pop	{r4, lr}
	bx	lr
.L127:
	mov	r2, #1
	ldr	r3, .L128+4
	pop	{r4, lr}
	str	r2, [r3, #320]
	bx	lr
.L129:
	.align	2
.L128:
	.word	livesLeft
	.word	lives
	.word	goToLoseState
	.word	vOff
	.size	updateLives, .-updateLives
	.align	2
	.global	drawLives
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawLives, %function
drawLives:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L136
	push	{r4, r5, lr}
	ldr	r2, .L136+4
	ldr	r5, .L136+8
	add	ip, r3, #324
.L133:
	ldr	r1, [r3, #104]
	cmp	r1, #0
	beq	.L131
	ldrh	r1, [r2, #8]
	orr	r1, r1, #512
	strh	r1, [r2, #8]	@ movhi
.L132:
	add	r3, r3, #108
	cmp	r3, ip
	add	r2, r2, #8
	bne	.L133
	pop	{r4, r5, lr}
	bx	lr
.L131:
	ldr	r1, [r3, #44]
	ldr	r4, [r3, #96]
	ldr	r0, [r3, #100]
	and	r1, r1, r5
	ldrb	lr, [r3, #40]	@ zero_extendqisi2
	orr	r1, r1, #16384
	add	r0, r0, r4, lsl #5
	strh	r1, [r2, #10]	@ movhi
	strh	r0, [r2, #12]	@ movhi
	strh	lr, [r2, #8]	@ movhi
	b	.L132
.L137:
	.align	2
.L136:
	.word	lives
	.word	shadowOAM
	.word	511
	.size	drawLives, .-drawLives
	.align	2
	.global	initSteven
	.syntax unified
	.arm
	.fpu softvfp
	.type	initSteven, %function
initSteven:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r5, #60
	mov	r2, #0
	mov	r1, #1
	mov	r4, #2
	mov	lr, #3
	mov	ip, #16
	ldr	r0, .L140
	ldr	r0, [r0]
	ldr	r3, .L140+4
	sub	r0, r5, r0
	str	r0, [r3, #40]
	ldr	r0, [r3]
	rsb	r0, r0, #0
	str	r5, [r3, #48]
	str	r4, [r3, #80]
	str	lr, [r3, #92]
	str	r0, [r3, #44]
	str	r2, [r3, #52]
	str	r2, [r3, #88]
	str	r2, [r3, #104]
	str	r2, [r3, #76]
	str	ip, [r3, #72]
	str	ip, [r3, #68]
	str	r1, [r3, #60]
	str	r1, [r3, #64]
	str	r1, [r3, #56]
	pop	{r4, r5, lr}
	bx	lr
.L141:
	.align	2
.L140:
	.word	vOff
	.word	steven
	.size	initSteven, .-initSteven
	.align	2
	.global	animateSteven
	.syntax unified
	.arm
	.fpu softvfp
	.type	animateSteven, %function
animateSteven:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L181
	ldr	r2, [r3, #80]
	cmp	r2, #4
	movne	r1, #4
	push	{r4, r5, lr}
	strne	r2, [r3, #84]
	strne	r1, [r3, #80]
	ldr	r2, .L181+4
	ldr	r1, [r3, #76]
	smull	r4, r5, r1, r2
	sub	r2, r5, r1, asr #31
	add	r2, r2, r2, lsl #1
	subs	r2, r1, r2
	bne	.L145
	add	r0, r3, #88
	ldm	r0, {r0, ip}
	add	r0, r0, #1
	cmp	r0, ip
	str	r0, [r3, #88]
	strge	r2, [r3, #88]
.L145:
	ldr	r2, .L181+8
	ldrh	r2, [r2, #48]
	tst	r2, #64
	bne	.L147
	ldr	r2, [r3, #48]
	cmp	r2, #0
	movgt	r0, #3
	ldrgt	ip, [r3, #60]
	subgt	r2, r2, ip
	strgt	r2, [r3, #48]
	strgt	r0, [r3, #80]
.L147:
	ldr	r2, .L181+8
	ldrh	r2, [r2, #48]
	ands	r2, r2, #128
	bne	.L149
	ldr	ip, [r3, #48]
	ldr	r0, [r3, #72]
	add	r0, ip, r0
	cmp	r0, #159
	str	r2, [r3, #80]
	ldrle	r2, [r3, #60]
	addle	ip, r2, ip
	strle	ip, [r3, #48]
.L149:
	ldr	r2, .L181+8
	ldrh	r0, [r2, #48]
	tst	r0, #32
	bne	.L151
	mov	r0, #1
	ldr	r2, [r3, #52]
	cmp	r2, #0
	str	r0, [r3, #80]
	ldrgt	r0, [r3, #64]
	subgt	r2, r2, r0
	strgt	r2, [r3, #52]
	ldr	r2, [r3, #44]
	cmp	r2, #99
	bgt	.L153
	ldr	lr, .L181+12
	ldr	r2, [r3]
	ldr	ip, [lr]
	sub	r2, r2, #1
	ldr	r0, .L181+16
	sub	ip, ip, #1
	str	r2, [r3]
	str	ip, [lr]
	add	lr, r0, #32
.L154:
	ldr	ip, [r0], #4
	ldr	r2, [ip]
	cmp	r0, lr
	sub	r2, r2, #1
	str	r2, [ip]
	bne	.L154
	ldr	r0, .L181+20
	add	lr, r0, #32
.L155:
	ldr	ip, [r0], #4
	ldr	r2, [ip]
	cmp	r0, lr
	sub	r2, r2, #1
	str	r2, [ip]
	bne	.L155
	ldr	r2, .L181+24
	add	ip, r2, #540
.L156:
	ldr	r0, [r2]
	sub	r0, r0, #1
	str	r0, [r2], #108
	cmp	r2, ip
	bne	.L156
	ldr	r2, .L181+28
	ldr	lr, [r2]
	ldr	ip, [r2, #108]
	ldr	r0, [r2, #216]
	sub	lr, lr, #1
	sub	ip, ip, #1
	sub	r0, r0, #1
	str	lr, [r2]
	str	ip, [r2, #108]
	str	r0, [r2, #216]
.L153:
	ldr	r2, .L181+8
	ldrh	r2, [r2, #48]
	tst	r2, #16
	beq	.L165
.L161:
	add	r1, r1, #1
	str	r1, [r3, #76]
	pop	{r4, r5, lr}
	bx	lr
.L151:
	ldrh	r2, [r2, #48]
	tst	r2, #16
	bne	.L157
.L165:
	mov	ip, #2
	ldr	r0, [r3, #52]
	ldr	r2, [r3, #68]
	ldr	lr, .L181+32
	add	r2, r0, r2
	cmp	r2, lr
	ldrle	r2, [r3, #64]
	addle	r0, r2, r0
	ldr	r2, .L181+36
	ldr	r2, [r2]
	strle	r0, [r3, #52]
	cmp	r2, #31
	str	ip, [r3, #80]
	beq	.L180
	cmp	r2, #30
	bgt	.L161
	ldr	ip, .L181+12
	ldr	r0, .L181+40
	ldr	r2, [ip]
	cmp	r2, r0
	bgt	.L161
	ldr	r0, [r3, #44]
	cmp	r0, #80
	ble	.L161
	b	.L160
.L157:
	ldr	r2, [r3, #80]
	cmp	r2, #4
	bne	.L161
	mov	r1, #0
	ldr	r2, [r3, #84]
	str	r1, [r3, #88]
	str	r2, [r3, #80]
	pop	{r4, r5, lr}
	bx	lr
.L180:
	ldr	ip, .L181+12
	ldr	r2, [ip]
	cmp	r2, #16
	bgt	.L161
.L160:
	ldr	lr, [r3]
	add	r2, r2, #1
	ldr	r0, .L181+16
	add	lr, lr, #1
	str	r2, [ip]
	str	lr, [r3]
	add	lr, r0, #32
.L162:
	ldr	ip, [r0], #4
	ldr	r2, [ip]
	cmp	r0, lr
	add	r2, r2, #1
	str	r2, [ip]
	bne	.L162
	ldr	r0, .L181+20
	add	lr, r0, #32
.L163:
	ldr	ip, [r0], #4
	ldr	r2, [ip]
	cmp	lr, r0
	add	r2, r2, #1
	str	r2, [ip]
	bne	.L163
	ldr	r2, .L181+24
	add	ip, r2, #540
.L164:
	ldr	r0, [r2]
	add	r0, r0, #1
	str	r0, [r2], #108
	cmp	ip, r2
	bne	.L164
	ldr	r2, .L181+28
	ldr	lr, [r2]
	ldr	ip, [r2, #108]
	ldr	r0, [r2, #216]
	add	lr, lr, #1
	add	ip, ip, #1
	add	r0, r0, #1
	str	lr, [r2]
	str	ip, [r2, #108]
	str	r0, [r2, #216]
	b	.L161
.L182:
	.align	2
.L181:
	.word	steven
	.word	1431655766
	.word	67109120
	.word	hOff
	.word	.LANCHOR0
	.word	.LANCHOR0+32
	.word	bubbles
	.word	lives
	.word	1022
	.word	screenBlock
	.word	782
	.size	animateSteven, .-animateSteven
	.align	2
	.global	drawSteven
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawSteven, %function
drawSteven:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L186
	ldr	r1, .L186+4
	ldrb	r0, [r2, #40]	@ zero_extendqisi2
	ldr	r3, [r2, #44]
	strh	r0, [r1]	@ movhi
	ldr	r0, .L186+8
	lsl	r3, r3, #23
	ldrh	r0, [r0, #48]
	lsr	r3, r3, #23
	tst	r0, #1
	orr	r3, r3, #16384
	strh	r3, [r1, #2]	@ movhi
	ldr	r3, [r2, #80]
	ldrne	r2, [r2, #88]
	lsleq	r3, r3, #6
	addne	r3, r2, r3, lsl #5
	addeq	r3, r3, #6
	lslne	r3, r3, #1
	strh	r3, [r1, #4]	@ movhi
	bx	lr
.L187:
	.align	2
.L186:
	.word	steven
	.word	shadowOAM
	.word	67109120
	.size	drawSteven, .-drawSteven
	.align	2
	.global	initEnemies
	.syntax unified
	.arm
	.fpu softvfp
	.type	initEnemies, %function
initEnemies:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, #1
	mov	r4, #0
	mov	fp, #67
	mov	r10, #177
	mov	r8, #268
	mov	r9, #62
	ldr	lr, .L192
	str	fp, [lr, #48]
	str	fp, [lr, #32]
	str	r10, [lr, #52]
	str	r10, [lr, #36]
	str	r5, [lr, #56]
	str	r4, [lr, #104]
	ldr	lr, .L192+4
	str	r8, [lr, #52]
	str	r8, [lr, #36]
	str	r9, [lr, #48]
	str	r9, [lr, #32]
	str	r5, [lr, #56]
	str	r4, [lr, #104]
	ldr	lr, .L192+8
	mov	r7, #45
	str	r4, [lr, #104]
	mov	r3, r4
	ldr	r4, .L192+12
	str	r4, [lr, #52]
	str	r4, [lr, #36]
	mov	r4, #440
	str	r7, [lr, #48]
	str	r7, [lr, #32]
	mov	r6, #15
	str	r5, [lr, #56]
	ldr	lr, .L192+16
	str	r4, [lr, #52]
	str	r4, [lr, #36]
	mov	r4, #105
	str	r6, [lr, #48]
	str	r6, [lr, #32]
	ldr	lr, .L192+20
	str	r4, [lr, #48]
	str	r4, [lr, #32]
	ldr	r4, .L192+24
	str	r4, [lr, #52]
	str	r4, [lr, #36]
	mov	r4, #40
	ldr	lr, .L192+28
	str	r4, [lr, #48]
	str	r4, [lr, #32]
	ldr	r4, .L192+32
	str	r4, [lr, #52]
	str	r4, [lr, #36]
	mov	lr, #28
	ldr	r4, .L192+36
	mov	ip, r5
	ldr	r5, .L192+40
	str	lr, [r4, #48]
	str	r5, [r4, #52]
	str	lr, [r4, #32]
	ldr	lr, .L192+44
	str	r5, [r4, #36]
	ldr	r4, [lr]
	rsb	r5, r4, #66
	str	r5, [lr, #24]
	mov	r5, #66
	mov	r6, #800
	mov	r1, #16
	mov	r0, #8
	mov	r2, #2
	rsb	r4, r4, #800
	str	r4, [lr, #28]
	ldr	r4, .L192+48
	str	r5, [lr, #48]
	str	r5, [lr, #32]
	ldr	r5, .L192+52
	str	r6, [lr, #52]
	str	r6, [lr, #36]
	ldr	r8, [r4]
	add	r7, r5, #32
.L189:
	ldr	lr, [r5], #4
	add	r4, lr, #48
	ldm	r4, {r4, r6}
	cmp	r5, r7
	sub	r4, r4, r8
	str	ip, [lr, #56]
	str	r3, [lr, #104]
	str	r3, [lr]
	str	r1, [lr, #68]
	str	r1, [lr, #72]
	str	r0, [lr, #96]
	str	r3, [lr, #100]
	str	r2, [lr, #60]
	str	r2, [lr, #64]
	str	r3, [lr, #16]
	str	r4, [lr, #40]
	str	r6, [lr, #44]
	bne	.L189
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L193:
	.align	2
.L192:
	.word	yDiamond
	.word	bDiamond
	.word	wDiamond
	.word	353
	.word	spinel
	.word	jasper
	.word	490
	.word	aquamarine
	.word	645
	.word	topaz
	.word	703
	.word	eyeball
	.word	vOff
	.word	.LANCHOR0+32
	.size	initEnemies, .-initEnemies
	.align	2
	.global	drawEnemies
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawEnemies, %function
drawEnemies:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L208
	ldr	r1, .L208+4
	add	ip, r3, #64
.L202:
	ldr	r2, [r1], #4
	ldr	r0, [r2, #104]
	cmp	r0, #0
	bne	.L203
	ldr	r0, [r2, #44]
	cmp	r0, #240
	bls	.L205
.L203:
	ldrh	r2, [r3, #96]
	orr	r2, r2, #512
	strh	r2, [r3, #96]	@ movhi
	add	r3, r3, #8
	cmp	r3, ip
	bne	.L202
	bx	lr
.L205:
	push	{r4, lr}
.L196:
	ldr	lr, [r2, #16]
	cmp	lr, #0
	bne	.L198
	ldr	lr, [r2, #40]
	cmp	lr, #160
	bhi	.L197
	ldr	r4, [r2, #96]
	ldr	r2, [r2, #100]
	orr	r0, r0, #16384
	add	r2, r2, r4, lsl #5
	strh	r0, [r3, #98]	@ movhi
	strh	lr, [r3, #96]	@ movhi
	strh	r2, [r3, #100]	@ movhi
	add	r3, r3, #8
	cmp	r3, ip
	beq	.L207
.L199:
	ldr	r2, [r1], #4
	ldr	r0, [r2, #104]
	cmp	r0, #0
	bne	.L195
	ldr	r0, [r2, #44]
	cmp	r0, #240
	bls	.L196
.L195:
	ldrh	r2, [r3, #96]
	orr	r2, r2, #512
	strh	r2, [r3, #96]	@ movhi
.L197:
	add	r3, r3, #8
	cmp	r3, ip
	bne	.L199
.L207:
	pop	{r4, lr}
	bx	lr
.L198:
	cmp	lr, #1
	bne	.L197
	ldr	lr, [r2, #96]
	ldrb	r4, [r2, #40]	@ zero_extendqisi2
	ldr	r2, [r2, #100]
	add	lr, lr, #2
	orr	r0, r0, #16384
	add	r2, r2, lr, lsl #5
	strh	r0, [r3, #98]	@ movhi
	strh	r4, [r3, #96]	@ movhi
	strh	r2, [r3, #100]	@ movhi
	b	.L197
.L209:
	.align	2
.L208:
	.word	shadowOAM
	.word	.LANCHOR0+32
	.size	drawEnemies, .-drawEnemies
	.align	2
	.global	initStars
	.syntax unified
	.arm
	.fpu softvfp
	.type	initStars, %function
initStars:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	fp, #65
	ldr	r4, .L214
	str	fp, [r4, #48]
	mov	fp, #420
	mov	ip, #10
	mov	lr, #2
	str	fp, [r4, #52]
	mov	r5, #70
	mov	r8, #4
	mov	fp, #125
	mov	r7, #3
	mov	r6, #20
	str	lr, [r4, #8]
	str	ip, [r4, #4]
	ldr	r4, .L214+4
	str	r8, [r4, #8]
	str	r5, [r4, #48]
	str	ip, [r4, #4]
	str	fp, [r4, #52]
	ldr	r8, .L214+8
	ldr	r4, .L214+12
	str	r4, [r8, #52]
	ldr	r4, .L214+16
	mov	r10, #1000
	str	r7, [r4, #8]
	str	r7, [r8, #8]
	mov	r7, #9
	str	r6, [r4, #48]
	str	r6, [r4, #32]
	mov	r6, #95
	str	r7, [r4, #4]
	str	r10, [r4, #52]
	ldr	r4, .L214+20
	str	r6, [r4, #48]
	mov	r6, #860
	str	r6, [r4, #52]
	mov	r6, #38
	mov	r9, #115
	mov	r0, lr
	mov	r1, #1
	mov	r2, #0
	mov	r3, #8
	ldr	r7, .L214+24
	stmib	r4, {ip, lr}
	str	r5, [r7, #48]
	ldr	r4, .L214+28
	str	r5, [r8, #48]
	ldr	r5, .L214+32
	str	r6, [r4, #48]
	str	r5, [r7, #52]
	ldr	r6, .L214+36
	ldr	r5, .L214+40
	stmib	r7, {ip, lr}
	stmib	r4, {ip, lr}
	str	ip, [r8, #4]
	str	r10, [r5, #52]
	str	r9, [r5, #48]
	str	r9, [r5, #32]
	str	r6, [r4, #52]
	ldr	r6, .L214+44
	ldr	r4, .L214+48
	str	ip, [r5, #4]
	str	lr, [r5, #8]
	ldr	r7, [r6]
	add	r6, r4, #32
.L211:
	ldr	ip, [r4], #4
	ldr	lr, [ip, #48]
	ldr	r5, [ip, #52]
	sub	lr, lr, r7
	cmp	r4, r6
	str	r1, [ip, #56]
	str	r2, [ip, #104]
	str	r2, [ip]
	str	r3, [ip, #68]
	str	r3, [ip, #72]
	str	r3, [ip, #96]
	str	r0, [ip, #100]
	str	r1, [ip, #60]
	str	r1, [ip, #64]
	str	r2, [ip, #16]
	str	lr, [ip, #40]
	str	r5, [ip, #44]
	bne	.L211
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L215:
	.align	2
.L214:
	.word	jungleBase
	.word	zoo
	.word	garden
	.word	550
	.word	earth
	.word	kindergarten
	.word	island
	.word	arena
	.word	623
	.word	935
	.word	desert
	.word	vOff
	.word	.LANCHOR0
	.size	initStars, .-initStars
	.align	2
	.global	initGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #28
	mov	r4, #0
	ldr	ip, .L220
	ldr	r0, .L220+4
	ldr	r1, .L220+8
	ldr	r3, .L220+12
	mov	r5, #3
	str	r4, [ip]
	str	r4, [r0]
	str	r4, [r1]
	str	r2, [r3]
	bl	initSteven
	bl	initEnemies
	bl	initStars
	mov	r1, r4
	mov	r2, #180
	mov	ip, #16
	mov	r4, #1
	mov	r0, #4
	mov	lr, #8
	ldr	r3, .L220+16
	str	r5, [r3]
	ldr	r3, .L220+20
.L217:
	str	r2, [r3, #44]
	add	r2, r2, #20
	cmp	r2, #240
	str	r1, [r3]
	str	ip, [r3, #72]
	str	ip, [r3, #68]
	str	r4, [r3, #56]
	str	r0, [r3, #40]
	str	lr, [r3, #96]
	str	r0, [r3, #100]
	str	r1, [r3, #104]
	add	r3, r3, #108
	bne	.L217
	pop	{r4, r5, r6, lr}
	b	initBubbles
.L221:
	.align	2
.L220:
	.word	hOff
	.word	vOff
	.word	steven
	.word	screenBlock
	.word	livesLeft
	.word	lives
	.size	initGame, .-initGame
	.align	2
	.global	drawStars
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawStars, %function
drawStars:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L232
	push	{r4, r5, r6, lr}
	ldr	r1, .L232+4
	ldr	r4, .L232+8
	add	ip, r3, #64
	b	.L228
.L223:
	ldrh	r2, [r3, #32]
	orr	r2, r2, #512
	strh	r2, [r3, #32]	@ movhi
.L225:
	add	r3, r3, #8
	cmp	r3, ip
	beq	.L231
.L228:
	ldr	r2, [r1], #4
	ldr	r0, [r2, #104]
	cmp	r0, #0
	bne	.L223
	ldr	r0, [r2, #44]
	cmp	r0, #240
	bhi	.L223
	ldrh	lr, [r4, #48]
	tst	lr, #2
	bne	.L226
	ldmib	r2, {r6, lr}
	ldrb	r5, [r2, #40]	@ zero_extendqisi2
	add	r2, lr, r6, lsl #5
	strh	r2, [r3, #36]	@ movhi
	strh	r5, [r3, #32]	@ movhi
	strh	r0, [r3, #34]	@ movhi
	add	r3, r3, #8
	cmp	r3, ip
	bne	.L228
.L231:
	pop	{r4, r5, r6, lr}
	bx	lr
.L226:
	ldr	lr, [r2, #16]
	cmp	lr, #0
	bne	.L227
	add	r6, r2, #96
	ldm	r6, {r6, lr}
	ldr	r5, [r2, #40]
	add	r2, lr, r6, lsl #5
	strh	r2, [r3, #36]	@ movhi
	strh	r5, [r3, #32]	@ movhi
	strh	r0, [r3, #34]	@ movhi
	b	.L225
.L227:
	cmp	lr, #1
	bne	.L225
	add	r5, r2, #96
	ldm	r5, {r5, lr}
	ldr	r6, [r2, #40]
	add	r5, r5, #1
	add	r2, lr, r5, lsl #5
	strh	r2, [r3, #36]	@ movhi
	strh	r6, [r3, #32]	@ movhi
	strh	r0, [r3, #34]	@ movhi
	b	.L225
.L233:
	.align	2
.L232:
	.word	shadowOAM
	.word	.LANCHOR0
	.word	67109120
	.size	drawStars, .-drawStars
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L236
	bl	drawSteven
	bl	drawEnemies
	bl	drawStars
	bl	drawLives
	mov	r0, r4
	bl	drawBubble
	add	r0, r4, #108
	bl	drawBubble
	add	r0, r4, #216
	bl	drawBubble
	add	r0, r4, #324
	bl	drawBubble
	add	r0, r4, #432
	bl	drawBubble
	ldr	r3, .L236+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L236+8
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L236+12
	mov	r0, #3
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L237:
	.align	2
.L236:
	.word	bubbles
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.size	drawGame, .-drawGame
	.align	2
	.global	moveRect
	.syntax unified
	.arm
	.fpu softvfp
	.type	moveRect, %function
moveRect:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, [r0, #48]
	cmp	ip, r1
	push	{r4, lr}
	add	r3, r2, r3
	ldr	r4, [r0, #52]
	beq	.L259
	ldr	lr, [sp, #8]
	cmp	r3, r4
	add	lr, r1, lr
	beq	.L260
.L243:
	cmp	ip, lr
	beq	.L261
.L245:
	cmp	ip, lr
	cmple	r2, r4
	beq	.L250
.L238:
	pop	{r4, lr}
	bx	lr
.L260:
	cmp	ip, r1
	bge	.L247
	cmp	ip, lr
	bne	.L245
.L249:
	cmp	r2, r4
	bge	.L245
	ldr	r3, [r0, #64]
	sub	r4, r4, r3
	str	r4, [r0, #52]
	b	.L238
.L259:
	cmp	r2, r4
	bgt	.L240
	cmp	r3, r4
	bgt	.L262
	ldr	lr, [sp, #8]
	add	lr, ip, lr
	bne	.L243
.L247:
	cmp	ip, lr
	bge	.L243
	ldr	r3, [r0, #60]
	add	ip, r3, ip
	str	ip, [r0, #48]
	b	.L238
.L261:
	cmp	r4, r3
	ble	.L263
	cmp	r2, r4
	bne	.L238
.L250:
	cmp	ip, r1
	ldrgt	r3, [r0, #60]
	subgt	ip, ip, r3
	strgt	ip, [r0, #48]
	b	.L238
.L240:
	ldr	lr, [sp, #8]
	cmp	r3, r4
	add	lr, ip, lr
	beq	.L247
	cmp	ip, lr
	bne	.L238
	cmp	r3, r4
	blt	.L238
	mov	lr, ip
	b	.L245
.L262:
	ldr	r3, [r0, #64]
	add	r4, r3, r4
	str	r4, [r0, #52]
	b	.L238
.L263:
	mov	lr, ip
	b	.L249
	.size	moveRect, .-moveRect
	.align	2
	.global	hoverH
	.syntax unified
	.arm
	.fpu softvfp
	.type	hoverH, %function
hoverH:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	ip, [r0, #52]
	cmp	ip, r1
	sub	sp, sp, #20
	mov	r4, r0
	ldr	r3, [r0, #64]
	blt	.L265
	add	r2, r1, r2
	cmp	ip, r2
	bge	.L265
	add	ip, ip, r3
	cmp	ip, r1
	cmpgt	r2, ip
	str	ip, [r0, #52]
	ble	.L265
	ldr	r3, [r0, #16]
	cmp	r3, #1
	bne	.L264
	ldr	r0, .L273
	ldr	r3, [r0, #68]
	ldr	r2, [r0, #72]
	add	r0, r0, #48
	ldr	r5, [r4, #68]
	ldm	r0, {r0, r1}
	str	ip, [sp, #4]
	ldr	lr, [r4, #72]
	str	r5, [sp, #12]
	ldr	ip, [r4, #48]
	ldr	r5, .L273+4
	str	lr, [sp, #8]
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L264
	ldr	ip, [r4, #52]
	ldr	r3, [r4, #64]
.L265:
	sub	ip, ip, r3
	rsb	r3, r3, #0
	str	ip, [r4, #52]
	str	r3, [r4, #64]
.L264:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L274:
	.align	2
.L273:
	.word	steven
	.word	collision
	.size	hoverH, .-hoverH
	.align	2
	.global	hoverV
	.syntax unified
	.arm
	.fpu softvfp
	.type	hoverV, %function
hoverV:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	ip, [r0, #48]
	cmp	ip, r1
	sub	sp, sp, #20
	mov	r4, r0
	ldr	r3, [r0, #60]
	blt	.L276
	add	r2, r1, r2
	cmp	ip, r2
	bge	.L276
	add	ip, ip, r3
	cmp	ip, r1
	cmpgt	r2, ip
	str	ip, [r0, #48]
	ble	.L276
	ldr	r3, [r0, #16]
	cmp	r3, #1
	bne	.L275
	ldr	r0, .L284
	ldr	r3, [r0, #68]
	ldr	r2, [r0, #72]
	add	r0, r0, #48
	ldr	r5, [r4, #68]
	ldm	r0, {r0, r1}
	str	ip, [sp]
	ldr	lr, [r4, #72]
	str	r5, [sp, #12]
	ldr	ip, [r4, #52]
	ldr	r5, .L284+4
	stmib	sp, {ip, lr}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L275
	ldr	ip, [r4, #48]
	ldr	r3, [r4, #60]
.L276:
	sub	ip, ip, r3
	rsb	r3, r3, #0
	str	ip, [r4, #48]
	str	r3, [r4, #60]
.L275:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L285:
	.align	2
.L284:
	.word	steven
	.word	collision
	.size	hoverV, .-hoverV
	.align	2
	.global	hoverDP
	.syntax unified
	.arm
	.fpu softvfp
	.type	hoverDP, %function
hoverDP:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r4, r0
	ldr	ip, [r0, #48]
	cmp	ip, r1
	sub	sp, sp, #20
	ldr	r0, [r0, #60]
	ldr	lr, [r4, #52]
	ldr	r3, [r4, #64]
	blt	.L287
	add	r2, r1, r2
	cmp	ip, r2
	bge	.L287
	add	ip, ip, r0
	cmp	ip, r1
	cmpgt	r2, ip
	add	lr, lr, r3
	str	ip, [r4, #48]
	str	lr, [r4, #52]
	ble	.L287
	ldr	r3, [r4, #16]
	cmp	r3, #1
	bne	.L286
	ldr	r0, .L295
	ldr	r5, [r4, #68]
	ldr	r3, [r0, #68]
	ldr	r2, [r0, #72]
	str	lr, [sp, #4]
	add	r0, r0, #48
	ldm	r0, {r0, r1}
	str	ip, [sp]
	ldr	ip, [r4, #72]
	str	r5, [sp, #12]
	str	ip, [sp, #8]
	ldr	r5, .L295+4
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L286
	add	r0, r4, #60
	ldr	ip, [r4, #48]
	ldm	r0, {r0, r3}
	ldr	lr, [r4, #52]
.L287:
	sub	ip, ip, r0
	sub	lr, lr, r3
	rsb	r0, r0, #0
	rsb	r3, r3, #0
	str	ip, [r4, #48]
	str	r0, [r4, #60]
	str	lr, [r4, #52]
	str	r3, [r4, #64]
.L286:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L296:
	.align	2
.L295:
	.word	steven
	.word	collision
	.size	hoverDP, .-hoverDP
	.align	2
	.global	hoverDN
	.syntax unified
	.arm
	.fpu softvfp
	.type	hoverDN, %function
hoverDN:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r4, r0
	ldr	ip, [r0, #48]
	cmp	ip, r1
	sub	sp, sp, #20
	ldr	r0, [r0, #60]
	ldr	lr, [r4, #52]
	ldr	r3, [r4, #64]
	blt	.L298
	add	r2, r1, r2
	cmp	ip, r2
	bge	.L298
	add	ip, ip, r0
	cmp	ip, r1
	cmpgt	r2, ip
	sub	lr, lr, r3
	str	ip, [r4, #48]
	str	lr, [r4, #52]
	ble	.L298
	ldr	r3, [r4, #16]
	cmp	r3, #1
	bne	.L297
	ldr	r0, .L306
	ldr	r5, [r4, #68]
	ldr	r3, [r0, #68]
	ldr	r2, [r0, #72]
	str	lr, [sp, #4]
	add	r0, r0, #48
	ldm	r0, {r0, r1}
	str	ip, [sp]
	ldr	ip, [r4, #72]
	str	r5, [sp, #12]
	str	ip, [sp, #8]
	ldr	r5, .L306+4
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L297
	add	r0, r4, #60
	ldr	ip, [r4, #48]
	ldm	r0, {r0, r3}
	ldr	lr, [r4, #52]
.L298:
	sub	ip, ip, r0
	add	lr, r3, lr
	rsb	r0, r0, #0
	rsb	r3, r3, #0
	str	ip, [r4, #48]
	str	r0, [r4, #60]
	str	lr, [r4, #52]
	str	r3, [r4, #64]
.L297:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L307:
	.align	2
.L306:
	.word	steven
	.word	collision
	.size	hoverDN, .-hoverDN
	.align	2
	.global	moveRight
	.syntax unified
	.arm
	.fpu softvfp
	.type	moveRight, %function
moveRight:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #52]
	ldr	r2, [r0, #64]
	add	r3, r3, r2
	str	r3, [r0, #52]
	bx	lr
	.size	moveRight, .-moveRight
	.align	2
	.global	moveDown
	.syntax unified
	.arm
	.fpu softvfp
	.type	moveDown, %function
moveDown:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #48]
	ldr	r2, [r0, #60]
	add	r3, r3, r2
	str	r3, [r0, #48]
	bx	lr
	.size	moveDown, .-moveDown
	.align	2
	.global	moveLeft
	.syntax unified
	.arm
	.fpu softvfp
	.type	moveLeft, %function
moveLeft:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #52]
	ldr	r2, [r0, #64]
	sub	r3, r3, r2
	str	r3, [r0, #52]
	bx	lr
	.size	moveLeft, .-moveLeft
	.align	2
	.global	moveUp
	.syntax unified
	.arm
	.fpu softvfp
	.type	moveUp, %function
moveUp:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #48]
	ldr	r2, [r0, #60]
	sub	r3, r3, r2
	str	r3, [r0, #48]
	bx	lr
	.size	moveUp, .-moveUp
	.align	2
	.global	enemyCollisions
	.syntax unified
	.arm
	.fpu softvfp
	.type	enemyCollisions, %function
enemyCollisions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, .L378
	sub	sp, sp, #16
	ldr	r5, .L378+4
	ldr	r7, .L378+8
	ldr	r8, .L378+12
	add	r6, r4, #32
	b	.L316
.L314:
	cmp	r6, r4
	beq	.L370
.L316:
	ldr	r2, [r4], #4
	ldr	r3, [r2, #16]
	cmp	r3, #0
	bne	.L314
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	ip, [r2, #48]
	add	r0, r5, #48
	ldr	r3, [r5, #68]
	ldr	r2, [r5, #72]
	ldm	r0, {r0, r1}
	str	ip, [sp]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	ldrne	r3, [r8]
	subne	r3, r3, #1
	strne	r3, [r8]
	cmp	r6, r4
	bne	.L316
.L370:
	ldr	r4, .L378+16
	ldr	r2, [r4, #32]
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L371
.L318:
	ldr	r2, [r4, #36]
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L372
.L321:
	ldr	r2, [r4, #40]
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L373
.L324:
	ldr	r2, [r4, #44]
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L374
.L327:
	ldr	r2, [r4, #48]
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L375
.L330:
	ldr	r2, [r4, #52]
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L376
.L333:
	ldr	r2, [r4, #56]
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L377
.L336:
	ldr	r2, [r4, #60]
	ldr	r3, [r2, #16]
	cmp	r3, #0
	bne	.L312
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	r4, .L378+4
	ldr	ip, [r2, #48]
	add	r0, r4, #48
	ldr	r3, [r4, #68]
	ldr	r2, [r4, #72]
	ldm	r0, {r0, r1}
	ldr	r5, .L378+8
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	movne	r2, #70
	ldrne	r3, .L378+20
	strne	r2, [r4, #48]
	strne	r3, [r4, #52]
.L312:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L377:
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	r5, .L378+4
	ldr	ip, [r2, #48]
	add	r0, r5, #48
	ldr	r3, [r5, #68]
	ldr	r2, [r5, #72]
	ldm	r0, {r0, r1}
	ldr	r6, .L378+8
	str	ip, [sp]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	movne	r2, #70
	movne	r3, #73
	strne	r2, [r5, #48]
	strne	r3, [r5, #52]
	b	.L336
.L376:
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	r5, .L378+4
	ldr	ip, [r2, #48]
	add	r0, r5, #48
	ldr	r3, [r5, #68]
	ldr	r2, [r5, #72]
	ldm	r0, {r0, r1}
	ldr	r6, .L378+8
	str	ip, [sp]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	movne	r2, #30
	movne	r3, #620
	strne	r2, [r5, #48]
	strne	r3, [r5, #52]
	b	.L333
.L375:
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	r5, .L378+4
	ldr	ip, [r2, #48]
	add	r0, r5, #48
	ldr	r3, [r5, #68]
	ldr	r2, [r5, #72]
	ldm	r0, {r0, r1}
	ldr	r6, .L378+8
	str	ip, [sp]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	movne	r2, #45
	ldrne	r3, .L378+24
	strne	r2, [r5, #48]
	strne	r3, [r5, #52]
	b	.L330
.L374:
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	r5, .L378+4
	ldr	ip, [r2, #48]
	add	r0, r5, #48
	ldr	r3, [r5, #68]
	ldr	r2, [r5, #72]
	ldm	r0, {r0, r1}
	ldr	r6, .L378+8
	str	ip, [sp]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	movne	r2, #60
	movne	r3, #440
	strne	r2, [r5, #48]
	strne	r3, [r5, #52]
	b	.L327
.L373:
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	r5, .L378+4
	ldr	ip, [r2, #48]
	add	r0, r5, #48
	ldr	r3, [r5, #68]
	ldr	r2, [r5, #72]
	ldm	r0, {r0, r1}
	ldr	r6, .L378+8
	str	ip, [sp]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	movne	r2, #40
	movne	r3, #320
	strne	r2, [r5, #48]
	strne	r3, [r5, #52]
	b	.L324
.L372:
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	r5, .L378+4
	ldr	ip, [r2, #48]
	add	r0, r5, #48
	ldr	r3, [r5, #68]
	ldr	r2, [r5, #72]
	ldm	r0, {r0, r1}
	ldr	r6, .L378+8
	str	ip, [sp]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L321
	mov	r2, #60
	ldr	r3, [r4, #36]
	ldr	r3, [r3, #36]
	sub	r3, r3, #50
	str	r3, [r5, #52]
	str	r2, [r5, #48]
	b	.L321
.L371:
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	r5, .L378+4
	ldr	ip, [r2, #48]
	add	r0, r5, #48
	ldr	r3, [r5, #68]
	ldr	r2, [r5, #72]
	ldm	r0, {r0, r1}
	ldr	r6, .L378+8
	str	ip, [sp]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	movne	r2, #30
	movne	r3, #95
	strne	r2, [r5, #48]
	strne	r3, [r5, #52]
	b	.L318
.L379:
	.align	2
.L378:
	.word	.LANCHOR0+32
	.word	steven
	.word	collision
	.word	livesLeft
	.word	.LANCHOR0
	.word	765
	.word	490
	.size	enemyCollisions, .-enemyCollisions
	.align	2
	.global	updateSteven
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateSteven, %function
updateSteven:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	bl	enemyCollisions
	ldr	r3, .L397
	ldrh	r3, [r3]
	tst	r3, #1
	ldr	r4, .L397+4
	beq	.L381
	ldr	r3, .L397+8
	ldrh	r3, [r3]
	tst	r3, #1
	bne	.L381
	ldr	r2, [r4, #80]
	cmp	r2, #1
	beq	.L393
	cmp	r2, #2
	beq	.L394
	cmp	r2, #3
	beq	.L395
	add	r1, r4, #48
	cmp	r2, #0
	ldm	r1, {r1, r3}
	bne	.L383
	ldr	lr, .L397+12
	mov	r0, lr
.L387:
	ldr	ip, [r0, #56]
	cmp	ip, #0
	beq	.L396
	add	r2, r2, #1
	cmp	r2, #5
	add	r0, r0, #108
	bne	.L387
	b	.L383
.L381:
	add	r1, r4, #48
	ldm	r1, {r1, r3}
.L383:
	ldr	r2, [r4]
	sub	r3, r3, r2
	str	r1, [r4, #40]
	str	r3, [r4, #44]
	pop	{r4, r5, r6, lr}
	bx	lr
.L393:
	bl	throwLeft
	add	r1, r4, #48
	ldm	r1, {r1, r3}
	b	.L383
.L394:
	bl	throwRight
	add	r1, r4, #48
	ldm	r1, {r1, r3}
	b	.L383
.L395:
	bl	throwUp
	add	r1, r4, #48
	ldm	r1, {r1, r3}
	b	.L383
.L396:
	mov	r0, #1
	mov	r5, #4
	add	r2, r2, r2, lsl r0
	add	r2, r2, r2, lsl #3
	add	r2, lr, r2, lsl #2
	str	ip, [r2, #104]
	add	lr, r1, #11
	add	ip, r3, r5
	str	r5, [r2, #12]
	str	lr, [r2, #48]
	str	ip, [r2, #52]
	str	r0, [r2, #56]
	b	.L383
.L398:
	.align	2
.L397:
	.word	oldButtons
	.word	steven
	.word	buttons
	.word	bubbles
	.size	updateSteven, .-updateSteven
	.align	2
	.global	starCollisions
	.syntax unified
	.arm
	.fpu softvfp
	.type	starCollisions, %function
starCollisions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	starCollisions, .-starCollisions
	.align	2
	.global	bubbling
	.syntax unified
	.arm
	.fpu softvfp
	.type	bubbling, %function
bubbling:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r5, r0
	mov	r10, #0
	mov	r9, #1
	ldr	r4, .L418
	ldr	r8, .L418+4
	sub	sp, sp, #16
	add	r7, r4, #540
.L406:
	ldr	r3, [r4, #56]
	cmp	r3, #0
	beq	.L402
	ldr	r6, [r5, #16]
	cmp	r6, #0
	beq	.L415
	cmp	r6, #1
	beq	.L416
.L402:
	add	r4, r4, #108
	cmp	r4, r7
	bne	.L406
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L415:
	add	ip, r4, #68
	ldm	ip, {ip, lr}
	add	r2, r5, #68
	ldm	r2, {r2, r3}
	ldr	r1, [r5, #48]
	ldr	r0, [r5, #52]
	str	lr, [sp, #12]
	str	ip, [sp, #8]
	ldr	lr, [r4, #48]
	ldr	ip, [r4, #52]
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	bne	.L417
	ldr	r3, [r4, #56]
	cmp	r3, #0
	beq	.L402
	ldr	r6, [r5, #16]
	cmp	r6, #1
	bne	.L402
.L416:
	add	ip, r4, #68
	ldm	ip, {ip, lr}
	add	r2, r5, #68
	ldm	r2, {r2, r3}
	ldr	r1, [r5, #48]
	ldr	r0, [r5, #52]
	str	lr, [sp, #12]
	str	ip, [sp, #8]
	ldr	lr, [r4, #48]
	ldr	ip, [r4, #52]
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	strne	r10, [r5, #16]
	strne	r10, [r4, #56]
	strne	r6, [r4, #104]
	b	.L402
.L417:
	str	r9, [r5, #16]
	str	r6, [r4, #56]
	str	r9, [r4, #104]
	b	.L402
.L419:
	.align	2
.L418:
	.word	bubbles
	.word	collision
	.size	bubbling, .-bubbling
	.align	2
	.global	updateEnemies
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateEnemies, %function
updateEnemies:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r0, .L424
	sub	sp, sp, #8
	ldr	r1, [r0, #32]
	mov	r2, #35
	bl	hoverDN
	ldr	r0, .L424+4
	mov	r2, #40
	ldr	r1, [r0, #36]
	bl	hoverH
	ldr	r0, .L424+8
	mov	r2, #35
	ldr	r1, [r0, #32]
	bl	hoverV
	ldr	r0, .L424+12
	mov	r2, #50
	ldr	r1, [r0, #36]
	bl	hoverH
	ldr	r0, .L424+16
	mov	r2, #50
	ldr	r1, [r0, #36]
	bl	hoverH
	ldr	r0, .L424+20
	mov	r2, #55
	ldr	r1, [r0, #32]
	bl	hoverDN
	mov	r3, #80
	ldr	r0, .L424+24
	add	r1, r0, #32
	ldm	r1, {r1, r2}
	str	r3, [sp]
	bl	moveRect
	ldr	r0, .L424+28
	mov	r2, #160
	ldr	r1, [r0, #36]
	bl	hoverH
	ldr	r4, .L424+32
	ldr	r6, .L424+36
	add	r5, r4, #32
.L421:
	ldr	r0, [r4]
	bl	bubbling
	ldr	r3, [r4], #4
	add	r1, r3, #48
	ldm	r1, {r1, r2}
	ldr	ip, [r6]
	ldr	r0, [r3]
	sub	r1, r1, ip
	sub	r2, r2, r0
	cmp	r4, r5
	str	r1, [r3, #40]
	str	r2, [r3, #44]
	bne	.L421
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L425:
	.align	2
.L424:
	.word	yDiamond
	.word	bDiamond
	.word	wDiamond
	.word	spinel
	.word	jasper
	.word	aquamarine
	.word	topaz
	.word	eyeball
	.word	.LANCHOR0+32
	.word	vOff
	.size	updateEnemies, .-updateEnemies
	.align	2
	.global	updateStars
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateStars, %function
updateStars:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L430
	ldr	r6, .L430+4
	add	r5, r4, #32
.L427:
	ldr	r0, [r4]
	bl	bubbling
	ldr	r3, [r4], #4
	add	r1, r3, #48
	ldm	r1, {r1, r2}
	ldr	ip, [r6]
	ldr	r0, [r3]
	sub	r1, r1, ip
	sub	r2, r2, r0
	cmp	r4, r5
	str	r1, [r3, #40]
	str	r2, [r3, #44]
	bne	.L427
	pop	{r4, r5, r6, lr}
	bx	lr
.L431:
	.align	2
.L430:
	.word	.LANCHOR0
	.word	vOff
	.size	updateStars, .-updateStars
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L434
	bl	updateBG
	bl	animateSteven
	bl	updateSteven
	bl	updateEnemies
	bl	updateStars
	bl	updateLives
	mov	r0, r4
	bl	updateBubble
	add	r0, r4, #108
	bl	updateBubble
	add	r0, r4, #216
	bl	updateBubble
	add	r0, r4, #324
	bl	updateBubble
	add	r0, r4, #432
	pop	{r4, lr}
	b	updateBubble
.L435:
	.align	2
.L434:
	.word	bubbles
	.size	updateGame, .-updateGame
	.comm	shadowOAM,1024,4
	.comm	bubbles,540,4
	.comm	lives,324,4
	.global	stars
	.comm	desert,108,4
	.comm	arena,108,4
	.comm	kindergarten,108,4
	.comm	island,108,4
	.comm	garden,108,4
	.comm	jungleBase,108,4
	.comm	zoo,108,4
	.comm	earth,108,4
	.global	enemies
	.comm	eyeball,108,4
	.comm	topaz,108,4
	.comm	aquamarine,108,4
	.comm	jasper,108,4
	.comm	spinel,108,4
	.comm	wDiamond,108,4
	.comm	bDiamond,108,4
	.comm	yDiamond,108,4
	.comm	screenBlock,4,4
	.comm	vOff,4,4
	.comm	hOff,4,4
	.comm	livesLeft,4,4
	.comm	steven,108,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	stars, %object
	.size	stars, 32
stars:
	.word	earth
	.word	zoo
	.word	jungleBase
	.word	garden
	.word	island
	.word	kindergarten
	.word	arena
	.word	desert
	.type	enemies, %object
	.size	enemies, 32
enemies:
	.word	yDiamond
	.word	bDiamond
	.word	wDiamond
	.word	spinel
	.word	jasper
	.word	aquamarine
	.word	topaz
	.word	eyeball
	.ident	"GCC: (devkitARM release 47) 7.1.0"
