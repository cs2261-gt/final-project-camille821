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
	.global	initBubbles
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBubbles, %function
initBubbles:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, #1
	mov	r1, #8
	mov	r2, #3
	mov	r5, #0
	ldr	r3, .L6
	ldr	r6, [r3, #68]
	ldr	lr, [r3, #64]
	ldr	ip, [r3, #36]
	ldr	r0, [r3, #40]
	ldr	r3, .L6+4
	add	lr, lr, lr, lsr #31
	add	r6, r6, r6, lsr #31
	add	r0, r0, lr, asr r4
	add	ip, ip, r6, asr r4
	add	lr, r3, #520
.L2:
	str	r1, [r3, #92]
	str	r2, [r3, #96]
	str	ip, [r3, #20]
	str	r0, [r3, #24]
	str	ip, [r3, #36]
	str	r0, [r3, #40]
	str	r1, [r3, #68]
	str	r1, [r3, #64]
	str	r2, [r3, #56]
	str	r2, [r3, #60]
	str	r5, [r3, #52]
	str	r4, [r3, #100]
	add	r3, r3, #104
	cmp	r3, lr
	bne	.L2
	pop	{r4, r5, r6, lr}
	bx	lr
.L7:
	.align	2
.L6:
	.word	steven
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
	@ link register save eliminated.
	ldr	r3, [r0, #52]
	cmp	r3, #0
	beq	.L9
	ldr	r3, [r0, #8]
	cmp	r3, #1
	beq	.L17
	cmp	r3, #2
	beq	.L18
	cmp	r3, #3
	bne	.L13
	ldr	r3, [r0, #36]
	ldr	r1, [r0, #56]
	add	r2, r3, r1
	cmp	r2, #159
	bgt	.L9
	ldr	ip, [r0, #68]
	rsb	ip, ip, #0
	cmp	r2, ip
	bgt	.L19
.L9:
	mov	r3, #0
	str	r3, [r0, #52]
	bx	lr
.L17:
	ldr	r3, [r0, #40]
	ldr	r1, [r0, #60]
	add	r2, r3, r1
	cmp	r2, #239
	bgt	.L9
	ldr	ip, [r0, #64]
	rsb	ip, ip, #0
	cmp	r2, ip
	ble	.L9
	sub	r3, r3, r1
	str	r3, [r0, #40]
	bx	lr
.L18:
	add	r1, r0, #60
	ldm	r1, {r1, r2}
	ldr	r3, [r0, #40]
	add	r3, r3, r1
	add	r1, r2, #240
	cmp	r3, r1
	bgt	.L9
	rsb	r2, r2, #0
	cmp	r3, r2
	ble	.L9
	str	r3, [r0, #40]
	bx	lr
.L13:
	cmp	r3, #4
	bne	.L9
	ldr	r1, [r0, #56]
	ldr	r3, [r0, #36]
	ldr	r2, [r0, #68]
	add	r3, r3, r1
	add	r1, r2, #160
	cmp	r3, r1
	bgt	.L9
	rsb	r2, r2, #0
	cmp	r3, r2
	ble	.L9
	str	r3, [r0, #36]
	bx	lr
.L19:
	sub	r3, r3, r1
	str	r3, [r0, #36]
	bx	lr
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
	ldr	r0, .L31
	mov	r2, r0
	ldr	r1, [r2, #52]
	cmp	r1, #0
	mov	r3, #0
	beq	.L30
.L21:
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #104
	bxeq	lr
	ldr	r1, [r2, #52]
	cmp	r1, #0
	bne	.L21
.L30:
	push	{r4, r5, lr}
	mov	r4, #1
	ldr	lr, .L31+4
	ldr	ip, [lr, #68]
	ldr	r2, [lr, #36]
	add	ip, ip, ip, lsr #31
	add	r5, r3, r3, lsl r4
	add	r2, r2, ip, asr r4
	add	r3, r3, r5, lsl #2
	ldr	ip, [lr, #40]
	add	r3, r0, r3, lsl #3
	sub	r2, r2, #4
	str	r4, [r3, #8]
	str	r4, [r3, #52]
	str	r2, [r3, #36]
	str	ip, [r3, #40]
	str	r1, [r3, #100]
	pop	{r4, r5, lr}
	bx	lr
.L32:
	.align	2
.L31:
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
	ldr	r0, .L44
	mov	r2, r0
	ldr	r1, [r2, #52]
	cmp	r1, #0
	mov	r3, #0
	beq	.L43
.L34:
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #104
	bxeq	lr
	ldr	r1, [r2, #52]
	cmp	r1, #0
	bne	.L34
.L43:
	push	{r4, r5, lr}
	mov	r4, #1
	mov	r5, #2
	ldr	ip, .L44+4
	ldr	lr, [ip, #68]
	ldr	r2, [ip, #36]
	add	lr, lr, lr, lsr #31
	add	r2, r2, lr, asr r4
	add	lr, r3, r3, lsl r4
	add	r3, r3, lr, lsl r5
	add	r3, r0, r3, lsl #3
	ldr	r0, [ip, #40]
	ldr	ip, [ip, #64]
	sub	r2, r2, #4
	add	r0, r0, ip
	str	r5, [r3, #8]
	str	r4, [r3, #52]
	str	r2, [r3, #36]
	str	r1, [r3, #100]
	str	r0, [r3, #40]
	pop	{r4, r5, lr}
	bx	lr
.L45:
	.align	2
.L44:
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
	ldr	r0, .L57
	mov	r2, r0
	ldr	r1, [r2, #52]
	cmp	r1, #0
	mov	r3, #0
	beq	.L56
.L47:
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #104
	bxeq	lr
	ldr	r1, [r2, #52]
	cmp	r1, #0
	bne	.L47
.L56:
	push	{r4, r5, lr}
	mov	r4, #1
	mov	r5, #3
	ldr	ip, .L57+4
	ldr	r2, [ip, #64]
	add	ip, ip, #36
	ldm	ip, {ip, lr}
	add	r2, r2, r2, lsr #31
	add	r2, lr, r2, asr r4
	add	lr, r3, r3, lsl r4
	add	r3, r3, lr, lsl #2
	add	r3, r0, r3, lsl r5
	add	ip, ip, r5
	str	r5, [r3, #8]
	str	r4, [r3, #52]
	str	r2, [r3, #40]
	str	ip, [r3, #36]
	str	r1, [r3, #100]
	pop	{r4, r5, lr}
	bx	lr
.L58:
	.align	2
.L57:
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
	ldr	r0, .L70
	mov	r2, r0
	ldr	r1, [r2, #52]
	cmp	r1, #0
	mov	r3, #0
	beq	.L69
.L60:
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #104
	bxeq	lr
	ldr	r1, [r2, #52]
	cmp	r1, #0
	bne	.L60
.L69:
	push	{r4, r5, lr}
	mov	lr, #1
	mov	r4, #4
	ldr	r2, .L70+4
	add	r5, r3, r3, lsl lr
	ldr	ip, [r2, #36]
	ldr	r2, [r2, #40]
	add	r3, r3, r5, lsl #2
	add	r3, r0, r3, lsl #3
	add	r2, r2, r4
	add	ip, ip, #11
	str	r4, [r3, #8]
	str	lr, [r3, #52]
	str	ip, [r3, #36]
	str	r2, [r3, #40]
	str	r1, [r3, #100]
	pop	{r4, r5, lr}
	bx	lr
.L71:
	.align	2
.L70:
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
	ldr	r0, .L78
	mov	r2, r0
	ldr	r1, [r2, #52]
	cmp	r1, #0
	mov	r3, #0
	beq	.L77
.L73:
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #104
	bxeq	lr
	ldr	r1, [r2, #52]
	cmp	r1, #0
	bne	.L73
.L77:
	mov	r2, #1
	add	r1, r3, r3, lsl r2
	add	r3, r3, r1, lsl #2
	add	r3, r0, r3, lsl #3
	str	r2, [r3, #52]
	bx	lr
.L79:
	.align	2
.L78:
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
	ldr	r3, .L86
	push	{r4, r5, lr}
	ldr	r2, .L86+4
	ldr	r5, .L86+8
	add	ip, r3, #520
.L83:
	ldr	r1, [r3, #100]
	cmp	r1, #0
	beq	.L81
	ldrh	r1, [r2, #112]
	orr	r1, r1, #512
	strh	r1, [r2, #112]	@ movhi
.L82:
	add	r3, r3, #104
	cmp	r3, ip
	add	r2, r2, #8
	bne	.L83
	pop	{r4, r5, lr}
	bx	lr
.L81:
	ldr	r0, [r3, #40]
	ldr	r4, [r3, #92]
	ldr	r1, [r3, #96]
	ldrb	lr, [r3, #36]	@ zero_extendqisi2
	and	r0, r0, r5
	add	r1, r1, r4, lsl #5
	strh	r0, [r2, #114]	@ movhi
	strh	r1, [r2, #116]	@ movhi
	strh	lr, [r2, #112]	@ movhi
	b	.L82
.L87:
	.align	2
.L86:
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
	mov	r0, #16
	mov	r4, #1
	mov	r1, #4
	mov	lr, #8
	mov	ip, #0
	ldr	r3, .L92
	str	r5, [r3]
	ldr	r3, .L92+4
.L89:
	str	r2, [r3, #40]
	add	r2, r2, #20
	cmp	r2, #240
	str	r0, [r3, #68]
	str	r0, [r3, #64]
	str	r4, [r3, #52]
	str	r1, [r3, #36]
	str	lr, [r3, #92]
	str	r1, [r3, #96]
	str	ip, [r3, #100]
	add	r3, r3, #104
	bne	.L89
	pop	{r4, r5, lr}
	bx	lr
.L93:
	.align	2
.L92:
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
	ldr	r3, .L100
	push	{r4, lr}
	ldr	r4, [r3]
	cmp	r4, #2
	beq	.L99
	cmp	r4, #1
	bne	.L97
	ldr	r3, .L100+4
	str	r4, [r3, #204]
.L94:
	pop	{r4, lr}
	bx	lr
.L97:
	cmp	r4, #0
	bne	.L94
	mov	r1, #1
	ldr	r2, .L100+4
	ldr	r3, .L100+8
	str	r1, [r2, #100]
	mov	lr, pc
	bx	r3
	ldr	r3, .L100+12
	str	r4, [r3]
	pop	{r4, lr}
	bx	lr
.L99:
	mov	r2, #1
	ldr	r3, .L100+4
	pop	{r4, lr}
	str	r2, [r3, #308]
	bx	lr
.L101:
	.align	2
.L100:
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
	ldr	r3, .L108
	push	{r4, r5, lr}
	ldr	r2, .L108+4
	ldr	r5, .L108+8
	add	ip, r3, #312
.L105:
	ldr	r1, [r3, #100]
	cmp	r1, #0
	beq	.L103
	ldrh	r1, [r2, #8]
	orr	r1, r1, #512
	strh	r1, [r2, #8]	@ movhi
.L104:
	add	r3, r3, #104
	cmp	r3, ip
	add	r2, r2, #8
	bne	.L105
	pop	{r4, r5, lr}
	bx	lr
.L103:
	ldr	r1, [r3, #40]
	ldr	r4, [r3, #92]
	ldr	r0, [r3, #96]
	and	r1, r1, r5
	ldrb	lr, [r3, #36]	@ zero_extendqisi2
	orr	r1, r1, #16384
	add	r0, r0, r4, lsl #5
	strh	r1, [r2, #10]	@ movhi
	strh	r0, [r2, #12]	@ movhi
	strh	lr, [r2, #8]	@ movhi
	b	.L104
.L109:
	.align	2
.L108:
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
	push	{r4, r5, r6, lr}
	mov	r6, #110
	mov	r4, #16
	mov	r1, #1
	mov	lr, #3
	mov	r2, #0
	ldr	r3, .L112
	ldr	r0, .L112+4
	ldr	r5, .L112+8
	ldr	ip, [r3]
	ldr	r0, [r0]
	ldr	r3, .L112+12
	sub	ip, r5, ip
	sub	r0, r6, r0
	str	r5, [r3, #44]
	str	r6, [r3, #48]
	str	r4, [r3, #68]
	str	r4, [r3, #64]
	str	lr, [r3, #76]
	str	lr, [r3, #88]
	str	ip, [r3, #36]
	str	r0, [r3, #40]
	str	r1, [r3, #56]
	str	r1, [r3, #60]
	str	r1, [r3, #52]
	str	r2, [r3, #84]
	str	r2, [r3, #100]
	str	r2, [r3, #72]
	pop	{r4, r5, r6, lr}
	bx	lr
.L113:
	.align	2
.L112:
	.word	vOff
	.word	hOff
	.word	482
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
	ldr	r3, .L166
	ldr	r2, [r3, #76]
	cmp	r2, #4
	movne	r1, #4
	push	{r4, r5, lr}
	strne	r2, [r3, #80]
	strne	r1, [r3, #76]
	ldr	r2, .L166+4
	ldr	r1, [r3, #72]
	smull	r4, r5, r1, r2
	asr	r2, r1, #31
	rsb	r2, r2, r5, asr #1
	add	r2, r2, r2, lsl #2
	subs	r2, r1, r2
	bne	.L117
	add	r0, r3, #84
	ldm	r0, {r0, ip}
	add	r0, r0, #1
	cmp	r0, ip
	str	r0, [r3, #84]
	strge	r2, [r3, #84]
.L117:
	ldr	r2, .L166+8
	ldrh	r2, [r2, #48]
	tst	r2, #64
	bne	.L120
	ldr	r0, [r3, #44]
	cmp	r0, #9
	bgt	.L164
.L120:
	ldr	r2, .L166+8
	ldrh	r2, [r2, #48]
	ands	r2, r2, #128
	bne	.L124
	ldr	ip, .L166+12
	ldr	r0, [ip]
	cmp	r0, #512
	addlt	r0, r0, #1
	strlt	r0, [ip]
	str	r2, [r3, #76]
	ldr	r0, [r3, #44]
	ldr	r2, [r3, #68]
	add	r2, r0, r2
	cmp	r2, #512
	blt	.L165
.L124:
	ldr	r2, .L166+8
	ldrh	r0, [r2, #48]
	tst	r0, #32
	bne	.L127
	mov	r0, #1
	ldr	r2, [r3, #48]
	cmp	r2, #0
	str	r0, [r3, #76]
	ble	.L128
	ldr	ip, [r3, #44]
	sub	r0, r2, #1
	add	lr, r0, ip, lsl #8
	ldr	r4, .L166+16
	lsl	lr, lr, #1
	ldrh	lr, [r4, lr]
	cmp	lr, #0
	beq	.L128
	ldr	lr, [r3, #68]
	add	ip, ip, lr
	sub	ip, ip, #1
	add	r0, r0, ip, lsl #8
	lsl	r0, r0, #1
	ldrh	r0, [r4, r0]
	cmp	r0, #0
	ldrne	r0, [r3, #60]
	subne	r2, r2, r0
	strne	r2, [r3, #48]
.L128:
	ldr	r2, .L166+8
	ldrh	r2, [r2, #48]
	tst	r2, #16
	beq	.L131
.L130:
	add	r1, r1, #1
	str	r1, [r3, #72]
	pop	{r4, r5, lr}
	bx	lr
.L127:
	ldrh	r2, [r2, #48]
	tst	r2, #16
	bne	.L129
.L131:
	mov	r0, #2
	ldr	ip, [r3, #48]
	ldr	r2, [r3, #64]
	add	r2, ip, r2
	cmp	r2, #255
	str	r0, [r3, #76]
	bgt	.L130
	ldr	r0, [r3, #44]
	ldr	r4, .L166+16
	add	lr, r2, r0, lsl #8
	lsl	lr, lr, #1
	ldrh	lr, [r4, lr]
	cmp	lr, #0
	beq	.L130
	ldr	lr, [r3, #68]
	add	r0, r0, lr
	sub	r0, r0, #1
	add	r2, r2, r0, lsl #8
	lsl	r2, r2, #1
	ldrh	r2, [r4, r2]
	cmp	r2, #0
	ldrne	r2, [r3, #60]
	addne	ip, r2, ip
	strne	ip, [r3, #48]
	b	.L130
.L165:
	ldr	r4, [r3, #48]
	lsl	r2, r2, #8
	add	ip, r2, r4
	ldr	lr, .L166+16
	lsl	ip, ip, #1
	ldrh	ip, [lr, ip]
	cmp	ip, #0
	beq	.L124
	ldr	ip, [r3, #64]
	add	r2, r2, ip
	add	r2, r2, r4
	add	r2, lr, r2, lsl #1
	ldrh	r2, [r2, #-2]
	cmp	r2, #0
	ldrne	r2, [r3, #56]
	addne	r0, r2, r0
	strne	r0, [r3, #44]
	b	.L124
.L164:
	mov	lr, #3
	ldr	ip, .L166+12
	ldr	r2, [ip]
	cmp	r2, #0
	subgt	r2, r2, #1
	strgt	r2, [ip]
	ldr	r4, [r3, #48]
	sub	r2, r0, #1
	lsl	r2, r2, #8
	str	lr, [r3, #76]
	add	ip, r2, r4
	ldr	lr, .L166+16
	lsl	ip, ip, #1
	ldrh	ip, [lr, ip]
	cmp	ip, #0
	beq	.L120
	ldr	ip, [r3, #64]
	add	r2, r2, ip
	add	r2, r2, r4
	add	r2, lr, r2, lsl #1
	ldrh	r2, [r2, #-2]
	cmp	r2, #0
	ldrne	r2, [r3, #56]
	subne	r0, r0, r2
	strne	r0, [r3, #44]
	b	.L120
.L129:
	ldr	r2, [r3, #76]
	cmp	r2, #4
	bne	.L130
	mov	r1, #0
	ldr	r2, [r3, #80]
	str	r1, [r3, #84]
	str	r2, [r3, #76]
	pop	{r4, r5, lr}
	bx	lr
.L167:
	.align	2
.L166:
	.word	steven
	.word	1717986919
	.word	67109120
	.word	vOff
	.word	colmap1Bitmap
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
	ldr	r2, .L171
	ldr	r1, .L171+4
	ldrb	r0, [r2, #36]	@ zero_extendqisi2
	ldr	r3, [r2, #40]
	strh	r0, [r1]	@ movhi
	ldr	r0, .L171+8
	lsl	r3, r3, #23
	ldrh	r0, [r0, #48]
	lsr	r3, r3, #23
	tst	r0, #1
	orr	r3, r3, #16384
	strh	r3, [r1, #2]	@ movhi
	ldr	r3, [r2, #76]
	ldrne	r2, [r2, #84]
	lsleq	r3, r3, #6
	addne	r3, r2, r3, lsl #5
	addeq	r3, r3, #6
	lslne	r3, r3, #1
	strh	r3, [r1, #4]	@ movhi
	bx	lr
.L172:
	.align	2
.L171:
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
	mov	r2, #0
	mov	lr, #150
	mov	r5, #1
	mov	fp, #340
	mov	r10, #110
	mov	r9, #118
	mov	r6, #90
	mov	r8, #45
	mov	r7, #50
	mov	r0, #16
	mov	r4, #8
	mov	r1, #2
	ldr	r3, .L177
	str	r2, [r3, #100]
	str	lr, [r3, #48]
	str	lr, [r3, #32]
	str	fp, [r3, #44]
	str	fp, [r3, #28]
	str	r5, [r3, #52]
	ldr	r3, .L177+4
	str	lr, [r3, #44]
	str	lr, [r3, #28]
	str	r2, [r3, #100]
	str	r5, [r3, #52]
	str	r10, [r3, #48]
	str	r9, [r3, #32]
	ldr	r3, .L177+8
	mov	ip, r2
	str	r2, [r3, #100]
	ldr	r2, .L177+12
	str	r5, [r3, #52]
	str	r8, [r3, #44]
	str	r7, [r3, #28]
	str	r6, [r3, #48]
	str	r6, [r3, #32]
	add	lr, r2, #24
.L174:
	ldr	r3, [r2, #4]!
	cmp	r2, lr
	str	r0, [r3, #64]
	str	r0, [r3, #68]
	str	r4, [r3, #92]
	str	ip, [r3, #96]
	str	r1, [r3, #56]
	str	r1, [r3, #60]
	str	ip, [r3, #12]
	bne	.L174
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L178:
	.align	2
.L177:
	.word	yDiamond
	.word	bDiamond
	.word	wDiamond
	.word	.LANCHOR0-4
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
	mov	r2, #0
	push	{r4, r5, r6, lr}
	ldr	r3, .L187
	ldr	ip, .L187+4
	ldr	r4, .L187+8
.L184:
	ldr	r1, [ip, r2, lsl #2]
	ldr	r0, [r1, #100]
	cmp	r0, #0
	bne	.L180
	ldr	r0, [r1, #36]
	cmp	r0, #160
	bls	.L181
.L180:
	ldrh	r1, [r3, #64]
	orr	r1, r1, #512
	strh	r1, [r3, #64]	@ movhi
.L182:
	add	r2, r2, #1
	cmp	r2, #3
	add	r3, r3, #8
	bne	.L184
	pop	{r4, r5, r6, lr}
	bx	lr
.L181:
	ldr	lr, [r1, #12]
	cmp	lr, #0
	bne	.L183
	ldr	lr, [r1, #40]
	ldr	r6, [r1, #92]
	ldr	r5, [r1, #96]
	and	lr, lr, r4
	orr	r1, lr, #16384
	add	lr, r5, r6, lsl #5
	strh	r0, [r3, #64]	@ movhi
	strh	r1, [r3, #66]	@ movhi
	strh	lr, [r3, #68]	@ movhi
	b	.L182
.L183:
	cmp	lr, #1
	bne	.L182
	ldr	lr, [r1, #40]
	ldr	r6, [r1, #92]
	ldr	r5, [r1, #96]
	and	r1, lr, r4
	add	lr, r6, #2
	orr	r1, r1, #16384
	add	lr, r5, lr, lsl #5
	strh	r0, [r3, #64]	@ movhi
	strh	r1, [r3, #66]	@ movhi
	strh	lr, [r3, #68]	@ movhi
	b	.L182
.L188:
	.align	2
.L187:
	.word	shadowOAM
	.word	.LANCHOR0
	.word	511
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
	mov	r9, #20
	mov	r2, #115
	mov	fp, #9
	mov	r10, #4
	ldr	r1, .L193
	ldr	lr, [r1]
	ldr	r1, .L193+4
	sub	ip, r9, lr
	str	ip, [r1, #36]
	ldr	ip, .L193+8
	ldr	ip, [ip]
	str	r2, [r1, #48]
	sub	r2, r2, ip
	str	r9, [r1, #44]
	str	r2, [r1, #40]
	ldr	r9, .L193+12
	ldr	r2, .L193+16
	str	fp, [r1]
	str	r9, [r2, #44]
	sub	fp, r9, lr
	rsb	r9, ip, #110
	str	r9, [r2, #40]
	ldr	r9, .L193+20
	str	r10, [r2, #4]
	rsb	r10, lr, #240
	str	r10, [r9, #36]
	ldr	r10, .L193+24
	rsb	lr, lr, #110
	str	lr, [r10, #36]
	mov	lr, #100
	str	lr, [r9, #48]
	sub	lr, lr, ip
	rsb	ip, ip, #120
	str	ip, [r10, #40]
	mov	ip, #120
	mov	r5, #1
	mov	r4, #0
	str	ip, [r10, #48]
	mov	ip, #3
	mov	r8, #10
	str	ip, [r1, #4]
	str	fp, [r2, #36]
	str	r5, [r1, #52]
	str	r4, [r1, #100]
	mov	fp, #240
	mov	r1, #110
	mov	r6, #2
	mov	r0, r5
	mov	r7, r4
	mov	r3, #8
	stm	r9, {r8, ip}
	str	r1, [r2, #48]
	str	fp, [r9, #44]
	str	lr, [r9, #40]
	str	r5, [r2, #52]
	str	r5, [r9, #52]
	str	r5, [r10, #52]
	str	r4, [r2, #100]
	str	r4, [r9, #100]
	str	r4, [r10, #100]
	str	r8, [r2]
	str	r1, [r10, #44]
	ldr	r1, .L193+28
	str	r8, [r10]
	str	r6, [r10, #4]
	add	ip, r1, #16
.L190:
	ldr	r2, [r1], #4
	cmp	r1, ip
	str	r3, [r2, #64]
	str	r3, [r2, #68]
	str	r3, [r2, #92]
	str	r6, [r2, #96]
	str	r0, [r2, #56]
	str	r0, [r2, #60]
	str	r7, [r2, #12]
	bne	.L190
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L194:
	.align	2
.L193:
	.word	vOff
	.word	earth
	.word	hOff
	.word	355
	.word	zoo
	.word	garden
	.word	jungleBase
	.word	.LANCHOR0+24
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
	mov	r5, #3
	bl	initSteven
	mov	r4, #0
	bl	initEnemies
	bl	initStars
	mov	r2, #180
	mov	r0, #16
	mov	lr, #1
	mov	r1, #4
	mov	ip, #8
	ldr	r3, .L199
	str	r5, [r3]
	ldr	r3, .L199+4
.L196:
	str	r2, [r3, #40]
	add	r2, r2, #20
	cmp	r2, #240
	str	r0, [r3, #68]
	str	r0, [r3, #64]
	str	lr, [r3, #52]
	str	r1, [r3, #36]
	str	ip, [r3, #92]
	str	r1, [r3, #96]
	str	r4, [r3, #100]
	add	r3, r3, #104
	bne	.L196
	bl	initBubbles
	mov	r1, #352
	ldr	r2, .L199+8
	ldr	r3, .L199+12
	str	r1, [r2]
	str	r4, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L200:
	.align	2
.L199:
	.word	livesLeft
	.word	lives
	.word	vOff
	.word	hOff
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
	ldr	r3, .L211
	push	{r4, r5, r6, r7, lr}
	ldr	r1, .L211+4
	ldr	lr, .L211+8
	ldr	r4, .L211+12
	add	ip, r3, #32
.L207:
	ldr	r2, [r1], #4
	ldr	r0, [r2, #100]
	cmp	r0, #0
	bne	.L202
	ldr	r0, [r2, #36]
	cmp	r0, #160
	bls	.L203
.L202:
	ldrh	r2, [r3, #32]
	orr	r2, r2, #512
	strh	r2, [r3, #32]	@ movhi
.L204:
	add	r3, r3, #8
	cmp	r3, ip
	bne	.L207
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L203:
	ldrh	r5, [lr, #48]
	tst	r5, #2
	bne	.L205
	ldr	r5, [r2, #40]
	ldr	r6, [r2]
	ldr	r2, [r2, #4]
	and	r5, r5, r4
	add	r2, r2, r6, lsl #5
	strh	r0, [r3, #32]	@ movhi
	strh	r5, [r3, #34]	@ movhi
	strh	r2, [r3, #36]	@ movhi
	b	.L204
.L205:
	ldr	r5, [r2, #12]
	cmp	r5, #0
	beq	.L210
	cmp	r5, #1
	bne	.L204
	ldr	r6, [r2, #92]
	ldr	r5, [r2, #96]
	ldr	r7, [r2, #40]
	add	r6, r6, #1
	add	r2, r5, r6, lsl #5
	strh	r0, [r3, #32]	@ movhi
	strh	r2, [r3, #36]	@ movhi
	strh	r7, [r3, #34]	@ movhi
	b	.L204
.L210:
	ldr	r7, [r2, #92]
	ldr	r5, [r2, #96]
	ldr	r6, [r2, #40]
	add	r2, r5, r7, lsl #5
	strh	r0, [r3, #32]	@ movhi
	strh	r2, [r3, #36]	@ movhi
	strh	r6, [r3, #34]	@ movhi
	b	.L204
.L212:
	.align	2
.L211:
	.word	shadowOAM
	.word	.LANCHOR0+24
	.word	67109120
	.word	511
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
	ldr	r4, .L215
	bl	drawEnemies
	bl	drawSteven
	bl	drawStars
	bl	drawLives
	mov	r0, r4
	bl	drawBubble
	add	r0, r4, #104
	bl	drawBubble
	add	r0, r4, #208
	bl	drawBubble
	add	r0, r4, #312
	bl	drawBubble
	add	r0, r4, #416
	bl	drawBubble
	ldr	r3, .L215+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L215+8
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L215+12
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L215+16
	ldrh	r1, [r2]
	ldr	r2, .L215+20
	ldrh	r2, [r2]
	strh	r1, [r3, #16]	@ movhi
	pop	{r4, lr}
	strh	r2, [r3, #18]	@ movhi
	bx	lr
.L216:
	.align	2
.L215:
	.word	bubbles
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	hOff
	.word	vOff
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
	ldr	ip, [r0, #44]
	cmp	ip, r1
	push	{r4, lr}
	add	r3, r2, r3
	ldr	r4, [r0, #48]
	beq	.L238
	ldr	lr, [sp, #8]
	cmp	r3, r4
	add	lr, r1, lr
	beq	.L239
.L222:
	cmp	ip, lr
	beq	.L240
.L224:
	cmp	ip, lr
	cmple	r2, r4
	beq	.L229
.L217:
	pop	{r4, lr}
	bx	lr
.L239:
	cmp	ip, r1
	bge	.L226
	cmp	ip, lr
	bne	.L224
.L228:
	cmp	r2, r4
	bge	.L224
	ldr	r3, [r0, #60]
	sub	r4, r4, r3
	str	r4, [r0, #48]
	b	.L217
.L238:
	cmp	r2, r4
	bgt	.L219
	cmp	r3, r4
	bgt	.L241
	ldr	lr, [sp, #8]
	add	lr, ip, lr
	bne	.L222
.L226:
	cmp	ip, lr
	bge	.L222
	ldr	r3, [r0, #56]
	add	ip, r3, ip
	str	ip, [r0, #44]
	b	.L217
.L240:
	cmp	r4, r3
	ble	.L242
	cmp	r2, r4
	bne	.L217
.L229:
	cmp	ip, r1
	ldrgt	r3, [r0, #56]
	subgt	ip, ip, r3
	strgt	ip, [r0, #44]
	b	.L217
.L219:
	ldr	lr, [sp, #8]
	cmp	r3, r4
	add	lr, ip, lr
	beq	.L226
	cmp	ip, lr
	bne	.L217
	cmp	r3, r4
	blt	.L217
	mov	lr, ip
	b	.L224
.L241:
	ldr	r3, [r0, #60]
	add	r4, r3, r4
	str	r4, [r0, #48]
	b	.L217
.L242:
	mov	lr, ip
	b	.L228
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
	ldr	ip, [r0, #48]
	cmp	ip, r1
	sub	sp, sp, #20
	mov	r4, r0
	ldr	r3, [r0, #60]
	blt	.L244
	add	r2, r1, r2
	cmp	ip, r2
	bge	.L244
	add	ip, ip, r3
	cmp	ip, r1
	cmpgt	r2, ip
	str	ip, [r0, #48]
	ble	.L244
	ldr	r3, [r0, #12]
	cmp	r3, #1
	bne	.L243
	ldr	r0, .L252
	ldr	r3, [r0, #64]
	ldr	r2, [r0, #68]
	add	r0, r0, #44
	ldr	r5, [r4, #64]
	ldm	r0, {r0, r1}
	str	ip, [sp, #4]
	ldr	lr, [r4, #68]
	str	r5, [sp, #12]
	ldr	ip, [r4, #44]
	ldr	r5, .L252+4
	str	lr, [sp, #8]
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L243
	ldr	ip, [r4, #48]
	ldr	r3, [r4, #60]
.L244:
	sub	ip, ip, r3
	rsb	r3, r3, #0
	str	ip, [r4, #48]
	str	r3, [r4, #60]
.L243:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L253:
	.align	2
.L252:
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
	ldr	ip, [r0, #44]
	cmp	ip, r1
	sub	sp, sp, #20
	mov	r4, r0
	ldr	r3, [r0, #56]
	blt	.L255
	add	r2, r1, r2
	cmp	ip, r2
	bge	.L255
	add	ip, ip, r3
	cmp	ip, r1
	cmpgt	r2, ip
	str	ip, [r0, #44]
	ble	.L255
	ldr	r3, [r0, #12]
	cmp	r3, #1
	bne	.L254
	ldr	r0, .L263
	ldr	r3, [r0, #64]
	ldr	r2, [r0, #68]
	add	r0, r0, #44
	ldr	r5, [r4, #64]
	ldm	r0, {r0, r1}
	str	ip, [sp]
	ldr	lr, [r4, #68]
	str	r5, [sp, #12]
	ldr	ip, [r4, #48]
	ldr	r5, .L263+4
	stmib	sp, {ip, lr}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L254
	ldr	ip, [r4, #44]
	ldr	r3, [r4, #56]
.L255:
	sub	ip, ip, r3
	rsb	r3, r3, #0
	str	ip, [r4, #44]
	str	r3, [r4, #56]
.L254:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L264:
	.align	2
.L263:
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
	ldr	ip, [r0, #44]
	cmp	ip, r1
	sub	sp, sp, #20
	ldr	r0, [r0, #56]
	ldr	lr, [r4, #48]
	ldr	r3, [r4, #60]
	blt	.L266
	add	r2, r1, r2
	cmp	ip, r2
	bge	.L266
	add	ip, ip, r0
	cmp	ip, r1
	cmpgt	r2, ip
	add	lr, lr, r3
	str	ip, [r4, #44]
	str	lr, [r4, #48]
	ble	.L266
	ldr	r3, [r4, #12]
	cmp	r3, #1
	bne	.L265
	ldr	r0, .L274
	ldr	r5, [r4, #64]
	ldr	r3, [r0, #64]
	ldr	r2, [r0, #68]
	str	lr, [sp, #4]
	add	r0, r0, #44
	ldm	r0, {r0, r1}
	str	ip, [sp]
	ldr	ip, [r4, #68]
	str	r5, [sp, #12]
	str	ip, [sp, #8]
	ldr	r5, .L274+4
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L265
	add	r0, r4, #56
	ldr	ip, [r4, #44]
	ldm	r0, {r0, r3}
	ldr	lr, [r4, #48]
.L266:
	sub	ip, ip, r0
	sub	lr, lr, r3
	rsb	r0, r0, #0
	rsb	r3, r3, #0
	str	ip, [r4, #44]
	str	r0, [r4, #56]
	str	lr, [r4, #48]
	str	r3, [r4, #60]
.L265:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L275:
	.align	2
.L274:
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
	ldr	ip, [r0, #44]
	cmp	ip, r1
	sub	sp, sp, #20
	ldr	r0, [r0, #56]
	ldr	lr, [r4, #48]
	ldr	r3, [r4, #60]
	blt	.L277
	add	r2, r1, r2
	cmp	ip, r2
	bge	.L277
	add	ip, ip, r0
	cmp	ip, r1
	cmpgt	r2, ip
	sub	lr, lr, r3
	str	ip, [r4, #44]
	str	lr, [r4, #48]
	ble	.L277
	ldr	r3, [r4, #12]
	cmp	r3, #1
	bne	.L276
	ldr	r0, .L285
	ldr	r5, [r4, #64]
	ldr	r3, [r0, #64]
	ldr	r2, [r0, #68]
	str	lr, [sp, #4]
	add	r0, r0, #44
	ldm	r0, {r0, r1}
	str	ip, [sp]
	ldr	ip, [r4, #68]
	str	r5, [sp, #12]
	str	ip, [sp, #8]
	ldr	r5, .L285+4
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L276
	add	r0, r4, #56
	ldr	ip, [r4, #44]
	ldm	r0, {r0, r3}
	ldr	lr, [r4, #48]
.L277:
	sub	ip, ip, r0
	add	lr, r3, lr
	rsb	r0, r0, #0
	rsb	r3, r3, #0
	str	ip, [r4, #44]
	str	r0, [r4, #56]
	str	lr, [r4, #48]
	str	r3, [r4, #60]
.L276:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L286:
	.align	2
.L285:
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
	ldr	r3, [r0, #48]
	ldr	r2, [r0, #60]
	add	r3, r3, r2
	str	r3, [r0, #48]
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
	ldr	r3, [r0, #44]
	ldr	r2, [r0, #56]
	add	r3, r3, r2
	str	r3, [r0, #44]
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
	ldr	r3, [r0, #48]
	ldr	r2, [r0, #60]
	sub	r3, r3, r2
	str	r3, [r0, #48]
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
	ldr	r3, [r0, #44]
	ldr	r2, [r0, #56]
	sub	r3, r3, r2
	str	r3, [r0, #44]
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
	ldr	r4, .L308
	sub	sp, sp, #16
	ldr	r5, .L308+4
	ldr	r8, .L308+8
	ldr	r7, .L308+12
	add	r6, r4, #24
	b	.L298
.L293:
	cmp	r4, r6
	beq	.L304
.L298:
	ldr	r2, [r4, #4]!
	ldr	r3, [r2, #12]
	cmp	r3, #0
	bne	.L293
	ldr	r3, [r2, #64]
	str	r3, [sp, #12]
	ldr	r3, [r2, #68]
	str	r3, [sp, #8]
	ldr	r3, [r2, #40]
	str	r3, [sp, #4]
	ldr	ip, [r2, #36]
	add	r0, r5, #36
	ldm	r0, {r0, r1}
	ldr	r3, [r5, #64]
	ldr	r2, [r5, #68]
	str	ip, [sp]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L293
	ldr	r3, [r7]
	ldr	r2, [r5, #76]
	sub	r3, r3, #1
	cmp	r2, #1
	str	r3, [r7]
	beq	.L305
	cmp	r2, #2
	beq	.L306
	cmp	r2, #3
	beq	.L307
	cmp	r2, #0
	ldreq	r3, [r5, #44]
	subeq	r3, r3, #10
	streq	r3, [r5, #44]
	cmp	r4, r6
	bne	.L298
.L304:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L306:
	ldr	r3, [r5, #48]
	sub	r3, r3, #10
	str	r3, [r5, #48]
	b	.L293
.L305:
	ldr	r3, [r5, #48]
	add	r3, r3, #10
	str	r3, [r5, #48]
	b	.L293
.L307:
	ldr	r3, [r5, #44]
	add	r3, r3, #10
	str	r3, [r5, #44]
	b	.L293
.L309:
	.align	2
.L308:
	.word	.LANCHOR0-4
	.word	steven
	.word	collision
	.word	livesLeft
	.size	enemyCollisions, .-enemyCollisions
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
	push	{r4, r5, r6, r7, lr}
	ldr	r4, .L355
	ldr	r5, .L355+4
	ldr	r7, .L355+8
	sub	sp, sp, #20
	add	r6, r4, #16
.L317:
	ldr	r2, [r4], #4
	ldr	r3, [r2, #12]
	cmp	r3, #0
	beq	.L347
.L312:
	cmp	r6, r4
	bne	.L317
	ldr	r4, .L355+12
	ldr	r2, [r4, #24]
	ldr	r3, [r2, #12]
	cmp	r3, #0
	beq	.L348
.L319:
	ldr	r2, [r4, #28]
	ldr	r3, [r2, #12]
	cmp	r3, #0
	beq	.L349
.L322:
	ldr	r2, [r4, #32]
	ldr	r3, [r2, #12]
	cmp	r3, #0
	beq	.L350
.L325:
	ldr	r2, [r4, #36]
	ldr	r3, [r2, #12]
	cmp	r3, #0
	beq	.L351
.L310:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L347:
	ldr	r3, [r2, #64]
	str	r3, [sp, #12]
	ldr	r3, [r2, #68]
	str	r3, [sp, #8]
	ldr	r3, [r2, #40]
	str	r3, [sp, #4]
	ldr	ip, [r2, #36]
	add	r0, r5, #36
	ldr	r3, [r5, #64]
	ldr	r2, [r5, #68]
	ldm	r0, {r0, r1}
	str	ip, [sp]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L312
	ldr	r3, [r5, #76]
	cmp	r3, #1
	beq	.L352
	cmp	r3, #2
	beq	.L353
	cmp	r3, #3
	beq	.L354
	cmp	r3, #0
	ldreq	r3, [r5, #44]
	subeq	r3, r3, #10
	streq	r3, [r5, #44]
	b	.L312
.L352:
	ldr	r3, [r5, #48]
	add	r3, r3, #10
	str	r3, [r5, #48]
	b	.L312
.L351:
	ldr	r3, [r2, #64]
	str	r3, [sp, #12]
	ldr	r3, [r2, #68]
	str	r3, [sp, #8]
	ldr	r3, [r2, #48]
	str	r3, [sp, #4]
	ldr	r0, .L355+4
	ldr	ip, [r2, #44]
	ldr	r3, [r0, #64]
	ldr	r2, [r0, #68]
	add	r0, r0, #44
	ldm	r0, {r0, r1}
	ldr	r4, .L355+8
	str	ip, [sp]
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L310
	ldr	r3, .L355+16
	mov	lr, pc
	bx	r3
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L350:
	ldr	r3, [r2, #64]
	str	r3, [sp, #12]
	ldr	r3, [r2, #68]
	str	r3, [sp, #8]
	ldr	r3, [r2, #48]
	str	r3, [sp, #4]
	ldr	r0, .L355+4
	ldr	ip, [r2, #44]
	ldr	r3, [r0, #64]
	ldr	r2, [r0, #68]
	add	r0, r0, #44
	ldm	r0, {r0, r1}
	ldr	r5, .L355+8
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L325
	ldr	r3, .L355+20
	mov	lr, pc
	bx	r3
	b	.L325
.L349:
	ldr	r3, [r2, #64]
	str	r3, [sp, #12]
	ldr	r3, [r2, #68]
	str	r3, [sp, #8]
	ldr	r3, [r2, #48]
	str	r3, [sp, #4]
	ldr	r0, .L355+4
	ldr	ip, [r2, #44]
	ldr	r3, [r0, #64]
	ldr	r2, [r0, #68]
	add	r0, r0, #44
	ldm	r0, {r0, r1}
	ldr	r5, .L355+8
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L322
	ldr	r3, .L355+24
	mov	lr, pc
	bx	r3
	b	.L322
.L348:
	ldr	r3, [r2, #64]
	str	r3, [sp, #12]
	ldr	r3, [r2, #68]
	str	r3, [sp, #8]
	ldr	r3, [r2, #48]
	str	r3, [sp, #4]
	ldr	r0, .L355+4
	ldr	ip, [r2, #44]
	ldr	r3, [r0, #64]
	ldr	r2, [r0, #68]
	add	r0, r0, #44
	ldm	r0, {r0, r1}
	ldr	r5, .L355+8
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L319
	ldr	r3, .L355+28
	mov	lr, pc
	bx	r3
	b	.L319
.L354:
	ldr	r3, [r5, #44]
	add	r3, r3, #10
	str	r3, [r5, #44]
	b	.L312
.L353:
	ldr	r3, [r5, #48]
	sub	r3, r3, #10
	str	r3, [r5, #48]
	b	.L312
.L356:
	.align	2
.L355:
	.word	.LANCHOR0+24
	.word	steven
	.word	collision
	.word	.LANCHOR0
	.word	goToGardenState
	.word	goToJdbState
	.word	goToZooState
	.word	goToWinState
	.size	starCollisions, .-starCollisions
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
	push	{r4, lr}
	bl	enemyCollisions
	bl	starCollisions
	ldr	r3, .L376
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L371
	ldr	r3, .L376+4
	ldrh	r3, [r3]
	tst	r3, #1
	ldr	r4, .L376+8
	bne	.L358
	ldr	r3, [r4, #76]
	cmp	r3, #1
	beq	.L372
	cmp	r3, #2
	beq	.L373
	cmp	r3, #3
	beq	.L374
	cmp	r3, #0
	bne	.L358
	ldr	r0, .L376+12
	mov	r2, r0
.L363:
	ldr	r1, [r2, #52]
	cmp	r1, #0
	beq	.L375
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #104
	bne	.L363
.L358:
	ldr	r2, .L376+16
	ldr	r3, .L376+20
	ldr	r0, [r2]
	ldr	r1, [r3]
	ldr	r2, [r4, #44]
	ldr	r3, [r4, #48]
	sub	r2, r2, r0
	sub	r3, r3, r1
	str	r2, [r4, #36]
	str	r3, [r4, #40]
	pop	{r4, lr}
	bx	lr
.L371:
	ldr	r4, .L376+8
	b	.L358
.L372:
	bl	throwLeft
	b	.L358
.L373:
	bl	throwRight
	b	.L358
.L374:
	bl	throwUp
	b	.L358
.L375:
	mov	ip, #1
	mov	lr, #4
	add	r2, r3, r3, lsl ip
	add	r3, r3, r2, lsl #2
	add	r3, r0, r3, lsl #3
	add	r0, r4, #36
	ldm	r0, {r0, r2}
	add	r0, r0, #11
	add	r2, r2, lr
	str	r1, [r3, #100]
	str	lr, [r3, #8]
	str	r0, [r3, #36]
	str	r2, [r3, #40]
	str	ip, [r3, #52]
	b	.L358
.L377:
	.align	2
.L376:
	.word	oldButtons
	.word	buttons
	.word	steven
	.word	bubbles
	.word	vOff
	.word	hOff
	.size	updateSteven, .-updateSteven
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
	ldr	r4, .L396
	ldr	r8, .L396+4
	sub	sp, sp, #16
	add	r7, r4, #520
.L384:
	ldr	r3, [r4, #52]
	cmp	r3, #0
	beq	.L380
	ldr	r6, [r5, #12]
	cmp	r6, #0
	beq	.L393
	cmp	r6, #1
	beq	.L394
.L380:
	add	r4, r4, #104
	cmp	r4, r7
	bne	.L384
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L393:
	add	ip, r4, #64
	ldm	ip, {ip, lr}
	add	r2, r5, #64
	ldm	r2, {r2, r3}
	ldr	r1, [r5, #36]
	ldr	r0, [r5, #40]
	str	lr, [sp, #12]
	str	ip, [sp, #8]
	ldr	lr, [r4, #36]
	ldr	ip, [r4, #40]
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	bne	.L395
	ldr	r3, [r4, #52]
	cmp	r3, #0
	beq	.L380
	ldr	r6, [r5, #12]
	cmp	r6, #1
	bne	.L380
.L394:
	add	ip, r4, #64
	ldm	ip, {ip, lr}
	add	r2, r5, #64
	ldm	r2, {r2, r3}
	ldr	r1, [r5, #36]
	ldr	r0, [r5, #40]
	str	lr, [sp, #12]
	str	ip, [sp, #8]
	ldr	lr, [r4, #36]
	ldr	ip, [r4, #40]
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	strne	r10, [r5, #12]
	strne	r10, [r4, #52]
	strne	r6, [r4, #100]
	b	.L380
.L395:
	str	r9, [r5, #12]
	str	r6, [r4, #52]
	str	r9, [r4, #100]
	b	.L380
.L397:
	.align	2
.L396:
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
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r8, .L402
	ldr	r7, .L402+4
	ldr	r1, [r8, #28]
	mov	r0, r8
	mov	r2, #20
	ldr	r6, .L402+8
	bl	hoverDN
	ldr	r1, [r7, #28]
	mov	r0, r7
	mov	r2, #60
	bl	hoverV
	ldr	r1, [r6, #32]
	mov	r0, r6
	mov	r2, #40
	bl	hoverH
	ldr	r4, .L402+12
	add	r5, r4, #24
.L399:
	ldr	r0, [r4, #4]!
	bl	bubbling
	cmp	r4, r5
	bne	.L399
	ldr	r3, .L402+16
	ldr	r1, [r3]
	ldr	r3, [r8, #44]
	ldr	r2, .L402+20
	sub	r3, r3, r1
	ldr	r0, [r2]
	str	r3, [r8, #36]
	ldr	r2, [r7, #44]
	ldr	r3, [r6, #44]
	sub	r2, r2, r1
	sub	r3, r3, r1
	str	r2, [r7, #36]
	ldr	r1, [r8, #48]
	ldr	r2, [r7, #48]
	str	r3, [r6, #36]
	ldr	r3, [r6, #48]
	sub	r1, r1, r0
	sub	r2, r2, r0
	sub	r3, r3, r0
	str	r1, [r8, #40]
	str	r2, [r7, #40]
	str	r3, [r6, #40]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L403:
	.align	2
.L402:
	.word	yDiamond
	.word	bDiamond
	.word	wDiamond
	.word	.LANCHOR0-4
	.word	vOff
	.word	hOff
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
	ldr	r4, .L408
	add	r5, r4, #16
.L405:
	ldr	r0, [r4], #4
	bl	bubbling
	cmp	r4, r5
	bne	.L405
	ldr	lr, .L408+4
	ldr	r0, .L408+8
	ldr	r4, [lr, #44]
	ldr	r0, [r0]
	ldr	r1, .L408+12
	sub	r4, r4, r0
	ldr	r1, [r1]
	str	r4, [lr, #36]
	ldr	r4, [lr, #48]
	ldr	ip, .L408+16
	sub	r4, r4, r1
	str	r4, [lr, #40]
	add	r4, ip, #44
	ldm	r4, {r4, lr}
	ldr	r2, .L408+20
	ldr	r3, .L408+24
	sub	r4, r4, r0
	sub	lr, lr, r1
	str	r4, [ip, #36]
	str	lr, [ip, #40]
	ldr	r4, [r2, #44]
	ldr	ip, [r3, #44]
	sub	r4, r4, r0
	ldr	lr, [r2, #48]
	sub	r0, ip, r0
	ldr	ip, [r3, #48]
	sub	lr, lr, r1
	sub	r1, ip, r1
	str	r4, [r2, #36]
	str	lr, [r2, #40]
	str	r0, [r3, #36]
	str	r1, [r3, #40]
	pop	{r4, r5, r6, lr}
	bx	lr
.L409:
	.align	2
.L408:
	.word	.LANCHOR0+24
	.word	zoo
	.word	vOff
	.word	hOff
	.word	earth
	.word	jungleBase
	.word	garden
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
	ldr	r4, .L412
	bl	animateSteven
	bl	updateSteven
	bl	updateEnemies
	bl	updateStars
	bl	updateLives
	mov	r0, r4
	bl	updateBubble
	add	r0, r4, #104
	bl	updateBubble
	add	r0, r4, #208
	bl	updateBubble
	add	r0, r4, #312
	bl	updateBubble
	add	r0, r4, #416
	pop	{r4, lr}
	b	updateBubble
.L413:
	.align	2
.L412:
	.word	bubbles
	.size	updateGame, .-updateGame
	.comm	shadowOAM,1024,4
	.comm	bubbles,520,4
	.comm	lives,312,4
	.global	stars
	.comm	garden,104,4
	.comm	jungleBase,104,4
	.comm	zoo,104,4
	.comm	earth,104,4
	.global	enemies
	.comm	aquamarine,104,4
	.comm	jasper,104,4
	.comm	spinel,104,4
	.comm	wDiamond,104,4
	.comm	bDiamond,104,4
	.comm	yDiamond,104,4
	.comm	vOff,4,4
	.comm	hOff,4,4
	.comm	livesLeft,4,4
	.comm	steven,104,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	enemies, %object
	.size	enemies, 24
enemies:
	.word	yDiamond
	.word	bDiamond
	.word	wDiamond
	.word	spinel
	.word	jasper
	.word	aquamarine
	.type	stars, %object
	.size	stars, 16
stars:
	.word	earth
	.word	zoo
	.word	jungleBase
	.word	garden
	.ident	"GCC: (devkitARM release 47) 7.1.0"
