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
	ldr	r3, .L139
	ldr	r2, [r3, #76]
	cmp	r2, #4
	movne	r1, #4
	push	{r4, r5, lr}
	strne	r2, [r3, #80]
	strne	r1, [r3, #76]
	ldr	r2, .L139+4
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
	ldr	r2, .L139+8
	ldrh	r2, [r2, #48]
	tst	r2, #64
	bne	.L120
	ldr	r2, [r3, #44]
	cmp	r2, #9
	bgt	.L138
.L120:
	ldr	r2, .L139+8
	ldrh	r2, [r2, #48]
	ands	r2, r2, #128
	bne	.L123
	ldr	lr, .L139+12
	ldr	ip, [lr]
	ldr	r0, [r3, #44]
	ldr	r4, [r3, #56]
	cmp	ip, #512
	add	r0, r0, r4
	addlt	ip, ip, #1
	str	r2, [r3, #76]
	str	r0, [r3, #44]
	strlt	ip, [lr]
.L123:
	ldr	r2, .L139+8
	ldrh	r0, [r2, #48]
	tst	r0, #32
	bne	.L125
	mov	ip, #1
	ldrh	lr, [r2, #48]
	ldr	r0, [r3, #60]
	ldr	r2, [r3, #48]
	tst	lr, #16
	sub	r2, r2, r0
	str	r2, [r3, #48]
	str	ip, [r3, #76]
	beq	.L126
.L129:
	add	r1, r1, #1
	str	r1, [r3, #72]
	pop	{r4, r5, lr}
	bx	lr
.L125:
	ldrh	r2, [r2, #48]
	tst	r2, #16
	bne	.L128
	ldr	r0, [r3, #60]
	ldr	r2, [r3, #48]
.L126:
	mov	ip, #2
	add	r2, r2, r0
	str	r2, [r3, #48]
	str	ip, [r3, #76]
	b	.L129
.L128:
	ldr	r2, [r3, #76]
	cmp	r2, #4
	bne	.L129
	mov	r1, #0
	ldr	r2, [r3, #80]
	str	r1, [r3, #84]
	str	r2, [r3, #76]
	pop	{r4, r5, lr}
	bx	lr
.L138:
	mov	lr, #3
	ldr	ip, .L139+12
	ldr	r0, [ip]
	ldr	r4, [r3, #56]
	cmp	r0, #0
	sub	r2, r2, r4
	subgt	r0, r0, #1
	str	r2, [r3, #44]
	str	lr, [r3, #76]
	strgt	r0, [ip]
	b	.L120
.L140:
	.align	2
.L139:
	.word	steven
	.word	1717986919
	.word	67109120
	.word	vOff
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
	ldr	r2, .L144
	ldr	r1, .L144+4
	ldrb	r0, [r2, #36]	@ zero_extendqisi2
	ldr	r3, [r2, #40]
	strh	r0, [r1]	@ movhi
	ldr	r0, .L144+8
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
.L145:
	.align	2
.L144:
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
	ldr	r3, .L150
	str	r2, [r3, #100]
	str	lr, [r3, #48]
	str	lr, [r3, #32]
	str	fp, [r3, #44]
	str	fp, [r3, #28]
	str	r5, [r3, #52]
	ldr	r3, .L150+4
	str	lr, [r3, #44]
	str	lr, [r3, #28]
	str	r2, [r3, #100]
	str	r5, [r3, #52]
	str	r10, [r3, #48]
	str	r9, [r3, #32]
	ldr	r3, .L150+8
	mov	ip, r2
	str	r2, [r3, #100]
	ldr	r2, .L150+12
	str	r5, [r3, #52]
	str	r8, [r3, #44]
	str	r7, [r3, #28]
	str	r6, [r3, #48]
	str	r6, [r3, #32]
	add	lr, r2, #24
.L147:
	ldr	r3, [r2, #4]!
	cmp	r2, lr
	str	r0, [r3, #64]
	str	r0, [r3, #68]
	str	r4, [r3, #92]
	str	ip, [r3, #96]
	str	r1, [r3, #56]
	str	r1, [r3, #60]
	str	ip, [r3, #12]
	bne	.L147
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L151:
	.align	2
.L150:
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
	ldr	r3, .L160
	ldr	ip, .L160+4
	ldr	r4, .L160+8
.L157:
	ldr	r1, [ip, r2, lsl #2]
	ldr	r0, [r1, #100]
	cmp	r0, #0
	bne	.L153
	ldr	r0, [r1, #36]
	cmp	r0, #160
	bls	.L154
.L153:
	ldrh	r1, [r3, #64]
	orr	r1, r1, #512
	strh	r1, [r3, #64]	@ movhi
.L155:
	add	r2, r2, #1
	cmp	r2, #3
	add	r3, r3, #8
	bne	.L157
	pop	{r4, r5, r6, lr}
	bx	lr
.L154:
	ldr	lr, [r1, #12]
	cmp	lr, #0
	bne	.L156
	ldr	lr, [r1, #40]
	ldr	r6, [r1, #92]
	ldr	r5, [r1, #96]
	and	lr, lr, r4
	orr	r1, lr, #16384
	add	lr, r5, r6, lsl #5
	strh	r0, [r3, #64]	@ movhi
	strh	r1, [r3, #66]	@ movhi
	strh	lr, [r3, #68]	@ movhi
	b	.L155
.L156:
	cmp	lr, #1
	bne	.L155
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
	b	.L155
.L161:
	.align	2
.L160:
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
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r7, #1
	mov	r9, #20
	mov	r8, #115
	mov	ip, #0
	mov	r0, r7
	mov	r1, #8
	mov	r5, #2
	mov	r4, #9
	mov	lr, #3
	ldr	r3, .L166
	ldr	r2, [r3]
	ldr	r3, .L166+4
	sub	r2, r9, r2
	str	r2, [r3, #36]
	ldr	r2, .L166+8
	ldr	r2, [r2]
	sub	r2, r8, r2
	str	r2, [r3, #40]
	ldr	r2, .L166+12
	str	r9, [r3, #44]
	str	r8, [r3, #48]
	str	r7, [r3, #52]
	mov	r6, ip
	str	ip, [r3, #100]
	add	ip, r2, #16
.L163:
	ldr	r3, [r2], #4
	cmp	r2, ip
	str	r1, [r3, #64]
	str	r1, [r3, #68]
	str	r1, [r3, #92]
	str	r5, [r3, #96]
	str	r0, [r3, #56]
	str	r0, [r3, #60]
	str	r6, [r3, #12]
	stm	r3, {r4, lr}
	bne	.L163
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L167:
	.align	2
.L166:
	.word	vOff
	.word	earth
	.word	hOff
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
	ldr	r3, .L172
	str	r5, [r3]
	ldr	r3, .L172+4
.L169:
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
	bne	.L169
	bl	initBubbles
	mov	r1, #352
	ldr	r2, .L172+8
	ldr	r3, .L172+12
	str	r1, [r2]
	str	r4, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L173:
	.align	2
.L172:
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
	@ link register save eliminated.
	ldr	r3, .L181
	ldr	r3, [r3, #24]
	ldr	r2, [r3, #100]
	cmp	r2, #0
	bne	.L175
	ldr	r2, [r3, #36]
	cmp	r2, #160
	bls	.L176
.L175:
	ldr	r2, .L181+4
	ldrh	r3, [r2, #32]
	orr	r3, r3, #512
	strh	r3, [r2, #32]	@ movhi
	bx	lr
.L176:
	ldr	r1, .L181+8
	ldrh	r1, [r1, #48]
	tst	r1, #2
	bne	.L178
	ldr	r1, [r3, #40]
	ldr	ip, [r3]
	ldr	r0, [r3, #4]
	lsl	r3, r1, #23
	ldr	r1, .L181+4
	lsr	r3, r3, #23
	add	r0, r0, ip, lsl #5
	strh	r3, [r1, #34]	@ movhi
	strh	r2, [r1, #32]	@ movhi
	strh	r0, [r1, #36]	@ movhi
	bx	lr
.L178:
	ldr	r1, [r3, #12]
	cmp	r1, #0
	beq	.L180
	cmp	r1, #1
	bxne	lr
	add	r0, r3, #92
	ldm	r0, {r0, r1}
	ldr	ip, [r3, #40]
	add	r0, r0, #1
	ldr	r3, .L181+4
	add	r1, r1, r0, lsl #5
	strh	r1, [r3, #36]	@ movhi
	strh	r2, [r3, #32]	@ movhi
	strh	ip, [r3, #34]	@ movhi
	bx	lr
.L180:
	ldr	ip, [r3, #92]
	ldr	r1, [r3, #96]
	ldr	r0, [r3, #40]
	ldr	r3, .L181+4
	add	r1, r1, ip, lsl #5
	strh	r1, [r3, #36]	@ movhi
	strh	r2, [r3, #32]	@ movhi
	strh	r0, [r3, #34]	@ movhi
	bx	lr
.L182:
	.align	2
.L181:
	.word	.LANCHOR0
	.word	shadowOAM
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
	ldr	r4, .L185
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
	ldr	r3, .L185+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L185+8
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L185+12
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L185+16
	ldrh	r1, [r2]
	ldr	r2, .L185+20
	ldrh	r2, [r2]
	strh	r1, [r3, #16]	@ movhi
	pop	{r4, lr}
	strh	r2, [r3, #18]	@ movhi
	bx	lr
.L186:
	.align	2
.L185:
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
	beq	.L208
	ldr	lr, [sp, #8]
	cmp	r3, r4
	add	lr, r1, lr
	beq	.L209
.L192:
	cmp	ip, lr
	beq	.L210
.L194:
	cmp	ip, lr
	cmple	r2, r4
	beq	.L199
.L187:
	pop	{r4, lr}
	bx	lr
.L209:
	cmp	ip, r1
	bge	.L196
	cmp	ip, lr
	bne	.L194
.L198:
	cmp	r2, r4
	bge	.L194
	ldr	r3, [r0, #60]
	sub	r4, r4, r3
	str	r4, [r0, #48]
	b	.L187
.L208:
	cmp	r2, r4
	bgt	.L189
	cmp	r3, r4
	bgt	.L211
	ldr	lr, [sp, #8]
	add	lr, ip, lr
	bne	.L192
.L196:
	cmp	ip, lr
	bge	.L192
	ldr	r3, [r0, #56]
	add	ip, r3, ip
	str	ip, [r0, #44]
	b	.L187
.L210:
	cmp	r4, r3
	ble	.L212
	cmp	r2, r4
	bne	.L187
.L199:
	cmp	ip, r1
	ldrgt	r3, [r0, #56]
	subgt	ip, ip, r3
	strgt	ip, [r0, #44]
	b	.L187
.L189:
	ldr	lr, [sp, #8]
	cmp	r3, r4
	add	lr, ip, lr
	beq	.L196
	cmp	ip, lr
	bne	.L187
	cmp	r3, r4
	blt	.L187
	mov	lr, ip
	b	.L194
.L211:
	ldr	r3, [r0, #60]
	add	r4, r3, r4
	str	r4, [r0, #48]
	b	.L187
.L212:
	mov	lr, ip
	b	.L198
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
	blt	.L214
	add	r2, r1, r2
	cmp	ip, r2
	bge	.L214
	add	ip, ip, r3
	cmp	ip, r1
	cmpgt	r2, ip
	str	ip, [r0, #48]
	ble	.L214
	ldr	r3, [r0, #12]
	cmp	r3, #1
	bne	.L213
	ldr	r0, .L222
	ldr	r3, [r0, #64]
	ldr	r2, [r0, #68]
	add	r0, r0, #44
	ldr	r5, [r4, #64]
	ldm	r0, {r0, r1}
	str	ip, [sp, #4]
	ldr	lr, [r4, #68]
	str	r5, [sp, #12]
	ldr	ip, [r4, #44]
	ldr	r5, .L222+4
	str	lr, [sp, #8]
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L213
	ldr	ip, [r4, #48]
	ldr	r3, [r4, #60]
.L214:
	sub	ip, ip, r3
	rsb	r3, r3, #0
	str	ip, [r4, #48]
	str	r3, [r4, #60]
.L213:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L223:
	.align	2
.L222:
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
	blt	.L225
	add	r2, r1, r2
	cmp	ip, r2
	bge	.L225
	add	ip, ip, r3
	cmp	ip, r1
	cmpgt	r2, ip
	str	ip, [r0, #44]
	ble	.L225
	ldr	r3, [r0, #12]
	cmp	r3, #1
	bne	.L224
	ldr	r0, .L233
	ldr	r3, [r0, #64]
	ldr	r2, [r0, #68]
	add	r0, r0, #44
	ldr	r5, [r4, #64]
	ldm	r0, {r0, r1}
	str	ip, [sp]
	ldr	lr, [r4, #68]
	str	r5, [sp, #12]
	ldr	ip, [r4, #48]
	ldr	r5, .L233+4
	stmib	sp, {ip, lr}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L224
	ldr	ip, [r4, #44]
	ldr	r3, [r4, #56]
.L225:
	sub	ip, ip, r3
	rsb	r3, r3, #0
	str	ip, [r4, #44]
	str	r3, [r4, #56]
.L224:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L234:
	.align	2
.L233:
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
	blt	.L236
	add	r2, r1, r2
	cmp	ip, r2
	bge	.L236
	add	ip, ip, r0
	cmp	ip, r1
	cmpgt	r2, ip
	add	lr, lr, r3
	str	ip, [r4, #44]
	str	lr, [r4, #48]
	ble	.L236
	ldr	r3, [r4, #12]
	cmp	r3, #1
	bne	.L235
	ldr	r0, .L244
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
	ldr	r5, .L244+4
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L235
	add	r0, r4, #56
	ldr	ip, [r4, #44]
	ldm	r0, {r0, r3}
	ldr	lr, [r4, #48]
.L236:
	sub	ip, ip, r0
	sub	lr, lr, r3
	rsb	r0, r0, #0
	rsb	r3, r3, #0
	str	ip, [r4, #44]
	str	r0, [r4, #56]
	str	lr, [r4, #48]
	str	r3, [r4, #60]
.L235:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L245:
	.align	2
.L244:
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
	blt	.L247
	add	r2, r1, r2
	cmp	ip, r2
	bge	.L247
	add	ip, ip, r0
	cmp	ip, r1
	cmpgt	r2, ip
	sub	lr, lr, r3
	str	ip, [r4, #44]
	str	lr, [r4, #48]
	ble	.L247
	ldr	r3, [r4, #12]
	cmp	r3, #1
	bne	.L246
	ldr	r0, .L255
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
	ldr	r5, .L255+4
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L246
	add	r0, r4, #56
	ldr	ip, [r4, #44]
	ldm	r0, {r0, r3}
	ldr	lr, [r4, #48]
.L247:
	sub	ip, ip, r0
	add	lr, r3, lr
	rsb	r0, r0, #0
	rsb	r3, r3, #0
	str	ip, [r4, #44]
	str	r0, [r4, #56]
	str	lr, [r4, #48]
	str	r3, [r4, #60]
.L246:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L256:
	.align	2
.L255:
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
	ldr	r4, .L278
	sub	sp, sp, #16
	ldr	r5, .L278+4
	ldr	r8, .L278+8
	ldr	r7, .L278+12
	add	r6, r4, #24
	b	.L268
.L263:
	cmp	r4, r6
	beq	.L274
.L268:
	ldr	r2, [r4, #4]!
	ldr	r3, [r2, #12]
	cmp	r3, #0
	bne	.L263
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
	beq	.L263
	ldr	r3, [r7]
	ldr	r2, [r5, #76]
	sub	r3, r3, #1
	cmp	r2, #1
	str	r3, [r7]
	beq	.L275
	cmp	r2, #2
	beq	.L276
	cmp	r2, #3
	beq	.L277
	cmp	r2, #0
	ldreq	r3, [r5, #44]
	subeq	r3, r3, #10
	streq	r3, [r5, #44]
	cmp	r4, r6
	bne	.L268
.L274:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L276:
	ldr	r3, [r5, #48]
	sub	r3, r3, #10
	str	r3, [r5, #48]
	b	.L263
.L275:
	ldr	r3, [r5, #48]
	add	r3, r3, #10
	str	r3, [r5, #48]
	b	.L263
.L277:
	ldr	r3, [r5, #44]
	add	r3, r3, #10
	str	r3, [r5, #44]
	b	.L263
.L279:
	.align	2
.L278:
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
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, #1
	ldr	r6, .L304
	ldr	r5, .L304+4
	ldr	r7, .L304+8
	ldr	r8, .L304+12
	sub	sp, sp, #16
.L287:
	ldr	r2, [r6, r4, lsl #2]
	ldr	r3, [r2, #12]
	cmp	r3, #0
	beq	.L299
.L282:
	add	r4, r4, #1
	cmp	r4, #4
	bne	.L287
	ldr	r3, .L304+16
	ldr	r2, [r3, #24]
	ldr	r4, [r2, #12]
	cmp	r4, #0
	beq	.L300
.L280:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L299:
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
	beq	.L282
	mov	lr, pc
	bx	r8
	ldr	r3, [r5, #76]
	cmp	r3, #1
	beq	.L301
	cmp	r3, #2
	beq	.L302
	cmp	r3, #3
	beq	.L303
	cmp	r3, #0
	ldreq	r3, [r5, #36]
	subeq	r3, r3, #10
	streq	r3, [r5, #36]
	b	.L282
.L300:
	ldr	r3, [r2, #64]
	str	r3, [sp, #12]
	ldr	r3, [r2, #68]
	str	r3, [sp, #8]
	ldr	r3, [r2, #40]
	str	r3, [sp, #4]
	ldr	r0, .L304+4
	ldr	ip, [r2, #36]
	ldr	r3, [r0, #64]
	ldr	r2, [r0, #68]
	add	r0, r0, #36
	ldm	r0, {r0, r1}
	ldr	r5, .L304+8
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L280
	ldr	r3, .L304+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L304+24
	str	r4, [r3]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L302:
	ldr	r3, [r5, #40]
	sub	r3, r3, #10
	str	r3, [r5, #40]
	b	.L282
.L301:
	ldr	r3, [r5, #40]
	add	r3, r3, #10
	str	r3, [r5, #40]
	b	.L282
.L303:
	ldr	r3, [r5, #36]
	add	r3, r3, #10
	str	r3, [r5, #36]
	b	.L282
.L305:
	.align	2
.L304:
	.word	.LANCHOR0+24
	.word	steven
	.word	collision
	.word	goToPause
	.word	.LANCHOR0
	.word	goToWinState
	.word	vOff
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
	ldr	r3, .L325
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L320
	ldr	r3, .L325+4
	ldrh	r3, [r3]
	tst	r3, #1
	ldr	r4, .L325+8
	bne	.L307
	ldr	r3, [r4, #76]
	cmp	r3, #1
	beq	.L321
	cmp	r3, #2
	beq	.L322
	cmp	r3, #3
	beq	.L323
	cmp	r3, #0
	bne	.L307
	ldr	r0, .L325+12
	mov	r2, r0
.L312:
	ldr	r1, [r2, #52]
	cmp	r1, #0
	beq	.L324
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #104
	bne	.L312
.L307:
	ldr	r2, .L325+16
	ldr	r3, .L325+20
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
.L320:
	ldr	r4, .L325+8
	b	.L307
.L321:
	bl	throwLeft
	b	.L307
.L322:
	bl	throwRight
	b	.L307
.L323:
	bl	throwUp
	b	.L307
.L324:
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
	b	.L307
.L326:
	.align	2
.L325:
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
	ldr	r4, .L345
	ldr	r8, .L345+4
	sub	sp, sp, #16
	add	r7, r4, #520
.L333:
	ldr	r3, [r4, #52]
	cmp	r3, #0
	beq	.L329
	ldr	r6, [r5, #12]
	cmp	r6, #0
	beq	.L342
	cmp	r6, #1
	beq	.L343
.L329:
	add	r4, r4, #104
	cmp	r4, r7
	bne	.L333
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L342:
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
	bne	.L344
	ldr	r3, [r4, #52]
	cmp	r3, #0
	beq	.L329
	ldr	r6, [r5, #12]
	cmp	r6, #1
	bne	.L329
.L343:
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
	b	.L329
.L344:
	str	r9, [r5, #12]
	str	r6, [r4, #52]
	str	r9, [r4, #100]
	b	.L329
.L346:
	.align	2
.L345:
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
	ldr	r8, .L351
	ldr	r7, .L351+4
	ldr	r1, [r8, #28]
	mov	r0, r8
	mov	r2, #20
	ldr	r6, .L351+8
	bl	hoverDN
	ldr	r1, [r7, #28]
	mov	r0, r7
	mov	r2, #60
	bl	hoverV
	ldr	r1, [r6, #32]
	mov	r0, r6
	mov	r2, #40
	bl	hoverH
	ldr	r4, .L351+12
	add	r5, r4, #24
.L348:
	ldr	r0, [r4, #4]!
	bl	bubbling
	cmp	r4, r5
	bne	.L348
	ldr	r3, .L351+16
	ldr	r1, [r3]
	ldr	r3, [r8, #44]
	ldr	r2, .L351+20
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
.L352:
	.align	2
.L351:
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
	ldr	r4, .L357
	add	r5, r4, #16
.L354:
	ldr	r0, [r4], #4
	bl	bubbling
	cmp	r4, r5
	bne	.L354
	ldr	r3, .L357+4
	ldr	r2, .L357+8
	ldr	r0, .L357+12
	ldr	ip, [r2]
	ldr	r1, [r3, #44]
	ldr	r2, [r3, #48]
	ldr	r0, [r0]
	sub	r1, r1, ip
	sub	r2, r2, r0
	str	r1, [r3, #36]
	str	r2, [r3, #40]
	pop	{r4, r5, r6, lr}
	bx	lr
.L358:
	.align	2
.L357:
	.word	.LANCHOR0+24
	.word	earth
	.word	vOff
	.word	hOff
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
	ldr	r4, .L361
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
.L362:
	.align	2
.L361:
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
