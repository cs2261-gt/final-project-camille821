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
	ldr	r2, .L19
	ldr	r1, [r2]
	cmp	r1, #256
	str	lr, [sp, #-4]!
	ble	.L7
	mov	lr, #67108864
	ldr	ip, .L19+4
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
	ldr	r2, .L19+8
	ldr	r3, [r2]
	cmp	r3, #512
	subgt	r3, r3, #512
	strgt	r3, [r2]
	ldr	r3, .L19+12
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
	cmp	ip, r3
	bne	.L10
	ldr	r3, .L19+16
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
	cmp	r3, ip
	bne	.L12
	ldr	r3, .L19+20
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
	mov	r3, #67108864
	ldr	r2, .L19+24
	lsl	r1, r1, #16
	ldrh	r2, [r2]
	lsr	r1, r1, #16
	strh	r1, [r3, #16]	@ movhi
	ldr	lr, [sp], #4
	strh	r2, [r3, #18]	@ movhi
	bx	lr
.L20:
	.align	2
.L19:
	.word	hOff
	.word	screenBlock
	.word	steven
	.word	.LANCHOR0
	.word	.LANCHOR0+32
	.word	bubbles
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
	ldr	r2, .L26
	ldr	ip, .L26+4
	ldr	r3, [r2, #72]
	ldr	r4, [r2, #48]
	ldr	r5, [r2, #68]
	add	r7, r3, r3, lsr #31
	ldr	ip, [ip]
	ldr	r2, [r2, #52]
	ldr	r3, .L26+8
	add	r5, r5, r5, lsr #31
	add	r4, r4, r7, asr r6
	add	r2, r2, r5, asr r6
	sub	ip, r4, ip
	add	r5, r3, #540
.L23:
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
	bne	.L23
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L27:
	.align	2
.L26:
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
	beq	.L29
	ldr	r3, [r0, #12]
	cmp	r3, #1
	beq	.L40
	cmp	r3, #2
	beq	.L41
	cmp	r3, #3
	bne	.L34
	ldr	r2, [r0, #60]
	ldr	r3, [r0, #40]
	add	r3, r2, r3
	cmp	r3, #159
	bgt	.L29
	ldr	r1, [r0, #72]
	rsb	r1, r1, #0
	cmp	r3, r1
	bgt	.L42
.L29:
	mov	r2, #0
	mov	r3, #1
	str	r2, [r0, #56]
	str	r3, [r0, #104]
.L31:
	ldr	r2, .L43
	ldr	r3, .L43+4
	ldr	lr, [r2]
	add	ip, r3, #540
.L33:
	add	r1, r3, #48
	ldm	r1, {r1, r2}
	ldr	r0, [r3]
	sub	r1, r1, lr
	sub	r2, r2, r0
	str	r1, [r3, #40]
	str	r2, [r3, #44]
	add	r3, r3, #108
	cmp	ip, r3
	bne	.L33
	ldr	lr, [sp], #4
	bx	lr
.L40:
	ldr	r2, [r0, #64]
	ldr	r3, [r0, #44]
	add	r3, r2, r3
	cmp	r3, #1024
	bge	.L29
	ldr	r1, [r0, #68]
	rsb	r1, r1, #0
	cmp	r3, r1
	ble	.L29
	ldr	r3, [r0]
	cmp	r3, #0
	ble	.L29
	ldr	r3, [r0, #52]
	sub	r2, r3, r2
	str	r2, [r0, #52]
	b	.L31
.L41:
	ldr	r1, [r0, #64]
	ldr	r3, [r0, #44]
	ldr	r2, [r0, #68]
	add	r3, r1, r3
	add	ip, r2, #1024
	cmp	r3, ip
	bgt	.L29
	rsb	r2, r2, #0
	cmp	r3, r2
	ble	.L29
	ldr	r3, [r0]
	cmp	r3, #1024
	bge	.L29
	ldr	r3, [r0, #52]
	add	r1, r3, r1
	str	r1, [r0, #52]
	b	.L31
.L42:
	ldr	r3, [r0, #48]
	sub	r2, r3, r2
	str	r2, [r0, #48]
	b	.L31
.L34:
	cmp	r3, #4
	bne	.L29
	ldr	r1, [r0, #60]
	ldr	r3, [r0, #40]
	ldr	r2, [r0, #72]
	add	r3, r1, r3
	add	ip, r2, #160
	cmp	r3, ip
	bgt	.L29
	rsb	r2, r2, #0
	cmp	r3, r2
	ble	.L29
	ldr	r3, [r0, #48]
	add	r1, r3, r1
	str	r1, [r0, #48]
	b	.L31
.L44:
	.align	2
.L43:
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
	ldr	r0, .L56
	mov	r2, r0
	ldr	r1, [r2, #56]
	cmp	r1, #0
	mov	r3, #0
	beq	.L55
.L46:
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #108
	bxeq	lr
	ldr	r1, [r2, #56]
	cmp	r1, #0
	bne	.L46
.L55:
	push	{r4, lr}
	mov	r4, #1
	ldr	lr, .L56+4
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
.L57:
	.align	2
.L56:
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
	ldr	r0, .L69
	mov	r2, r0
	ldr	r1, [r2, #56]
	cmp	r1, #0
	mov	r3, #0
	beq	.L68
.L59:
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #108
	bxeq	lr
	ldr	r1, [r2, #56]
	cmp	r1, #0
	bne	.L59
.L68:
	push	{r4, r5, lr}
	mov	r4, #1
	mov	r5, #2
	ldr	ip, .L69+4
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
.L70:
	.align	2
.L69:
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
	ldr	r0, .L82
	mov	r2, r0
	ldr	r1, [r2, #56]
	cmp	r1, #0
	mov	r3, #0
	beq	.L81
.L72:
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #108
	bxeq	lr
	ldr	r1, [r2, #56]
	cmp	r1, #0
	bne	.L72
.L81:
	push	{r4, r5, lr}
	mov	lr, #1
	mov	r4, #3
	ldr	r5, .L82+4
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
.L83:
	.align	2
.L82:
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
	ldr	r0, .L95
	mov	r2, r0
	ldr	r1, [r2, #56]
	cmp	r1, #0
	mov	r3, #0
	beq	.L94
.L85:
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #108
	bxeq	lr
	ldr	r1, [r2, #56]
	cmp	r1, #0
	bne	.L85
.L94:
	mov	ip, #1
	str	lr, [sp, #-4]!
	mov	lr, #4
	ldr	r2, .L95+4
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
.L96:
	.align	2
.L95:
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
	ldr	r0, .L103
	mov	r2, r0
	ldr	r1, [r2, #56]
	cmp	r1, #0
	mov	r3, #0
	beq	.L102
.L98:
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #108
	bxeq	lr
	ldr	r1, [r2, #56]
	cmp	r1, #0
	bne	.L98
.L102:
	mov	r2, #1
	add	r3, r3, r3, lsl r2
	add	r3, r3, r3, lsl #3
	add	r3, r0, r3, lsl #2
	str	r2, [r3, #56]
	bx	lr
.L104:
	.align	2
.L103:
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
	ldr	r3, .L111
	push	{r4, r5, lr}
	ldr	r2, .L111+4
	ldr	r5, .L111+8
	add	ip, r3, #540
.L108:
	ldr	r1, [r3, #104]
	cmp	r1, #0
	beq	.L106
	ldrh	r1, [r2, #160]
	orr	r1, r1, #512
	strh	r1, [r2, #160]	@ movhi
.L107:
	add	r3, r3, #108
	cmp	r3, ip
	add	r2, r2, #8
	bne	.L108
	pop	{r4, r5, lr}
	bx	lr
.L106:
	ldr	r0, [r3, #44]
	ldr	r4, [r3, #96]
	ldr	r1, [r3, #100]
	ldrb	lr, [r3, #40]	@ zero_extendqisi2
	and	r0, r0, r5
	add	r1, r1, r4, lsl #5
	strh	r0, [r2, #162]	@ movhi
	strh	r1, [r2, #164]	@ movhi
	strh	lr, [r2, #160]	@ movhi
	b	.L107
.L112:
	.align	2
.L111:
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
	ldr	r3, .L117
	str	r5, [r3]
	ldr	r3, .L117+4
.L114:
	str	r2, [r3, #44]
	add	r2, r2, #20
	cmp	r2, #240
	str	r0, [r3, #72]
	str	r0, [r3, #68]
	str	r4, [r3, #56]
	str	r1, [r3, #40]
	str	lr, [r3, #96]
	str	r1, [r3, #100]
	str	ip, [r3, #104]
	add	r3, r3, #108
	bne	.L114
	pop	{r4, r5, lr}
	bx	lr
.L118:
	.align	2
.L117:
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
	ldr	r3, .L125
	push	{r4, lr}
	ldr	r4, [r3]
	cmp	r4, #2
	beq	.L124
	cmp	r4, #1
	bne	.L122
	ldr	r3, .L125+4
	str	r4, [r3, #212]
.L119:
	pop	{r4, lr}
	bx	lr
.L122:
	cmp	r4, #0
	bne	.L119
	mov	r1, #1
	ldr	r2, .L125+4
	ldr	r3, .L125+8
	str	r1, [r2, #104]
	mov	lr, pc
	bx	r3
	ldr	r3, .L125+12
	str	r4, [r3]
	pop	{r4, lr}
	bx	lr
.L124:
	mov	r2, #1
	ldr	r3, .L125+4
	pop	{r4, lr}
	str	r2, [r3, #320]
	bx	lr
.L126:
	.align	2
.L125:
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
	ldr	r3, .L133
	push	{r4, r5, lr}
	ldr	r2, .L133+4
	ldr	r5, .L133+8
	add	ip, r3, #324
.L130:
	ldr	r1, [r3, #104]
	cmp	r1, #0
	beq	.L128
	ldrh	r1, [r2, #8]
	orr	r1, r1, #512
	strh	r1, [r2, #8]	@ movhi
.L129:
	add	r3, r3, #108
	cmp	r3, ip
	add	r2, r2, #8
	bne	.L130
	pop	{r4, r5, lr}
	bx	lr
.L128:
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
	b	.L129
.L134:
	.align	2
.L133:
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
	ldr	r0, .L137
	ldr	r0, [r0]
	ldr	r3, .L137+4
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
.L138:
	.align	2
.L137:
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
	ldr	r3, .L179
	ldr	r2, [r3, #80]
	cmp	r2, #4
	movne	r1, #4
	push	{r4, r5, lr}
	strne	r2, [r3, #84]
	strne	r1, [r3, #80]
	ldr	r2, .L179+4
	ldr	r1, [r3, #76]
	smull	r4, r5, r1, r2
	sub	r2, r5, r1, asr #31
	add	r2, r2, r2, lsl #1
	subs	r2, r1, r2
	bne	.L142
	add	r0, r3, #88
	ldm	r0, {r0, ip}
	add	r0, r0, #1
	cmp	r0, ip
	str	r0, [r3, #88]
	strge	r2, [r3, #88]
.L142:
	ldr	r2, .L179+8
	ldrh	r2, [r2, #48]
	tst	r2, #64
	bne	.L144
	ldr	r2, [r3, #48]
	cmp	r2, #0
	movgt	r0, #3
	ldrgt	ip, [r3, #60]
	subgt	r2, r2, ip
	strgt	r2, [r3, #48]
	strgt	r0, [r3, #80]
.L144:
	ldr	r2, .L179+8
	ldrh	r2, [r2, #48]
	ands	r2, r2, #128
	bne	.L146
	ldr	ip, [r3, #48]
	ldr	r0, [r3, #72]
	add	r0, ip, r0
	cmp	r0, #159
	str	r2, [r3, #80]
	ldrle	r2, [r3, #60]
	addle	ip, r2, ip
	strle	ip, [r3, #48]
.L146:
	ldr	r2, .L179+8
	ldrh	r0, [r2, #48]
	tst	r0, #32
	bne	.L148
	mov	r0, #1
	ldr	r2, [r3, #52]
	cmp	r2, #0
	str	r0, [r3, #80]
	ldrgt	r0, [r3, #64]
	subgt	r2, r2, r0
	strgt	r2, [r3, #52]
	ldr	r2, [r3, #44]
	cmp	r2, #99
	bgt	.L150
	ldr	lr, .L179+12
	ldr	r2, [r3]
	ldr	ip, [lr]
	sub	r2, r2, #1
	ldr	r0, .L179+16
	sub	ip, ip, #1
	str	r2, [r3]
	str	ip, [lr]
	add	lr, r0, #32
.L151:
	ldr	ip, [r0], #4
	ldr	r2, [ip]
	cmp	r0, lr
	sub	r2, r2, #1
	str	r2, [ip]
	bne	.L151
	ldr	r0, .L179+20
	add	lr, r0, #32
.L152:
	ldr	ip, [r0], #4
	ldr	r2, [ip]
	cmp	r0, lr
	sub	r2, r2, #1
	str	r2, [ip]
	bne	.L152
	ldr	r2, .L179+24
	add	ip, r2, #540
.L153:
	ldr	r0, [r2]
	sub	r0, r0, #1
	str	r0, [r2], #108
	cmp	r2, ip
	bne	.L153
.L150:
	ldr	r2, .L179+8
	ldrh	r2, [r2, #48]
	tst	r2, #16
	beq	.L163
.L162:
	add	r1, r1, #1
	str	r1, [r3, #76]
	pop	{r4, r5, lr}
	bx	lr
.L148:
	ldrh	r2, [r2, #48]
	tst	r2, #16
	bne	.L154
.L163:
	mov	ip, #2
	ldr	r0, [r3, #52]
	ldr	r2, [r3, #68]
	ldr	lr, .L179+28
	add	r2, r0, r2
	cmp	r2, lr
	ldrle	r2, [r3, #64]
	addle	r0, r2, r0
	ldr	r2, .L179+32
	ldr	r2, [r2]
	strle	r0, [r3, #52]
	cmp	r2, #31
	str	ip, [r3, #80]
	beq	.L178
	cmp	r2, #30
	bgt	.L162
	ldr	ip, .L179+12
	ldr	r0, .L179+36
	ldr	r2, [ip]
	cmp	r2, r0
	bgt	.L162
	ldr	r0, [r3, #44]
	cmp	r0, #80
	ble	.L162
	b	.L157
.L154:
	ldr	r2, [r3, #80]
	cmp	r2, #4
	bne	.L162
	mov	r1, #0
	ldr	r2, [r3, #84]
	str	r1, [r3, #88]
	str	r2, [r3, #80]
	pop	{r4, r5, lr}
	bx	lr
.L178:
	ldr	ip, .L179+12
	ldr	r2, [ip]
	cmp	r2, #16
	bgt	.L162
.L157:
	ldr	lr, [r3]
	add	r2, r2, #1
	ldr	r0, .L179+16
	add	lr, lr, #1
	str	r2, [ip]
	str	lr, [r3]
	add	lr, r0, #32
.L159:
	ldr	ip, [r0], #4
	ldr	r2, [ip]
	cmp	r0, lr
	add	r2, r2, #1
	str	r2, [ip]
	bne	.L159
	ldr	r0, .L179+20
	add	lr, r0, #32
.L160:
	ldr	ip, [r0], #4
	ldr	r2, [ip]
	cmp	r0, lr
	add	r2, r2, #1
	str	r2, [ip]
	bne	.L160
	ldr	r2, .L179+24
	add	ip, r2, #540
.L161:
	ldr	r0, [r2]
	add	r0, r0, #1
	str	r0, [r2], #108
	cmp	ip, r2
	bne	.L161
	b	.L162
.L180:
	.align	2
.L179:
	.word	steven
	.word	1431655766
	.word	67109120
	.word	hOff
	.word	.LANCHOR0
	.word	.LANCHOR0+32
	.word	bubbles
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
	ldr	r2, .L184
	ldr	r1, .L184+4
	ldrb	r0, [r2, #40]	@ zero_extendqisi2
	ldr	r3, [r2, #44]
	strh	r0, [r1]	@ movhi
	ldr	r0, .L184+8
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
.L185:
	.align	2
.L184:
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
	ldr	lr, .L190
	str	fp, [lr, #48]
	str	fp, [lr, #32]
	str	r10, [lr, #52]
	str	r10, [lr, #36]
	str	r5, [lr, #56]
	str	r4, [lr, #104]
	ldr	lr, .L190+4
	str	r8, [lr, #52]
	str	r8, [lr, #36]
	str	r9, [lr, #48]
	str	r9, [lr, #32]
	str	r5, [lr, #56]
	str	r4, [lr, #104]
	ldr	lr, .L190+8
	mov	r7, #45
	str	r4, [lr, #104]
	mov	r3, r4
	ldr	r4, .L190+12
	str	r4, [lr, #52]
	str	r4, [lr, #36]
	mov	r4, #440
	str	r7, [lr, #48]
	str	r7, [lr, #32]
	mov	r6, #15
	str	r5, [lr, #56]
	ldr	lr, .L190+16
	str	r4, [lr, #52]
	str	r4, [lr, #36]
	mov	r4, #105
	str	r6, [lr, #48]
	str	r6, [lr, #32]
	ldr	lr, .L190+20
	str	r4, [lr, #48]
	str	r4, [lr, #32]
	ldr	r4, .L190+24
	str	r4, [lr, #52]
	str	r4, [lr, #36]
	mov	r4, #40
	ldr	lr, .L190+28
	str	r4, [lr, #48]
	str	r4, [lr, #32]
	ldr	r4, .L190+32
	str	r4, [lr, #52]
	str	r4, [lr, #36]
	mov	lr, #28
	ldr	r4, .L190+36
	mov	ip, r5
	ldr	r5, .L190+40
	str	lr, [r4, #48]
	str	r5, [r4, #52]
	str	lr, [r4, #32]
	ldr	lr, .L190+44
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
	ldr	r4, .L190+48
	str	r5, [lr, #48]
	str	r5, [lr, #32]
	ldr	r5, .L190+52
	str	r6, [lr, #52]
	str	r6, [lr, #36]
	ldr	r8, [r4]
	add	r7, r5, #32
.L187:
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
	bne	.L187
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L191:
	.align	2
.L190:
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
	ldr	r3, .L206
	ldr	r1, .L206+4
	add	ip, r3, #64
.L200:
	ldr	r2, [r1], #4
	ldr	r0, [r2, #104]
	cmp	r0, #0
	bne	.L201
	ldr	r0, [r2, #44]
	cmp	r0, #240
	bls	.L203
.L201:
	ldrh	r2, [r3, #96]
	orr	r2, r2, #512
	strh	r2, [r3, #96]	@ movhi
	add	r3, r3, #8
	cmp	r3, ip
	bne	.L200
	bx	lr
.L203:
	push	{r4, lr}
.L194:
	ldr	lr, [r2, #16]
	cmp	lr, #0
	bne	.L196
	ldr	lr, [r2, #40]
	cmp	lr, #160
	bhi	.L195
	ldr	r4, [r2, #96]
	ldr	r2, [r2, #100]
	orr	r0, r0, #16384
	add	r2, r2, r4, lsl #5
	strh	r0, [r3, #98]	@ movhi
	strh	lr, [r3, #96]	@ movhi
	strh	r2, [r3, #100]	@ movhi
	add	r3, r3, #8
	cmp	r3, ip
	beq	.L205
.L197:
	ldr	r2, [r1], #4
	ldr	r0, [r2, #104]
	cmp	r0, #0
	bne	.L193
	ldr	r0, [r2, #44]
	cmp	r0, #240
	bls	.L194
.L193:
	ldrh	r2, [r3, #96]
	orr	r2, r2, #512
	strh	r2, [r3, #96]	@ movhi
.L195:
	add	r3, r3, #8
	cmp	r3, ip
	bne	.L197
.L205:
	pop	{r4, lr}
	bx	lr
.L196:
	cmp	lr, #1
	bne	.L195
	ldr	lr, [r2, #96]
	ldrb	r4, [r2, #40]	@ zero_extendqisi2
	ldr	r2, [r2, #100]
	add	lr, lr, #2
	orr	r0, r0, #16384
	add	r2, r2, lr, lsl #5
	strh	r0, [r3, #98]	@ movhi
	strh	r4, [r3, #96]	@ movhi
	strh	r2, [r3, #100]	@ movhi
	b	.L195
.L207:
	.align	2
.L206:
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
	ldr	r4, .L212
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
	ldr	r4, .L212+4
	str	r8, [r4, #8]
	str	r5, [r4, #48]
	str	ip, [r4, #4]
	str	fp, [r4, #52]
	ldr	r8, .L212+8
	ldr	r4, .L212+12
	str	r4, [r8, #52]
	ldr	r4, .L212+16
	mov	r10, #1000
	str	r7, [r4, #8]
	str	r7, [r8, #8]
	mov	r7, #9
	str	r6, [r4, #48]
	str	r6, [r4, #32]
	mov	r6, #95
	str	r7, [r4, #4]
	str	r10, [r4, #52]
	ldr	r4, .L212+20
	str	r6, [r4, #48]
	mov	r6, #860
	str	r6, [r4, #52]
	mov	r6, #38
	mov	r9, #115
	mov	r0, lr
	mov	r1, #1
	mov	r2, #0
	mov	r3, #8
	ldr	r7, .L212+24
	stmib	r4, {ip, lr}
	str	r5, [r7, #48]
	ldr	r4, .L212+28
	str	r5, [r8, #48]
	ldr	r5, .L212+32
	str	r6, [r4, #48]
	str	r5, [r7, #52]
	ldr	r6, .L212+36
	ldr	r5, .L212+40
	stmib	r7, {ip, lr}
	stmib	r4, {ip, lr}
	str	ip, [r8, #4]
	str	r10, [r5, #52]
	str	r9, [r5, #48]
	str	r9, [r5, #32]
	str	r6, [r4, #52]
	ldr	r6, .L212+44
	ldr	r4, .L212+48
	str	ip, [r5, #4]
	str	lr, [r5, #8]
	ldr	r7, [r6]
	add	r6, r4, #32
.L209:
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
	bne	.L209
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L213:
	.align	2
.L212:
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
	mov	r3, #0
	mov	r1, #28
	push	{r4, lr}
	ldr	ip, .L216
	ldr	lr, .L216+4
	ldr	r0, .L216+8
	ldr	r2, .L216+12
	str	r3, [lr]
	str	r3, [ip]
	str	r3, [r0]
	str	r1, [r2]
	bl	initSteven
	bl	initEnemies
	bl	initStars
	pop	{r4, lr}
	b	initBubbles
.L217:
	.align	2
.L216:
	.word	vOff
	.word	hOff
	.word	steven
	.word	screenBlock
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
	ldr	r3, .L228
	push	{r4, r5, r6, lr}
	ldr	r1, .L228+4
	ldr	r4, .L228+8
	add	ip, r3, #64
	b	.L224
.L219:
	ldrh	r2, [r3, #32]
	orr	r2, r2, #512
	strh	r2, [r3, #32]	@ movhi
.L221:
	add	r3, r3, #8
	cmp	r3, ip
	beq	.L227
.L224:
	ldr	r2, [r1], #4
	ldr	r0, [r2, #104]
	cmp	r0, #0
	bne	.L219
	ldr	r0, [r2, #44]
	cmp	r0, #240
	bhi	.L219
	ldrh	lr, [r4, #48]
	tst	lr, #2
	bne	.L222
	ldmib	r2, {r6, lr}
	ldrb	r5, [r2, #40]	@ zero_extendqisi2
	add	r2, lr, r6, lsl #5
	strh	r2, [r3, #36]	@ movhi
	strh	r5, [r3, #32]	@ movhi
	strh	r0, [r3, #34]	@ movhi
	add	r3, r3, #8
	cmp	r3, ip
	bne	.L224
.L227:
	pop	{r4, r5, r6, lr}
	bx	lr
.L222:
	ldr	lr, [r2, #16]
	cmp	lr, #0
	bne	.L223
	add	r6, r2, #96
	ldm	r6, {r6, lr}
	ldr	r5, [r2, #40]
	add	r2, lr, r6, lsl #5
	strh	r2, [r3, #36]	@ movhi
	strh	r5, [r3, #32]	@ movhi
	strh	r0, [r3, #34]	@ movhi
	b	.L221
.L223:
	cmp	lr, #1
	bne	.L221
	add	r5, r2, #96
	ldm	r5, {r5, lr}
	ldr	r6, [r2, #40]
	add	r5, r5, #1
	add	r2, lr, r5, lsl #5
	strh	r2, [r3, #36]	@ movhi
	strh	r6, [r3, #32]	@ movhi
	strh	r0, [r3, #34]	@ movhi
	b	.L221
.L229:
	.align	2
.L228:
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
	ldr	r4, .L232
	bl	drawSteven
	bl	drawEnemies
	bl	drawStars
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
	ldr	r3, .L232+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L232+8
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L232+12
	mov	r0, #3
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L233:
	.align	2
.L232:
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
	beq	.L255
	ldr	lr, [sp, #8]
	cmp	r3, r4
	add	lr, r1, lr
	beq	.L256
.L239:
	cmp	ip, lr
	beq	.L257
.L241:
	cmp	ip, lr
	cmple	r2, r4
	beq	.L246
.L234:
	pop	{r4, lr}
	bx	lr
.L256:
	cmp	ip, r1
	bge	.L243
	cmp	ip, lr
	bne	.L241
.L245:
	cmp	r2, r4
	bge	.L241
	ldr	r3, [r0, #64]
	sub	r4, r4, r3
	str	r4, [r0, #52]
	b	.L234
.L255:
	cmp	r2, r4
	bgt	.L236
	cmp	r3, r4
	bgt	.L258
	ldr	lr, [sp, #8]
	add	lr, ip, lr
	bne	.L239
.L243:
	cmp	ip, lr
	bge	.L239
	ldr	r3, [r0, #60]
	add	ip, r3, ip
	str	ip, [r0, #48]
	b	.L234
.L257:
	cmp	r4, r3
	ble	.L259
	cmp	r2, r4
	bne	.L234
.L246:
	cmp	ip, r1
	ldrgt	r3, [r0, #60]
	subgt	ip, ip, r3
	strgt	ip, [r0, #48]
	b	.L234
.L236:
	ldr	lr, [sp, #8]
	cmp	r3, r4
	add	lr, ip, lr
	beq	.L243
	cmp	ip, lr
	bne	.L234
	cmp	r3, r4
	blt	.L234
	mov	lr, ip
	b	.L241
.L258:
	ldr	r3, [r0, #64]
	add	r4, r3, r4
	str	r4, [r0, #52]
	b	.L234
.L259:
	mov	lr, ip
	b	.L245
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
	blt	.L261
	add	r2, r1, r2
	cmp	ip, r2
	bge	.L261
	add	ip, ip, r3
	cmp	ip, r1
	cmpgt	r2, ip
	str	ip, [r0, #52]
	ble	.L261
	ldr	r3, [r0, #16]
	cmp	r3, #1
	bne	.L260
	ldr	r0, .L269
	ldr	r3, [r0, #68]
	ldr	r2, [r0, #72]
	add	r0, r0, #48
	ldr	r5, [r4, #68]
	ldm	r0, {r0, r1}
	str	ip, [sp, #4]
	ldr	lr, [r4, #72]
	str	r5, [sp, #12]
	ldr	ip, [r4, #48]
	ldr	r5, .L269+4
	str	lr, [sp, #8]
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L260
	ldr	ip, [r4, #52]
	ldr	r3, [r4, #64]
.L261:
	sub	ip, ip, r3
	rsb	r3, r3, #0
	str	ip, [r4, #52]
	str	r3, [r4, #64]
.L260:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L270:
	.align	2
.L269:
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
	blt	.L272
	add	r2, r1, r2
	cmp	ip, r2
	bge	.L272
	add	ip, ip, r3
	cmp	ip, r1
	cmpgt	r2, ip
	str	ip, [r0, #48]
	ble	.L272
	ldr	r3, [r0, #16]
	cmp	r3, #1
	bne	.L271
	ldr	r0, .L280
	ldr	r3, [r0, #68]
	ldr	r2, [r0, #72]
	add	r0, r0, #48
	ldr	r5, [r4, #68]
	ldm	r0, {r0, r1}
	str	ip, [sp]
	ldr	lr, [r4, #72]
	str	r5, [sp, #12]
	ldr	ip, [r4, #52]
	ldr	r5, .L280+4
	stmib	sp, {ip, lr}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L271
	ldr	ip, [r4, #48]
	ldr	r3, [r4, #60]
.L272:
	sub	ip, ip, r3
	rsb	r3, r3, #0
	str	ip, [r4, #48]
	str	r3, [r4, #60]
.L271:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L281:
	.align	2
.L280:
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
	blt	.L283
	add	r2, r1, r2
	cmp	ip, r2
	bge	.L283
	add	ip, ip, r0
	cmp	ip, r1
	cmpgt	r2, ip
	add	lr, lr, r3
	str	ip, [r4, #48]
	str	lr, [r4, #52]
	ble	.L283
	ldr	r3, [r4, #16]
	cmp	r3, #1
	bne	.L282
	ldr	r0, .L291
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
	ldr	r5, .L291+4
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L282
	add	r0, r4, #60
	ldr	ip, [r4, #48]
	ldm	r0, {r0, r3}
	ldr	lr, [r4, #52]
.L283:
	sub	ip, ip, r0
	sub	lr, lr, r3
	rsb	r0, r0, #0
	rsb	r3, r3, #0
	str	ip, [r4, #48]
	str	r0, [r4, #60]
	str	lr, [r4, #52]
	str	r3, [r4, #64]
.L282:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L292:
	.align	2
.L291:
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
	blt	.L294
	add	r2, r1, r2
	cmp	ip, r2
	bge	.L294
	add	ip, ip, r0
	cmp	ip, r1
	cmpgt	r2, ip
	sub	lr, lr, r3
	str	ip, [r4, #48]
	str	lr, [r4, #52]
	ble	.L294
	ldr	r3, [r4, #16]
	cmp	r3, #1
	bne	.L293
	ldr	r0, .L302
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
	ldr	r5, .L302+4
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L293
	add	r0, r4, #60
	ldr	ip, [r4, #48]
	ldm	r0, {r0, r3}
	ldr	lr, [r4, #52]
.L294:
	sub	ip, ip, r0
	add	lr, r3, lr
	rsb	r0, r0, #0
	rsb	r3, r3, #0
	str	ip, [r4, #48]
	str	r0, [r4, #60]
	str	lr, [r4, #52]
	str	r3, [r4, #64]
.L293:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L303:
	.align	2
.L302:
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
	ldr	r4, .L374
	sub	sp, sp, #16
	ldr	r5, .L374+4
	ldr	r7, .L374+8
	ldr	r8, .L374+12
	add	r6, r4, #32
	b	.L312
.L310:
	cmp	r6, r4
	beq	.L366
.L312:
	ldr	r2, [r4], #4
	ldr	r3, [r2, #16]
	cmp	r3, #0
	bne	.L310
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
	bne	.L312
.L366:
	ldr	r4, .L374+16
	ldr	r2, [r4, #32]
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L367
.L314:
	ldr	r2, [r4, #36]
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L368
.L317:
	ldr	r2, [r4, #40]
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L369
.L320:
	ldr	r2, [r4, #44]
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L370
.L323:
	ldr	r2, [r4, #48]
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L371
.L326:
	ldr	r2, [r4, #52]
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L372
.L329:
	ldr	r2, [r4, #56]
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L373
.L332:
	ldr	r2, [r4, #60]
	ldr	r3, [r2, #16]
	cmp	r3, #0
	bne	.L308
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	r4, .L374+4
	ldr	ip, [r2, #48]
	add	r0, r4, #48
	ldr	r3, [r4, #68]
	ldr	r2, [r4, #72]
	ldm	r0, {r0, r1}
	ldr	r5, .L374+8
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	movne	r2, #70
	ldrne	r3, .L374+20
	strne	r2, [r4, #48]
	strne	r3, [r4, #52]
.L308:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L373:
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	r5, .L374+4
	ldr	ip, [r2, #48]
	add	r0, r5, #48
	ldr	r3, [r5, #68]
	ldr	r2, [r5, #72]
	ldm	r0, {r0, r1}
	ldr	r6, .L374+8
	str	ip, [sp]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	movne	r2, #70
	movne	r3, #73
	strne	r2, [r5, #48]
	strne	r3, [r5, #52]
	b	.L332
.L372:
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	r5, .L374+4
	ldr	ip, [r2, #48]
	add	r0, r5, #48
	ldr	r3, [r5, #68]
	ldr	r2, [r5, #72]
	ldm	r0, {r0, r1}
	ldr	r6, .L374+8
	str	ip, [sp]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	movne	r2, #30
	movne	r3, #620
	strne	r2, [r5, #48]
	strne	r3, [r5, #52]
	b	.L329
.L371:
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	r5, .L374+4
	ldr	ip, [r2, #48]
	add	r0, r5, #48
	ldr	r3, [r5, #68]
	ldr	r2, [r5, #72]
	ldm	r0, {r0, r1}
	ldr	r6, .L374+8
	str	ip, [sp]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	movne	r2, #45
	ldrne	r3, .L374+24
	strne	r2, [r5, #48]
	strne	r3, [r5, #52]
	b	.L326
.L370:
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	r5, .L374+4
	ldr	ip, [r2, #48]
	add	r0, r5, #48
	ldr	r3, [r5, #68]
	ldr	r2, [r5, #72]
	ldm	r0, {r0, r1}
	ldr	r6, .L374+8
	str	ip, [sp]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	movne	r2, #60
	movne	r3, #440
	strne	r2, [r5, #48]
	strne	r3, [r5, #52]
	b	.L323
.L369:
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	r5, .L374+4
	ldr	ip, [r2, #48]
	add	r0, r5, #48
	ldr	r3, [r5, #68]
	ldr	r2, [r5, #72]
	ldm	r0, {r0, r1}
	ldr	r6, .L374+8
	str	ip, [sp]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	movne	r2, #40
	movne	r3, #320
	strne	r2, [r5, #48]
	strne	r3, [r5, #52]
	b	.L320
.L368:
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	r5, .L374+4
	ldr	ip, [r2, #48]
	add	r0, r5, #48
	ldr	r3, [r5, #68]
	ldr	r2, [r5, #72]
	ldm	r0, {r0, r1}
	ldr	r6, .L374+8
	str	ip, [sp]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L317
	mov	r2, #60
	ldr	r3, [r4, #36]
	ldr	r3, [r3, #36]
	sub	r3, r3, #50
	str	r3, [r5, #52]
	str	r2, [r5, #48]
	b	.L317
.L367:
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	r5, .L374+4
	ldr	ip, [r2, #48]
	add	r0, r5, #48
	ldr	r3, [r5, #68]
	ldr	r2, [r5, #72]
	ldm	r0, {r0, r1}
	ldr	r6, .L374+8
	str	ip, [sp]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	movne	r2, #30
	movne	r3, #95
	strne	r2, [r5, #48]
	strne	r3, [r5, #52]
	b	.L314
.L375:
	.align	2
.L374:
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
	ldr	r3, .L393
	ldrh	r3, [r3]
	tst	r3, #1
	ldr	r4, .L393+4
	beq	.L377
	ldr	r3, .L393+8
	ldrh	r3, [r3]
	tst	r3, #1
	bne	.L377
	ldr	r2, [r4, #80]
	cmp	r2, #1
	beq	.L389
	cmp	r2, #2
	beq	.L390
	cmp	r2, #3
	beq	.L391
	add	r1, r4, #48
	cmp	r2, #0
	ldm	r1, {r1, r3}
	bne	.L379
	ldr	lr, .L393+12
	mov	r0, lr
.L383:
	ldr	ip, [r0, #56]
	cmp	ip, #0
	beq	.L392
	add	r2, r2, #1
	cmp	r2, #5
	add	r0, r0, #108
	bne	.L383
	b	.L379
.L377:
	add	r1, r4, #48
	ldm	r1, {r1, r3}
.L379:
	ldr	r2, [r4]
	sub	r3, r3, r2
	str	r1, [r4, #40]
	str	r3, [r4, #44]
	pop	{r4, r5, r6, lr}
	bx	lr
.L389:
	bl	throwLeft
	add	r1, r4, #48
	ldm	r1, {r1, r3}
	b	.L379
.L390:
	bl	throwRight
	add	r1, r4, #48
	ldm	r1, {r1, r3}
	b	.L379
.L391:
	bl	throwUp
	add	r1, r4, #48
	ldm	r1, {r1, r3}
	b	.L379
.L392:
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
	b	.L379
.L394:
	.align	2
.L393:
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
	ldr	r4, .L414
	ldr	r8, .L414+4
	sub	sp, sp, #16
	add	r7, r4, #540
.L402:
	ldr	r3, [r4, #56]
	cmp	r3, #0
	beq	.L398
	ldr	r6, [r5, #16]
	cmp	r6, #0
	beq	.L411
	cmp	r6, #1
	beq	.L412
.L398:
	add	r4, r4, #108
	cmp	r4, r7
	bne	.L402
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L411:
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
	bne	.L413
	ldr	r3, [r4, #56]
	cmp	r3, #0
	beq	.L398
	ldr	r6, [r5, #16]
	cmp	r6, #1
	bne	.L398
.L412:
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
	b	.L398
.L413:
	str	r9, [r5, #16]
	str	r6, [r4, #56]
	str	r9, [r4, #104]
	b	.L398
.L415:
	.align	2
.L414:
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
	ldr	r0, .L420
	sub	sp, sp, #8
	ldr	r1, [r0, #32]
	mov	r2, #35
	bl	hoverDN
	ldr	r0, .L420+4
	mov	r2, #40
	ldr	r1, [r0, #36]
	bl	hoverH
	ldr	r0, .L420+8
	mov	r2, #35
	ldr	r1, [r0, #32]
	bl	hoverV
	ldr	r0, .L420+12
	mov	r2, #50
	ldr	r1, [r0, #36]
	bl	hoverH
	ldr	r0, .L420+16
	mov	r2, #50
	ldr	r1, [r0, #36]
	bl	hoverH
	ldr	r0, .L420+20
	mov	r2, #55
	ldr	r1, [r0, #32]
	bl	hoverDN
	mov	r3, #80
	ldr	r0, .L420+24
	add	r1, r0, #32
	ldm	r1, {r1, r2}
	str	r3, [sp]
	bl	moveRect
	ldr	r0, .L420+28
	mov	r2, #160
	ldr	r1, [r0, #36]
	bl	hoverH
	ldr	r4, .L420+32
	ldr	r6, .L420+36
	add	r5, r4, #32
.L417:
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
	bne	.L417
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L421:
	.align	2
.L420:
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
	ldr	r4, .L426
	ldr	r6, .L426+4
	add	r5, r4, #32
.L423:
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
	bne	.L423
	pop	{r4, r5, r6, lr}
	bx	lr
.L427:
	.align	2
.L426:
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
	ldr	r4, .L430
	bl	updateBG
	bl	animateSteven
	bl	updateSteven
	bl	updateEnemies
	bl	updateStars
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
.L431:
	.align	2
.L430:
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
