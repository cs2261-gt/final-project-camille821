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
	.global	initBonuses
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBonuses, %function
initBonuses:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	mov	ip, #70
	push	{r4, r5, r6, r7, lr}
	mov	lr, #56
	mov	r0, r2
	mov	r7, #1
	mov	r1, #16
	mov	r6, #8
	mov	r5, #9
	ldr	r3, .L6
	ldr	r4, .L6+4
	str	ip, [r3, #48]
	str	r4, [r3, #52]
	ldr	r3, .L6+8
	str	ip, [r3, #48]
	ldr	ip, .L6+12
	str	ip, [r3, #52]
	ldr	r3, .L6+16
	add	ip, ip, #245
	str	lr, [r3, #48]
	str	ip, [r3, #52]
	ldr	r4, .L6+20
.L2:
	ldr	r3, [r4, r2, lsl #2]
	add	ip, r3, #48
	ldm	ip, {ip, lr}
	add	r2, r2, #1
	cmp	r2, #3
	str	r0, [r3]
	str	r7, [r3, #56]
	str	r0, [r3, #104]
	str	r1, [r3, #72]
	str	r1, [r3, #68]
	str	r6, [r3, #96]
	str	r5, [r3, #100]
	str	lr, [r3, #44]
	str	ip, [r3, #40]
	bne	.L2
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L7:
	.align	2
.L6:
	.word	b1
	.word	490
	.word	b2
	.word	725
	.word	b3
	.word	.LANCHOR0
	.size	initBonuses, .-initBonuses
	.align	2
	.global	updateBonuses
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBonuses, %function
updateBonuses:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r4, #0
	ldr	r8, .L25
	ldr	r7, .L25+4
	ldr	r6, .L25+8
	ldr	r9, .L25+12
	ldr	r10, .L25+16
	sub	sp, sp, #16
.L14:
	ldr	r5, [r8]
	cmp	r5, #2
	beq	.L22
.L9:
	cmp	r5, #1
	beq	.L23
.L12:
	add	r4, r4, #1
	cmp	r4, #3
	bne	.L14
	mov	r2, #0
.L15:
	ldr	r3, [r7, r2, lsl #2]
	ldr	r1, [r3, #52]
	ldr	ip, [r3]
	add	r2, r2, #1
	ldr	r0, [r3, #48]
	sub	r1, r1, ip
	cmp	r2, #3
	str	r1, [r3, #44]
	str	r0, [r3, #40]
	bne	.L15
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L23:
	ldr	r2, [r7, r4, lsl #2]
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	ip, [r2, #48]
	add	r0, r6, #48
	ldm	r0, {r0, r1}
	ldr	r3, [r6, #68]
	ldr	r2, [r6, #72]
	str	ip, [sp]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L12
	mov	r0, #0
	ldr	r2, [r6, #48]
	ldr	r3, [r8]
	ldr	r1, [r7, r4, lsl #2]
	sub	r2, r2, #16
	add	r3, r3, #1
	str	r5, [r10, #164]
	str	r0, [r10, #212]
	str	r2, [r6, #48]
	str	r0, [r1, #56]
	str	r5, [r1, #104]
	str	r3, [r8]
	b	.L12
.L22:
	ldr	r2, [r7, r4, lsl #2]
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	ip, [r2, #48]
	add	r0, r6, #48
	ldm	r0, {r0, r1}
	ldr	r3, [r6, #68]
	ldr	r2, [r6, #72]
	str	ip, [sp]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L24
	mov	r2, #1
	mov	r1, #0
	ldr	r5, [r8]
	ldr	r3, [r7, r4, lsl #2]
	add	r5, r5, r2
	str	r1, [r10, #320]
	str	r2, [r10, #272]
	str	r5, [r8]
	str	r1, [r3, #56]
	str	r2, [r3, #104]
	b	.L9
.L24:
	ldr	r5, [r8]
	b	.L9
.L26:
	.align	2
.L25:
	.word	livesLeft
	.word	.LANCHOR0
	.word	steven
	.word	collision
	.word	lives
	.size	updateBonuses, .-updateBonuses
	.align	2
	.global	drawBonuses
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBonuses, %function
drawBonuses:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	ldr	r3, .L39
	ldr	ip, .L39+4
.L34:
	ldr	r1, [ip, r2, lsl #2]
	ldr	r0, [r1, #104]
	cmp	r0, #0
	bne	.L35
	ldr	r0, [r1, #44]
	cmp	r0, #240
	bls	.L37
.L35:
	ldrh	r1, [r3, #240]
	add	r2, r2, #1
	orr	r1, r1, #512
	cmp	r2, #3
	strh	r1, [r3, #240]	@ movhi
	add	r3, r3, #8
	bne	.L34
	bx	lr
.L37:
	push	{r4, lr}
.L29:
	ldr	r4, [r1, #96]
	ldrb	lr, [r1, #40]	@ zero_extendqisi2
	ldr	r1, [r1, #100]
	orr	r0, r0, #16384
	add	r1, r1, r4, lsl #5
	strh	r0, [r3, #242]	@ movhi
	strh	lr, [r3, #240]	@ movhi
	strh	r1, [r3, #244]	@ movhi
	b	.L30
.L31:
	ldr	r1, [ip, r2, lsl #2]
	ldr	r0, [r1, #104]
	cmp	r0, #0
	bne	.L28
	ldr	r0, [r1, #44]
	cmp	r0, #240
	bls	.L29
.L28:
	ldrh	r1, [r3, #240]
	orr	r1, r1, #512
	strh	r1, [r3, #240]	@ movhi
.L30:
	add	r2, r2, #1
	cmp	r2, #3
	add	r3, r3, #8
	bne	.L31
	pop	{r4, lr}
	bx	lr
.L40:
	.align	2
.L39:
	.word	shadowOAM
	.word	.LANCHOR0
	.size	drawBonuses, .-drawBonuses
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
	ldr	ip, .L43
	ldr	lr, .L43+4
	ldr	r0, .L43+8
	ldr	r2, .L43+12
	str	r3, [lr]
	str	r3, [ip]
	str	r3, [r0]
	str	r1, [r2]
	ldr	lr, [sp], #4
	bx	lr
.L44:
	.align	2
.L43:
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
	ldr	r0, .L80
	ldr	r1, [r0]
	ldr	r2, .L80+4
	ldr	r3, .L80+8
	cmp	r1, #256
	push	{r4, r5, r6, lr}
	ldr	ip, [r3, #12]
	ldr	lr, [r2]
	ble	.L46
	cmp	lr, #30
	bgt	.L46
	mov	r5, #67108864
	add	lr, lr, #1
	lsl	r4, lr, #24
	ldr	r6, [r3, #52]
	orr	r4, r4, #1073741824
	orr	r4, r4, #8388608
	sub	r1, r1, #256
	lsr	r4, r4, #16
	cmp	r6, #768
	str	lr, [r2]
	str	r1, [r0]
	strh	r4, [r5, #8]	@ movhi
	ble	.L46
	cmp	ip, #0
	bne	.L47
	mov	lr, #31
	ldr	r0, .L80+12
	str	lr, [r2]
	strh	r0, [r5, #8]	@ movhi
.L48:
	ldr	r2, [r3]
	cmp	r2, #512
	subgt	r2, r2, #512
	strgt	r2, [r3]
	ldr	r3, .L80+16
	add	ip, r3, #32
.L51:
	ldr	r0, [r3], #4
	ldr	r2, [r0]
	cmp	r2, #512
	ble	.L50
	cmp	r1, #0
	bne	.L50
	cmp	lr, #31
	subne	r2, r2, #512
	strne	r2, [r0]
.L50:
	cmp	r3, ip
	bne	.L51
	mov	r3, #0
	ldr	ip, .L80+20
.L53:
	ldr	r0, [ip, r3, lsl #2]
	ldr	r2, [r0]
	cmp	r2, #512
	add	r3, r3, #1
	ble	.L52
	cmp	r1, #0
	subeq	r2, r2, #512
	streq	r2, [r0]
.L52:
	cmp	r3, #3
	bne	.L53
	ldr	r3, .L80+24
	add	ip, r3, #32
.L55:
	ldr	r0, [r3], #4
	ldr	r2, [r0]
	cmp	r2, #512
	ble	.L54
	cmp	r1, #0
	bne	.L54
	cmp	lr, #31
	subne	r2, r2, #512
	strne	r2, [r0]
.L54:
	cmp	ip, r3
	bne	.L55
	ldr	r3, .L80+28
	add	r0, r3, #1072
	ldr	ip, .L80+32
	add	r0, r0, #8
	b	.L59
.L79:
	cmp	r1, #0
	sub	r2, r2, #512
	blt	.L58
.L77:
	str	r2, [r3]
.L58:
	add	r3, r3, #108
	cmp	r3, r0
	beq	.L78
.L59:
	ldr	r2, [r3]
	cmp	r2, #512
	bgt	.L79
	cmn	r2, #512
	bge	.L58
	cmp	r1, ip
	ble	.L58
	add	r2, r2, #512
	b	.L77
.L46:
	cmp	ip, #0
	beq	.L48
.L47:
	cmp	r1, #255
	bgt	.L48
	cmp	lr, #31
	bne	.L48
	mov	ip, #30
	mov	r4, #67108864
	str	ip, [r2]
	ldr	r2, .L80+36
	add	r1, r1, #256
	str	r1, [r0]
	mov	lr, ip
	strh	r2, [r4, #8]	@ movhi
	b	.L48
.L78:
	ldr	r3, .L80+40
	add	r0, r3, #324
.L61:
	ldr	r2, [r3]
	cmp	r2, #512
	ble	.L60
	cmp	r1, #0
	subge	r2, r2, #512
	strge	r2, [r3]
.L60:
	add	r3, r3, #108
	cmp	r0, r3
	bne	.L61
	mov	r3, #67108864
	ldr	r2, .L80+44
	lsl	r1, r1, #16
	ldrh	r2, [r2]
	lsr	r1, r1, #16
	strh	r1, [r3, #16]	@ movhi
	pop	{r4, r5, r6, lr}
	strh	r2, [r3, #18]	@ movhi
	bx	lr
.L81:
	.align	2
.L80:
	.word	hOff
	.word	screenBlock
	.word	steven
	.word	24448
	.word	.LANCHOR0+12
	.word	.LANCHOR0
	.word	.LANCHOR0+44
	.word	bubbles
	.word	511
	.word	24192
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
	push	{r4, r5, r6, r7, r8, lr}
	mov	r6, #1
	mov	r0, #8
	mov	r1, #3
	mov	lr, #0
	ldr	r8, .L87
	ldr	ip, .L87+4
	ldr	r2, [r8, #72]
	ldr	r5, [r8, #68]
	ldr	r4, [r8, #48]
	ldr	r3, .L87+8
	add	r7, r2, r2, lsr #31
	ldr	ip, [ip]
	ldr	r2, [r8, #52]
	add	r4, r4, r7, asr r6
	add	r7, r5, r5, lsr #31
	add	r5, r3, #1072
	sub	ip, r4, ip
	add	r2, r2, r7, asr r6
	add	r5, r5, r0
.L84:
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
	bne	.L84
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L88:
	.align	2
.L87:
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
	beq	.L90
	ldr	r3, [r0, #12]
	cmp	r3, #1
	beq	.L105
	cmp	r3, #2
	beq	.L106
	cmp	r3, #3
	bne	.L99
	ldr	r2, [r0, #60]
	ldr	r3, [r0, #40]
	add	r3, r2, r3
	cmp	r3, #159
	bgt	.L90
	ldr	r1, [r0, #72]
	rsb	r1, r1, #0
	cmp	r3, r1
	bgt	.L107
.L90:
	mov	r2, #0
	mov	r3, #1
	str	r2, [r0, #56]
	str	r3, [r0, #104]
.L94:
	ldr	r3, .L108
	ldr	r2, .L108+4
	add	ip, r3, #1072
	ldr	lr, [r2]
	add	ip, ip, #8
.L98:
	add	r1, r3, #48
	ldm	r1, {r1, r2}
	ldr	r0, [r3]
	sub	r1, r1, lr
	sub	r2, r2, r0
	str	r1, [r3, #40]
	str	r2, [r3, #44]
	add	r3, r3, #108
	cmp	ip, r3
	bne	.L98
	ldr	lr, [sp], #4
	bx	lr
.L105:
	ldr	r2, [r0, #64]
	ldr	r3, [r0, #44]
	add	r3, r2, r3
	cmp	r3, #1024
	bge	.L90
	ldr	r1, [r0, #68]
	rsb	ip, r1, #0
	cmp	r3, ip
	ble	.L90
	ldr	r3, [r0, #52]
	cmp	ip, r3
	bgt	.L92
	ldr	ip, .L108+8
	ldr	ip, [ip]
	cmp	ip, #30
	bgt	.L92
.L93:
	sub	r3, r3, r2
	str	r3, [r0, #52]
	b	.L94
.L106:
	ldr	r1, [r0, #64]
	ldr	r3, [r0, #44]
	ldr	r2, [r0, #68]
	add	r3, r1, r3
	add	ip, r2, #1024
	cmp	r3, ip
	bgt	.L90
	rsb	ip, r2, #0
	cmp	r3, ip
	ble	.L90
	ldr	r3, [r0, #52]
	rsb	r2, r2, #512
	cmp	r3, r2
	bge	.L96
	ldr	r2, .L108+8
	ldr	r2, [r2]
	cmp	r2, #30
	bgt	.L96
.L97:
	add	r1, r1, r3
	str	r1, [r0, #52]
	b	.L94
.L107:
	ldr	r3, [r0, #48]
	sub	r2, r3, r2
	str	r2, [r0, #48]
	b	.L94
.L99:
	cmp	r3, #4
	bne	.L90
	ldr	r1, [r0, #60]
	ldr	r3, [r0, #40]
	ldr	r2, [r0, #72]
	add	r3, r1, r3
	add	ip, r2, #160
	cmp	r3, ip
	bgt	.L90
	rsb	r2, r2, #0
	cmp	r3, r2
	ble	.L90
	ldr	r3, [r0, #48]
	add	r1, r3, r1
	str	r1, [r0, #48]
	b	.L94
.L92:
	cmp	r3, #512
	ble	.L90
	add	r1, r1, #1020
	add	r1, r1, #3
	cmp	r3, r1
	bgt	.L90
	b	.L93
.L96:
	sub	r2, r3, #512
	ldr	ip, .L108+12
	sub	r2, r2, #1
	cmp	r2, ip
	bhi	.L90
	ldr	r2, [r0]
	sub	r2, r3, r2
	cmp	r2, #0
	bgt	.L97
	b	.L90
.L109:
	.align	2
.L108:
	.word	bubbles
	.word	vOff
	.word	screenBlock
	.word	510
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
	ldr	r0, .L120
	mov	r3, #0
	mov	r2, r0
	b	.L113
.L111:
	add	r3, r3, #1
	cmp	r3, #10
	add	r2, r2, #108
	bxeq	lr
.L113:
	ldr	r1, [r2, #56]
	cmp	r1, #0
	bne	.L111
	push	{r4, lr}
	mov	r4, #1
	ldr	lr, .L120+4
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
.L121:
	.align	2
.L120:
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
	ldr	r0, .L132
	mov	r3, #0
	mov	r2, r0
	b	.L125
.L123:
	add	r3, r3, #1
	cmp	r3, #10
	add	r2, r2, #108
	bxeq	lr
.L125:
	ldr	r1, [r2, #56]
	cmp	r1, #0
	bne	.L123
	push	{r4, r5, lr}
	mov	r4, #1
	mov	r5, #2
	ldr	ip, .L132+4
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
.L133:
	.align	2
.L132:
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
	ldr	r0, .L144
	mov	r3, #0
	mov	r2, r0
	b	.L137
.L135:
	add	r3, r3, #1
	cmp	r3, #10
	add	r2, r2, #108
	bxeq	lr
.L137:
	ldr	r1, [r2, #56]
	cmp	r1, #0
	bne	.L135
	push	{r4, r5, lr}
	mov	lr, #1
	mov	r4, #3
	ldr	r5, .L144+4
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
.L145:
	.align	2
.L144:
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
	ldr	r0, .L156
	mov	r3, #0
	mov	r2, r0
	b	.L149
.L147:
	add	r3, r3, #1
	cmp	r3, #10
	add	r2, r2, #108
	bxeq	lr
.L149:
	ldr	r1, [r2, #56]
	cmp	r1, #0
	bne	.L147
	mov	ip, #1
	str	lr, [sp, #-4]!
	mov	lr, #4
	ldr	r2, .L156+4
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
.L157:
	.align	2
.L156:
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
	ldr	r0, .L163
	mov	r3, #0
	mov	r2, r0
	b	.L161
.L159:
	add	r3, r3, #1
	cmp	r3, #10
	add	r2, r2, #108
	bxeq	lr
.L161:
	ldr	r1, [r2, #56]
	cmp	r1, #0
	bne	.L159
	mov	r2, #1
	add	r3, r3, r3, lsl r2
	add	r3, r3, r3, lsl #3
	add	r3, r0, r3, lsl #2
	str	r2, [r3, #56]
	bx	lr
.L164:
	.align	2
.L163:
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
	ldr	r3, .L173
	add	ip, r3, #1072
	push	{r4, r5, lr}
	ldr	r2, .L173+4
	ldr	r5, .L173+8
	add	ip, ip, #8
	b	.L168
.L172:
	ldrh	r1, [r2, #160]
	add	r3, r3, #108
	orr	r1, r1, #512
	cmp	r3, ip
	strh	r1, [r2, #160]	@ movhi
	add	r2, r2, #8
	beq	.L171
.L168:
	ldr	r1, [r3, #104]
	cmp	r1, #0
	bne	.L172
	ldr	r0, [r3, #44]
	ldr	r4, [r3, #96]
	ldr	r1, [r3, #100]
	ldrb	lr, [r3, #40]	@ zero_extendqisi2
	add	r3, r3, #108
	and	r0, r0, r5
	add	r1, r1, r4, lsl #5
	cmp	r3, ip
	strh	r0, [r2, #162]	@ movhi
	strh	r1, [r2, #164]	@ movhi
	strh	lr, [r2, #160]	@ movhi
	add	r2, r2, #8
	bne	.L168
.L171:
	pop	{r4, r5, lr}
	bx	lr
.L174:
	.align	2
.L173:
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
	push	{r4, r5, r6, lr}
	mov	r6, #3
	mov	r2, #180
	mov	r0, #0
	mov	r1, #16
	mov	r5, #1
	mov	r4, #4
	mov	lr, #8
	mov	ip, #9
	ldr	r3, .L179
	str	r6, [r3]
	ldr	r3, .L179+4
.L176:
	str	r2, [r3, #44]
	add	r2, r2, #20
	cmp	r2, #240
	str	r0, [r3]
	str	r1, [r3, #72]
	str	r1, [r3, #68]
	str	r5, [r3, #56]
	str	r4, [r3, #40]
	str	lr, [r3, #96]
	str	ip, [r3, #100]
	str	r0, [r3, #104]
	add	r3, r3, #108
	bne	.L176
	pop	{r4, r5, r6, lr}
	bx	lr
.L180:
	.align	2
.L179:
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
	ldr	r3, .L187
	push	{r4, lr}
	ldr	r4, [r3]
	cmp	r4, #2
	beq	.L186
	cmp	r4, #1
	bne	.L184
	ldr	r3, .L187+4
	str	r4, [r3, #212]
.L181:
	pop	{r4, lr}
	bx	lr
.L184:
	cmp	r4, #0
	bne	.L181
	mov	r1, #1
	ldr	r2, .L187+4
	ldr	r3, .L187+8
	str	r1, [r2, #104]
	mov	lr, pc
	bx	r3
	ldr	r3, .L187+12
	str	r4, [r3]
	pop	{r4, lr}
	bx	lr
.L186:
	mov	r2, #1
	ldr	r3, .L187+4
	pop	{r4, lr}
	str	r2, [r3, #320]
	bx	lr
.L188:
	.align	2
.L187:
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
	ldr	r3, .L195
	push	{r4, r5, lr}
	ldr	r2, .L195+4
	ldr	r5, .L195+8
	add	ip, r3, #324
.L192:
	ldr	r1, [r3, #104]
	cmp	r1, #0
	beq	.L190
	ldrh	r1, [r2, #8]
	orr	r1, r1, #512
	strh	r1, [r2, #8]	@ movhi
.L191:
	add	r3, r3, #108
	cmp	r3, ip
	add	r2, r2, #8
	bne	.L192
	pop	{r4, r5, lr}
	bx	lr
.L190:
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
	b	.L191
.L196:
	.align	2
.L195:
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
	ldr	r0, .L199
	ldr	r0, [r0]
	ldr	r3, .L199+4
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
.L200:
	.align	2
.L199:
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
	ldr	r3, .L268
	ldr	r2, [r3, #80]
	cmp	r2, #4
	movne	r1, #4
	ldr	ip, [r3, #76]
	push	{r4, r5, lr}
	strne	r2, [r3, #84]
	strne	r1, [r3, #80]
	ands	r1, ip, #1
	bne	.L204
	ldr	r2, [r3, #88]
	ldr	r0, [r3, #92]
	add	r2, r2, #1
	cmp	r2, r0
	str	r2, [r3, #88]
	strge	r1, [r3, #88]
.L204:
	ldr	r2, .L268+4
	ldrh	r2, [r2, #48]
	tst	r2, #64
	bne	.L207
	ldr	lr, [r3, #48]
	cmp	lr, #0
	ble	.L207
	mov	r5, #3
	sub	r2, lr, #1
	ldr	r4, [r3, #52]
	lsl	r2, r2, #10
	add	r1, r2, r4
	ldr	r0, .L268+8
	lsl	r1, r1, #1
	ldrh	r1, [r0, r1]
	cmp	r1, #0
	str	r5, [r3, #80]
	bne	.L265
.L207:
	ldr	r2, .L268+4
	ldrh	r2, [r2, #48]
	ands	r2, r2, #128
	bne	.L210
	ldr	r0, [r3, #48]
	ldr	r1, [r3, #72]
	add	r1, r0, r1
	cmp	r1, #159
	str	r2, [r3, #80]
	ble	.L266
.L210:
	ldr	r2, .L268+4
	ldrh	r1, [r2, #48]
	tst	r1, #32
	bne	.L212
	mov	r1, #1
	ldr	r2, [r3, #52]
	cmp	r2, #0
	str	r1, [r3, #12]
	str	r1, [r3, #80]
	ble	.L213
	ldr	r0, [r3, #48]
	sub	r1, r2, #1
	add	lr, r1, r0, lsl #10
	ldr	r4, .L268+8
	lsl	lr, lr, #1
	ldrh	lr, [r4, lr]
	cmp	lr, #0
	beq	.L213
	ldr	lr, [r3, #72]
	add	r0, r0, lr
	sub	r0, r0, #1
	add	r1, r1, r0, lsl #10
	lsl	r1, r1, #1
	ldrh	r1, [r4, r1]
	cmp	r1, #0
	ldrne	r1, [r3, #64]
	subne	r2, r2, r1
	strne	r2, [r3, #52]
.L213:
	ldr	r2, [r3]
	ldr	r1, .L268+12
	sub	r2, r2, #1
	cmp	r2, r1
	bhi	.L214
	ldr	lr, .L268+16
	ldr	r0, [lr]
	ldr	r1, .L268+20
	sub	r0, r0, #1
	str	r2, [r3]
	str	r0, [lr]
	add	lr, r1, #32
.L215:
	ldr	r0, [r1], #4
	ldr	r2, [r0]
	cmp	r1, lr
	sub	r2, r2, #1
	str	r2, [r0]
	bne	.L215
	ldr	lr, .L268+24
	ldr	r1, [lr]
	ldr	r2, [r1]
	sub	r2, r2, #1
	str	r2, [r1]
	ldr	r1, [lr, #4]
	ldr	r2, [r1]
	sub	r2, r2, #1
	str	r2, [r1]
	ldr	r1, [lr, #8]
	ldr	r2, [r1]
	sub	r2, r2, #1
	str	r2, [r1]
	add	r1, lr, #44
	add	lr, lr, #76
.L216:
	ldr	r0, [r1], #4
	ldr	r2, [r0]
	cmp	r1, lr
	sub	r2, r2, #1
	str	r2, [r0]
	bne	.L216
	ldr	r2, .L268+28
	add	r0, r2, #1072
	add	r0, r0, #8
.L217:
	ldr	r1, [r2]
	sub	r1, r1, #1
	str	r1, [r2], #108
	cmp	r2, r0
	bne	.L217
	ldr	r2, .L268+32
	ldr	lr, [r2]
	ldr	r0, [r2, #108]
	ldr	r1, [r2, #216]
	sub	lr, lr, #1
	sub	r0, r0, #1
	sub	r1, r1, #1
	str	lr, [r2]
	str	r0, [r2, #108]
	str	r1, [r2, #216]
.L214:
	ldr	r2, .L268+4
	ldrh	r2, [r2, #48]
	tst	r2, #16
	beq	.L226
.L222:
	add	ip, ip, #1
	str	ip, [r3, #76]
	pop	{r4, r5, lr}
	bx	lr
.L212:
	ldrh	r2, [r2, #48]
	tst	r2, #16
	bne	.L218
.L226:
	mov	r0, #0
	mov	r1, #2
	ldr	r4, [r3, #52]
	ldr	r2, [r3, #68]
	ldr	lr, .L268+12
	add	r2, r4, r2
	cmp	r2, lr
	str	r0, [r3, #12]
	str	r1, [r3, #80]
	bgt	.L219
	ldr	r1, [r3, #48]
	ldr	lr, .L268+8
	add	r0, r2, r1, lsl #10
	lsl	r0, r0, #1
	ldrh	r0, [lr, r0]
	cmp	r0, #0
	beq	.L219
	ldr	r0, [r3, #72]
	add	r1, r1, r0
	sub	r1, r1, #1
	add	r2, r2, r1, lsl #10
	lsl	r2, r2, #1
	ldrh	r2, [lr, r2]
	cmp	r2, #0
	ldrne	r2, [r3, #64]
	addne	r4, r2, r4
	strne	r4, [r3, #52]
.L219:
	ldr	r2, .L268+36
	ldr	r2, [r2]
	cmp	r2, #31
	beq	.L267
	cmp	r2, #30
	bgt	.L222
	ldr	r0, .L268+16
	ldr	r2, [r0]
	cmp	r2, #784
	bge	.L222
	ldr	r1, [r3, #44]
	cmp	r1, #80
	ble	.L222
	b	.L221
.L266:
	ldr	r4, [r3, #52]
	lsl	r1, r1, #10
	add	r2, r1, r4
	ldr	lr, .L268+8
	lsl	r2, r2, #1
	ldrh	r2, [lr, r2]
	cmp	r2, #0
	beq	.L210
	ldr	r2, [r3, #68]
	add	r1, r1, r2
	add	r1, r1, r4
	add	r1, lr, r1, lsl #1
	ldrh	r2, [r1, #-2]
	cmp	r2, #0
	ldrne	r2, [r3, #60]
	addne	r0, r2, r0
	strne	r0, [r3, #48]
	b	.L210
.L218:
	ldr	r2, [r3, #80]
	cmp	r2, #4
	bne	.L222
	mov	r1, #0
	ldr	r2, [r3, #84]
	str	r1, [r3, #88]
	str	r2, [r3, #80]
	pop	{r4, r5, lr}
	bx	lr
.L267:
	ldr	r0, .L268+16
	ldr	r2, [r0]
	cmp	r2, #16
	bgt	.L222
.L221:
	ldr	lr, [r3]
	add	r2, r2, #1
	ldr	r1, .L268+20
	add	lr, lr, #1
	str	r2, [r0]
	str	lr, [r3]
	add	lr, r1, #32
.L223:
	ldr	r0, [r1], #4
	ldr	r2, [r0]
	cmp	r1, lr
	add	r2, r2, #1
	str	r2, [r0]
	bne	.L223
	ldr	r1, .L268+40
	add	lr, r1, #32
.L224:
	ldr	r0, [r1], #4
	ldr	r2, [r0]
	cmp	lr, r1
	add	r2, r2, #1
	str	r2, [r0]
	bne	.L224
	ldr	r1, .L268+24
	ldr	r0, [r1]
	ldr	r2, [r0]
	add	r2, r2, #1
	str	r2, [r0]
	ldr	lr, [r1, #4]
	ldr	r2, [lr]
	add	r2, r2, #1
	ldr	r0, [r1, #8]
	str	r2, [lr]
	ldr	r1, [r0]
	ldr	r2, .L268+28
	add	r1, r1, #1
	str	r1, [r0]
	add	r0, r2, #1072
	add	r0, r0, #8
.L225:
	ldr	r1, [r2]
	add	r1, r1, #1
	str	r1, [r2], #108
	cmp	r0, r2
	bne	.L225
	ldr	r2, .L268+32
	ldr	lr, [r2]
	ldr	r0, [r2, #108]
	ldr	r1, [r2, #216]
	add	lr, lr, #1
	add	r0, r0, #1
	add	r1, r1, #1
	str	lr, [r2]
	str	r0, [r2, #108]
	str	r1, [r2, #216]
	b	.L222
.L265:
	ldr	r1, [r3, #68]
	add	r2, r2, r1
	add	r2, r2, r4
	add	r2, r0, r2, lsl #1
	ldrh	r2, [r2, #-2]
	cmp	r2, #0
	ldrne	r2, [r3, #60]
	subne	r2, lr, r2
	strne	r2, [r3, #48]
	b	.L207
.L269:
	.align	2
.L268:
	.word	steven
	.word	67109120
	.word	colmapBitmap
	.word	1022
	.word	hOff
	.word	.LANCHOR0+12
	.word	.LANCHOR0
	.word	bubbles
	.word	lives
	.word	screenBlock
	.word	.LANCHOR0+44
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
	ldr	r2, .L273
	ldr	r1, .L273+4
	ldrb	r0, [r2, #40]	@ zero_extendqisi2
	ldr	r3, [r2, #44]
	strh	r0, [r1]	@ movhi
	ldr	r0, .L273+8
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
.L274:
	.align	2
.L273:
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
	mov	r5, #0
	mov	r6, #1
	mov	fp, #67
	mov	r10, #177
	mov	r8, #268
	mov	r9, #62
	ldr	r4, .L279
	str	fp, [r4, #48]
	str	fp, [r4, #32]
	str	r10, [r4, #52]
	str	r10, [r4, #36]
	str	r5, [r4, #104]
	str	r6, [r4, #56]
	ldr	r4, .L279+4
	str	r8, [r4, #52]
	str	r8, [r4, #36]
	str	r9, [r4, #48]
	str	r9, [r4, #32]
	str	r6, [r4, #56]
	str	r5, [r4, #104]
	ldr	r4, .L279+8
	mov	r7, #45
	str	r5, [r4, #104]
	mov	r3, r5
	mov	r2, r5
	ldr	r5, .L279+12
	str	r5, [r4, #52]
	str	r5, [r4, #36]
	mov	r5, #17
	str	r7, [r4, #48]
	str	r7, [r4, #32]
	str	r6, [r4, #56]
	ldr	r4, .L279+16
	str	r5, [r4, #48]
	mov	r5, #15
	str	r5, [r4, #32]
	mov	r5, #440
	str	r5, [r4, #52]
	str	r5, [r4, #36]
	mov	r5, #105
	ldr	r4, .L279+20
	str	r5, [r4, #48]
	str	r5, [r4, #32]
	ldr	r5, .L279+24
	str	r5, [r4, #52]
	str	r5, [r4, #36]
	mov	r5, #40
	ldr	r4, .L279+28
	str	r5, [r4, #48]
	str	r5, [r4, #32]
	ldr	r5, .L279+32
	str	r5, [r4, #52]
	str	r5, [r4, #36]
	mov	r4, #28
	ldr	r5, .L279+36
	mov	lr, r6
	ldr	r6, .L279+40
	str	r4, [r5, #48]
	str	r6, [r5, #52]
	str	r4, [r5, #32]
	ldr	r4, .L279+44
	str	r6, [r5, #36]
	ldr	r5, [r4]
	rsb	r6, r5, #66
	str	r6, [r4, #24]
	mov	r6, #66
	str	r6, [r4, #48]
	str	r6, [r4, #32]
	mov	r6, #800
	mov	r0, #16
	mov	ip, #20
	mov	r1, #2
	rsb	r5, r5, #800
	str	r5, [r4, #28]
	ldr	r5, .L279+48
	str	r6, [r4, #52]
	str	r6, [r4, #36]
	ldr	r8, [r5]
	ldr	r6, .L279+52
.L276:
	ldr	r4, [r6], #4
	ldr	r5, [r4, #48]
	str	r3, [r4, #100]
	ldr	r7, [r4, #52]
	add	r3, r3, #2
	sub	r5, r5, r8
	cmp	r3, #16
	str	lr, [r4, #56]
	str	r2, [r4, #104]
	str	r2, [r4]
	str	r0, [r4, #68]
	str	r0, [r4, #72]
	str	ip, [r4, #96]
	str	r1, [r4, #60]
	str	r1, [r4, #64]
	str	r2, [r4, #16]
	str	r5, [r4, #40]
	str	r7, [r4, #44]
	bne	.L276
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L280:
	.align	2
.L279:
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
	.word	.LANCHOR0+44
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
	ldr	r3, .L295
	ldr	r1, .L295+4
	add	ip, r3, #64
.L289:
	ldr	r2, [r1], #4
	ldr	r0, [r2, #104]
	cmp	r0, #0
	bne	.L290
	ldr	r0, [r2, #44]
	cmp	r0, #240
	bls	.L292
.L290:
	ldrh	r2, [r3, #96]
	orr	r2, r2, #512
	strh	r2, [r3, #96]	@ movhi
	add	r3, r3, #8
	cmp	r3, ip
	bne	.L289
	bx	lr
.L292:
	push	{r4, lr}
.L283:
	ldr	lr, [r2, #16]
	cmp	lr, #0
	bne	.L285
	ldr	lr, [r2, #40]
	cmp	lr, #160
	bhi	.L284
	ldr	r4, [r2, #96]
	ldr	r2, [r2, #100]
	orr	r0, r0, #16384
	add	r2, r2, r4, lsl #5
	strh	r0, [r3, #98]	@ movhi
	strh	lr, [r3, #96]	@ movhi
	strh	r2, [r3, #100]	@ movhi
	add	r3, r3, #8
	cmp	r3, ip
	beq	.L294
.L286:
	ldr	r2, [r1], #4
	ldr	r0, [r2, #104]
	cmp	r0, #0
	bne	.L282
	ldr	r0, [r2, #44]
	cmp	r0, #240
	bls	.L283
.L282:
	ldrh	r2, [r3, #96]
	orr	r2, r2, #512
	strh	r2, [r3, #96]	@ movhi
.L284:
	add	r3, r3, #8
	cmp	r3, ip
	bne	.L286
.L294:
	pop	{r4, lr}
	bx	lr
.L285:
	cmp	lr, #1
	bne	.L284
	ldr	lr, [r2, #96]
	ldrb	r4, [r2, #40]	@ zero_extendqisi2
	ldr	r2, [r2, #100]
	add	lr, lr, #2
	orr	r0, r0, #16384
	add	r2, r2, lr, lsl #5
	strh	r0, [r3, #98]	@ movhi
	strh	r4, [r3, #96]	@ movhi
	strh	r2, [r3, #100]	@ movhi
	b	.L284
.L296:
	.align	2
.L295:
	.word	shadowOAM
	.word	.LANCHOR0+44
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
	mov	r8, #2
	ldr	lr, .L301
	mov	r0, r8
	str	r8, [lr, #8]
	mov	r8, #65
	str	r8, [lr, #48]
	mov	r8, #420
	mov	ip, #10
	str	r8, [lr, #52]
	mov	r4, #4
	mov	r7, #70
	mov	r8, #125
	mov	r6, #3
	mov	r5, #20
	str	ip, [lr, #4]
	ldr	lr, .L301+4
	str	r7, [lr, #48]
	str	r8, [lr, #52]
	str	r4, [lr, #8]
	str	ip, [lr, #4]
	ldr	lr, .L301+8
	str	r7, [lr, #48]
	add	r7, r7, #480
	str	r7, [lr, #52]
	str	r6, [lr, #8]
	str	ip, [lr, #4]
	ldr	lr, .L301+12
	mov	r10, #9
	str	r5, [lr, #48]
	str	r5, [lr, #32]
	mov	r5, #1000
	str	r6, [lr, #8]
	mov	r6, #60
	mov	r1, #8
	str	r5, [lr, #52]
	str	r10, [lr, #4]
	ldr	lr, .L301+16
	str	r5, [lr, #52]
	ldr	r5, .L301+20
	str	r6, [r5, #48]
	ldr	r6, .L301+24
	str	r4, [r5, #8]
	str	r6, [r5, #52]
	str	r1, [r5, #4]
	ldr	r5, .L301+28
	str	r4, [r5, #8]
	mov	r4, #95
	str	r4, [r5, #48]
	mov	r4, #860
	str	r10, [r5, #4]
	str	r4, [r5, #52]
	mov	r5, #38
	mov	r9, #5
	mov	fp, #115
	mov	r2, #1
	mov	r3, #0
	ldr	r4, .L301+32
	str	r5, [r4, #48]
	ldr	r5, .L301+36
	str	r10, [r4, #4]
	str	r9, [r4, #8]
	str	fp, [lr, #48]
	str	fp, [lr, #32]
	str	r5, [r4, #52]
	ldr	r5, .L301+40
	ldr	r4, .L301+44
	str	ip, [lr, #4]
	str	r9, [lr, #8]
	ldr	r7, [r5]
	add	r6, r4, #32
.L298:
	ldr	ip, [r4], #4
	ldr	lr, [ip, #48]
	ldr	r5, [ip, #52]
	sub	lr, lr, r7
	cmp	r4, r6
	str	r2, [ip, #56]
	str	r3, [ip, #104]
	str	r3, [ip]
	str	r1, [ip, #68]
	str	r1, [ip, #72]
	str	r1, [ip, #96]
	str	r0, [ip, #100]
	str	r2, [ip, #60]
	str	r2, [ip, #64]
	str	r3, [ip, #16]
	str	lr, [ip, #40]
	str	r5, [ip, #44]
	bne	.L298
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L302:
	.align	2
.L301:
	.word	jungleBase
	.word	zoo
	.word	garden
	.word	earth
	.word	desert
	.word	island
	.word	623
	.word	kindergarten
	.word	arena
	.word	935
	.word	vOff
	.word	.LANCHOR0+12
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
	ldr	ip, .L307
	ldr	r0, .L307+4
	ldr	r1, .L307+8
	ldr	r3, .L307+12
	mov	r6, #3
	str	r4, [ip]
	str	r4, [r0]
	str	r4, [r1]
	str	r2, [r3]
	mov	r5, #1
	bl	initBonuses
	bl	initSteven
	bl	initEnemies
	bl	initStars
	mov	r1, r4
	mov	r2, #180
	mov	r0, #16
	mov	r4, #4
	mov	lr, #8
	mov	ip, #9
	ldr	r3, .L307+16
	str	r6, [r3]
	ldr	r3, .L307+20
.L304:
	str	r2, [r3, #44]
	add	r2, r2, #20
	cmp	r2, #240
	str	r1, [r3]
	str	r0, [r3, #72]
	str	r0, [r3, #68]
	str	r5, [r3, #56]
	str	r4, [r3, #40]
	str	lr, [r3, #96]
	str	ip, [r3, #100]
	str	r1, [r3, #104]
	add	r3, r3, #108
	bne	.L304
	pop	{r4, r5, r6, lr}
	b	initBubbles
.L308:
	.align	2
.L307:
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
	ldr	r3, .L319
	push	{r4, r5, r6, lr}
	ldr	r1, .L319+4
	ldr	r4, .L319+8
	add	ip, r3, #64
	b	.L315
.L310:
	ldrh	r2, [r3, #32]
	orr	r2, r2, #512
	strh	r2, [r3, #32]	@ movhi
.L312:
	add	r3, r3, #8
	cmp	r3, ip
	beq	.L318
.L315:
	ldr	r2, [r1], #4
	ldr	r0, [r2, #104]
	cmp	r0, #0
	bne	.L310
	ldr	r0, [r2, #44]
	cmp	r0, #240
	bhi	.L310
	ldrh	lr, [r4, #48]
	tst	lr, #2
	bne	.L313
	ldmib	r2, {r6, lr}
	ldrb	r5, [r2, #40]	@ zero_extendqisi2
	add	r2, lr, r6, lsl #5
	strh	r2, [r3, #36]	@ movhi
	strh	r5, [r3, #32]	@ movhi
	strh	r0, [r3, #34]	@ movhi
	add	r3, r3, #8
	cmp	r3, ip
	bne	.L315
.L318:
	pop	{r4, r5, r6, lr}
	bx	lr
.L313:
	ldr	lr, [r2, #16]
	cmp	lr, #0
	bne	.L314
	add	r6, r2, #96
	ldm	r6, {r6, lr}
	ldr	r5, [r2, #40]
	add	r2, lr, r6, lsl #5
	strh	r2, [r3, #36]	@ movhi
	strh	r5, [r3, #32]	@ movhi
	strh	r0, [r3, #34]	@ movhi
	b	.L312
.L314:
	cmp	lr, #1
	bne	.L312
	add	r5, r2, #96
	ldm	r5, {r5, lr}
	ldr	r6, [r2, #40]
	add	r5, r5, #1
	add	r2, lr, r5, lsl #5
	strh	r2, [r3, #36]	@ movhi
	strh	r6, [r3, #32]	@ movhi
	strh	r0, [r3, #34]	@ movhi
	b	.L312
.L320:
	.align	2
.L319:
	.word	shadowOAM
	.word	.LANCHOR0+12
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
	push	{r4, r5, r6, lr}
	bl	drawBonuses
	bl	drawSteven
	bl	drawEnemies
	bl	drawStars
	bl	drawLives
	ldr	r4, .L325
	add	r5, r4, #1072
	add	r5, r5, #8
.L322:
	mov	r0, r4
	add	r4, r4, #108
	bl	drawBubble
	cmp	r4, r5
	bne	.L322
	ldr	r3, .L325+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L325+8
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L325+12
	mov	r0, #3
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L326:
	.align	2
.L325:
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
	beq	.L348
	ldr	lr, [sp, #8]
	cmp	r3, r4
	add	lr, r1, lr
	beq	.L349
.L332:
	cmp	ip, lr
	beq	.L350
.L334:
	cmp	ip, lr
	cmple	r2, r4
	beq	.L339
.L327:
	pop	{r4, lr}
	bx	lr
.L349:
	cmp	ip, r1
	bge	.L336
	cmp	ip, lr
	bne	.L334
.L338:
	cmp	r2, r4
	bge	.L334
	ldr	r3, [r0, #64]
	sub	r4, r4, r3
	str	r4, [r0, #52]
	b	.L327
.L348:
	cmp	r2, r4
	bgt	.L329
	cmp	r3, r4
	bgt	.L351
	ldr	lr, [sp, #8]
	add	lr, ip, lr
	bne	.L332
.L336:
	cmp	ip, lr
	bge	.L332
	ldr	r3, [r0, #60]
	add	ip, r3, ip
	str	ip, [r0, #48]
	b	.L327
.L350:
	cmp	r4, r3
	ble	.L352
	cmp	r2, r4
	bne	.L327
.L339:
	cmp	ip, r1
	ldrgt	r3, [r0, #60]
	subgt	ip, ip, r3
	strgt	ip, [r0, #48]
	b	.L327
.L329:
	ldr	lr, [sp, #8]
	cmp	r3, r4
	add	lr, ip, lr
	beq	.L336
	cmp	ip, lr
	bne	.L327
	cmp	r3, r4
	blt	.L327
	mov	lr, ip
	b	.L334
.L351:
	ldr	r3, [r0, #64]
	add	r4, r3, r4
	str	r4, [r0, #52]
	b	.L327
.L352:
	mov	lr, ip
	b	.L338
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
	blt	.L354
	add	r2, r1, r2
	cmp	ip, r2
	bge	.L354
	add	ip, ip, r3
	cmp	ip, r1
	cmpgt	r2, ip
	str	ip, [r0, #52]
	ble	.L354
	ldr	r3, [r0, #16]
	cmp	r3, #1
	bne	.L353
	ldr	r0, .L362
	ldr	r3, [r0, #68]
	ldr	r2, [r0, #72]
	add	r0, r0, #48
	ldr	r5, [r4, #68]
	ldm	r0, {r0, r1}
	str	ip, [sp, #4]
	ldr	lr, [r4, #72]
	str	r5, [sp, #12]
	ldr	ip, [r4, #48]
	ldr	r5, .L362+4
	str	lr, [sp, #8]
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L353
	ldr	ip, [r4, #52]
	ldr	r3, [r4, #64]
.L354:
	sub	ip, ip, r3
	rsb	r3, r3, #0
	str	ip, [r4, #52]
	str	r3, [r4, #64]
.L353:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L363:
	.align	2
.L362:
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
	blt	.L365
	add	r2, r1, r2
	cmp	ip, r2
	bge	.L365
	add	ip, ip, r3
	cmp	ip, r1
	cmpgt	r2, ip
	str	ip, [r0, #48]
	ble	.L365
	ldr	r3, [r0, #16]
	cmp	r3, #1
	bne	.L364
	ldr	r0, .L373
	ldr	r3, [r0, #68]
	ldr	r2, [r0, #72]
	add	r0, r0, #48
	ldr	r5, [r4, #68]
	ldm	r0, {r0, r1}
	str	ip, [sp]
	ldr	lr, [r4, #72]
	str	r5, [sp, #12]
	ldr	ip, [r4, #52]
	ldr	r5, .L373+4
	stmib	sp, {ip, lr}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L364
	ldr	ip, [r4, #48]
	ldr	r3, [r4, #60]
.L365:
	sub	ip, ip, r3
	rsb	r3, r3, #0
	str	ip, [r4, #48]
	str	r3, [r4, #60]
.L364:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L374:
	.align	2
.L373:
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
	blt	.L376
	add	r2, r1, r2
	cmp	ip, r2
	bge	.L376
	add	ip, ip, r0
	cmp	ip, r1
	cmpgt	r2, ip
	add	lr, lr, r3
	str	ip, [r4, #48]
	str	lr, [r4, #52]
	ble	.L376
	ldr	r3, [r4, #16]
	cmp	r3, #1
	bne	.L375
	ldr	r0, .L384
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
	ldr	r5, .L384+4
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L375
	add	r0, r4, #60
	ldr	ip, [r4, #48]
	ldm	r0, {r0, r3}
	ldr	lr, [r4, #52]
.L376:
	sub	ip, ip, r0
	sub	lr, lr, r3
	rsb	r0, r0, #0
	rsb	r3, r3, #0
	str	ip, [r4, #48]
	str	r0, [r4, #60]
	str	lr, [r4, #52]
	str	r3, [r4, #64]
.L375:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L385:
	.align	2
.L384:
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
	blt	.L387
	add	r2, r1, r2
	cmp	ip, r2
	bge	.L387
	add	ip, ip, r0
	cmp	ip, r1
	cmpgt	r2, ip
	sub	lr, lr, r3
	str	ip, [r4, #48]
	str	lr, [r4, #52]
	ble	.L387
	ldr	r3, [r4, #16]
	cmp	r3, #1
	bne	.L386
	ldr	r0, .L395
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
	ldr	r5, .L395+4
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L386
	add	r0, r4, #60
	ldr	ip, [r4, #48]
	ldm	r0, {r0, r3}
	ldr	lr, [r4, #52]
.L387:
	sub	ip, ip, r0
	add	lr, r3, lr
	rsb	r0, r0, #0
	rsb	r3, r3, #0
	str	ip, [r4, #48]
	str	r0, [r4, #60]
	str	lr, [r4, #52]
	str	r3, [r4, #64]
.L386:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L396:
	.align	2
.L395:
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
	ldr	r4, .L467
	sub	sp, sp, #16
	ldr	r5, .L467+4
	ldr	r7, .L467+8
	ldr	r8, .L467+12
	add	r6, r4, #32
	b	.L405
.L403:
	cmp	r6, r4
	beq	.L459
.L405:
	ldr	r2, [r4], #4
	ldr	r3, [r2, #16]
	cmp	r3, #0
	bne	.L403
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
	bne	.L405
.L459:
	ldr	r4, .L467+16
	ldr	r2, [r4, #44]
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L460
.L407:
	ldr	r2, [r4, #48]
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L461
.L410:
	ldr	r2, [r4, #52]
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L462
.L413:
	ldr	r2, [r4, #56]
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L463
.L416:
	ldr	r2, [r4, #60]
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L464
.L419:
	ldr	r2, [r4, #64]
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L465
.L422:
	ldr	r2, [r4, #68]
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L466
.L425:
	ldr	r2, [r4, #72]
	ldr	r3, [r2, #16]
	cmp	r3, #0
	bne	.L401
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	r4, .L467+4
	ldr	ip, [r2, #48]
	add	r0, r4, #48
	ldr	r3, [r4, #68]
	ldr	r2, [r4, #72]
	ldm	r0, {r0, r1}
	ldr	r5, .L467+8
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	movne	r2, #70
	ldrne	r3, .L467+20
	strne	r2, [r4, #48]
	strne	r3, [r4, #52]
.L401:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L466:
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	r5, .L467+4
	ldr	ip, [r2, #48]
	add	r0, r5, #48
	ldr	r3, [r5, #68]
	ldr	r2, [r5, #72]
	ldm	r0, {r0, r1}
	ldr	r6, .L467+8
	str	ip, [sp]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L425
	ldr	r2, [r4, #4]
	add	r2, r2, #48
	ldm	r2, {r2, r3}
	sub	r3, r3, #45
	str	r3, [r5, #52]
	str	r2, [r5, #48]
	b	.L425
.L465:
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	r5, .L467+4
	ldr	ip, [r2, #48]
	add	r0, r5, #48
	ldr	r3, [r5, #68]
	ldr	r2, [r5, #72]
	ldm	r0, {r0, r1}
	ldr	r6, .L467+8
	str	ip, [sp]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	movne	r2, #30
	movne	r3, #620
	strne	r2, [r5, #48]
	strne	r3, [r5, #52]
	b	.L422
.L464:
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	r5, .L467+4
	ldr	ip, [r2, #48]
	add	r0, r5, #48
	ldr	r3, [r5, #68]
	ldr	r2, [r5, #72]
	ldm	r0, {r0, r1}
	ldr	r6, .L467+8
	str	ip, [sp]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	movne	r2, #45
	ldrne	r3, .L467+24
	strne	r2, [r5, #48]
	strne	r3, [r5, #52]
	b	.L419
.L463:
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	r5, .L467+4
	ldr	ip, [r2, #48]
	add	r0, r5, #48
	ldr	r3, [r5, #68]
	ldr	r2, [r5, #72]
	ldm	r0, {r0, r1}
	ldr	r6, .L467+8
	str	ip, [sp]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	movne	r2, #60
	movne	r3, #440
	strne	r2, [r5, #48]
	strne	r3, [r5, #52]
	b	.L416
.L462:
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	r5, .L467+4
	ldr	ip, [r2, #48]
	add	r0, r5, #48
	ldr	r3, [r5, #68]
	ldr	r2, [r5, #72]
	ldm	r0, {r0, r1}
	ldr	r6, .L467+8
	str	ip, [sp]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	movne	r2, #40
	movne	r3, #320
	strne	r2, [r5, #48]
	strne	r3, [r5, #52]
	b	.L413
.L461:
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	r5, .L467+4
	ldr	ip, [r2, #48]
	add	r0, r5, #48
	ldr	r3, [r5, #68]
	ldr	r2, [r5, #72]
	ldm	r0, {r0, r1}
	ldr	r6, .L467+8
	str	ip, [sp]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L410
	mov	r2, #60
	ldr	r3, [r4, #48]
	ldr	r3, [r3, #36]
	sub	r3, r3, #50
	str	r3, [r5, #52]
	str	r2, [r5, #48]
	b	.L410
.L460:
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	r5, .L467+4
	ldr	ip, [r2, #48]
	add	r0, r5, #48
	ldr	r3, [r5, #68]
	ldr	r2, [r5, #72]
	ldm	r0, {r0, r1}
	ldr	r6, .L467+8
	str	ip, [sp]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	movne	r2, #30
	movne	r3, #95
	strne	r2, [r5, #48]
	strne	r3, [r5, #52]
	b	.L407
.L468:
	.align	2
.L467:
	.word	.LANCHOR0+44
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
	ldr	r3, .L485
	ldrh	r3, [r3]
	tst	r3, #1
	ldr	r4, .L485+4
	beq	.L470
	ldr	r3, .L485+8
	ldrh	r3, [r3]
	tst	r3, #1
	bne	.L470
	ldr	r2, [r4, #80]
	cmp	r2, #1
	beq	.L482
	cmp	r2, #2
	beq	.L483
	cmp	r2, #3
	beq	.L484
	add	r1, r4, #48
	cmp	r2, #0
	ldm	r1, {r1, r3}
	bne	.L472
	ldr	lr, .L485+12
	mov	r0, lr
	b	.L476
.L475:
	add	r2, r2, #1
	cmp	r2, #10
	add	r0, r0, #108
	beq	.L472
.L476:
	ldr	ip, [r0, #56]
	cmp	ip, #0
	bne	.L475
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
	b	.L472
.L470:
	add	r1, r4, #48
	ldm	r1, {r1, r3}
.L472:
	ldr	r2, [r4]
	sub	r3, r3, r2
	str	r1, [r4, #40]
	str	r3, [r4, #44]
	pop	{r4, r5, r6, lr}
	bx	lr
.L482:
	bl	throwLeft
	add	r1, r4, #48
	ldm	r1, {r1, r3}
	b	.L472
.L483:
	bl	throwRight
	add	r1, r4, #48
	ldm	r1, {r1, r3}
	b	.L472
.L484:
	bl	throwUp
	add	r1, r4, #48
	ldm	r1, {r1, r3}
	b	.L472
.L486:
	.align	2
.L485:
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
	ldr	r4, .L505
	add	r7, r4, #1072
	sub	sp, sp, #16
	mov	r5, r0
	mov	r10, #0
	mov	r9, #1
	ldr	r8, .L505+4
	add	r7, r7, #8
	b	.L494
.L491:
	cmp	r6, #1
	beq	.L503
.L490:
	add	r4, r4, #108
	cmp	r4, r7
	beq	.L504
.L494:
	ldr	r3, [r4, #8]
	cmp	r3, #0
	beq	.L490
	ldr	r6, [r5, #16]
	cmp	r6, #0
	bne	.L491
	add	ip, r4, #20
	ldm	ip, {ip, lr}
	add	r2, r5, #68
	ldm	r2, {r2, r3}
	ldr	r1, [r5, #48]
	ldr	r0, [r5, #52]
	str	lr, [sp, #12]
	str	ip, [sp, #8]
	ldr	lr, [r4]
	ldr	ip, [r4, #4]
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L492
	str	r9, [r5, #16]
	add	r4, r4, #108
	str	r6, [r4, #-100]
	str	r9, [r4, #-52]
	cmp	r4, r7
	bne	.L494
.L504:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L503:
	add	ip, r4, #20
	ldm	ip, {ip, lr}
	add	r2, r5, #68
	ldm	r2, {r2, r3}
	ldr	r1, [r5, #48]
	ldr	r0, [r5, #52]
	str	lr, [sp, #12]
	str	ip, [sp, #8]
	ldr	lr, [r4]
	ldr	ip, [r4, #4]
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	strne	r10, [r5, #16]
	strne	r10, [r4, #8]
	strne	r6, [r4, #56]
	b	.L490
.L492:
	ldr	r3, [r4, #8]
	cmp	r3, #0
	beq	.L490
	ldr	r6, [r5, #16]
	b	.L491
.L506:
	.align	2
.L505:
	.word	bubbles+48
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
	ldr	r0, .L511
	sub	sp, sp, #8
	ldr	r1, [r0, #32]
	mov	r2, #35
	bl	hoverDN
	ldr	r0, .L511+4
	mov	r2, #40
	ldr	r1, [r0, #36]
	bl	hoverH
	ldr	r0, .L511+8
	mov	r2, #35
	ldr	r1, [r0, #32]
	bl	hoverV
	ldr	r0, .L511+12
	mov	r2, #50
	ldr	r1, [r0, #36]
	bl	hoverH
	ldr	r0, .L511+16
	mov	r2, #50
	ldr	r1, [r0, #36]
	bl	hoverH
	ldr	r0, .L511+20
	mov	r2, #55
	ldr	r1, [r0, #32]
	bl	hoverDN
	mov	r3, #80
	ldr	r0, .L511+24
	add	r1, r0, #32
	ldm	r1, {r1, r2}
	str	r3, [sp]
	bl	moveRect
	ldr	r0, .L511+28
	mov	r2, #160
	ldr	r1, [r0, #36]
	bl	hoverH
	ldr	r4, .L511+32
	ldr	r6, .L511+36
	add	r5, r4, #32
.L508:
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
	bne	.L508
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L512:
	.align	2
.L511:
	.word	yDiamond
	.word	bDiamond
	.word	wDiamond
	.word	spinel
	.word	jasper
	.word	aquamarine
	.word	topaz
	.word	eyeball
	.word	.LANCHOR0+44
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
	ldr	r0, .L517
	push	{r4, r5, r6, lr}
	ldr	r1, [r0, #32]
	mov	r2, #10
	bl	hoverV
	ldr	r0, .L517+4
	mov	r2, #10
	ldr	r1, [r0, #32]
	bl	hoverV
	ldr	r4, .L517+8
	ldr	r6, .L517+12
	add	r5, r4, #32
.L514:
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
	bne	.L514
	pop	{r4, r5, r6, lr}
	bx	lr
.L518:
	.align	2
.L517:
	.word	earth
	.word	desert
	.word	.LANCHOR0+12
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
	push	{r4, r5, r6, lr}
	bl	updateBG
	bl	updateBonuses
	bl	animateSteven
	bl	updateSteven
	bl	updateEnemies
	bl	updateStars
	bl	updateLives
	ldr	r4, .L523
	add	r5, r4, #1072
	add	r5, r5, #8
.L520:
	mov	r0, r4
	add	r4, r4, #108
	bl	updateBubble
	cmp	r4, r5
	bne	.L520
	pop	{r4, r5, r6, lr}
	bx	lr
.L524:
	.align	2
.L523:
	.word	bubbles
	.size	updateGame, .-updateGame
	.comm	shadowOAM,1024,4
	.comm	bubbles,1080,4
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
	.global	bonuses
	.comm	b3,108,4
	.comm	b2,108,4
	.comm	b1,108,4
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
	.type	bonuses, %object
	.size	bonuses, 12
bonuses:
	.word	b1
	.word	b2
	.word	b3
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
