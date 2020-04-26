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
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, #0
	ldr	r7, .L28
	ldr	r6, .L28+4
	ldr	r8, .L28+8
	ldr	r10, .L28+12
	ldr	r9, .L28+16
	sub	sp, sp, #20
.L14:
	ldr	r5, [r7]
	cmp	r5, #2
	beq	.L25
.L9:
	cmp	r5, #1
	beq	.L26
.L11:
	add	r4, r4, #1
	cmp	r4, #3
	bne	.L14
	mov	r2, #0
.L15:
	ldr	r3, [r6, r2, lsl #2]
	ldr	r1, [r3, #52]
	ldr	ip, [r3]
	add	r2, r2, #1
	ldr	r0, [r3, #48]
	sub	r1, r1, ip
	cmp	r2, #3
	str	r1, [r3, #44]
	str	r0, [r3, #40]
	bne	.L15
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L25:
	ldr	r2, [r6, r4, lsl #2]
	ldr	r3, [r2, #56]
	cmp	r3, #0
	lsl	r5, r4, #2
	beq	.L11
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	ip, [r2, #48]
	add	r0, r8, #48
	ldm	r0, {r0, r1}
	ldr	r3, [r8, #68]
	ldr	r2, [r8, #72]
	str	ip, [sp]
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	beq	.L27
	mov	r1, #1
	mov	r0, #0
	ldr	r3, [r7]
	ldr	r2, [r6, r5]
	add	r3, r3, r1
	str	r0, [r9, #320]
	str	r1, [r9, #272]
	str	r3, [r7]
	str	r0, [r2, #56]
	str	r1, [r2, #104]
	b	.L11
.L26:
	ldr	r2, [r6, r4, lsl #2]
	ldr	r3, [r2, #56]
	cmp	r3, #0
	lsl	fp, r4, #2
	beq	.L11
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	ip, [r2, #48]
	add	r0, r8, #48
	ldm	r0, {r0, r1}
	ldr	r3, [r8, #68]
	ldr	r2, [r8, #72]
	str	ip, [sp]
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	beq	.L11
	mov	r0, #0
	ldr	r2, [r8, #48]
	ldr	r3, [r7]
	ldr	r1, [r6, fp]
	sub	r2, r2, #16
	add	r3, r3, #1
	str	r5, [r9, #164]
	str	r0, [r9, #212]
	str	r2, [r8, #48]
	str	r5, [r1, #104]
	str	r0, [r1, #56]
	str	r3, [r7]
	b	.L11
.L27:
	ldr	r5, [r7]
	b	.L9
.L29:
	.align	2
.L28:
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
	ldr	r3, .L42
	ldr	ip, .L42+4
.L37:
	ldr	r1, [ip, r2, lsl #2]
	ldr	r0, [r1, #104]
	cmp	r0, #0
	bne	.L38
	ldr	r0, [r1, #44]
	cmp	r0, #240
	bls	.L40
.L38:
	ldrh	r1, [r3, #240]
	add	r2, r2, #1
	orr	r1, r1, #512
	cmp	r2, #3
	strh	r1, [r3, #240]	@ movhi
	add	r3, r3, #8
	bne	.L37
	bx	lr
.L40:
	push	{r4, lr}
.L32:
	ldr	r4, [r1, #96]
	ldrb	lr, [r1, #40]	@ zero_extendqisi2
	ldr	r1, [r1, #100]
	orr	r0, r0, #16384
	add	r1, r1, r4, lsl #5
	strh	r0, [r3, #242]	@ movhi
	strh	lr, [r3, #240]	@ movhi
	strh	r1, [r3, #244]	@ movhi
	b	.L33
.L34:
	ldr	r1, [ip, r2, lsl #2]
	ldr	r0, [r1, #104]
	cmp	r0, #0
	bne	.L31
	ldr	r0, [r1, #44]
	cmp	r0, #240
	bls	.L32
.L31:
	ldrh	r1, [r3, #240]
	orr	r1, r1, #512
	strh	r1, [r3, #240]	@ movhi
.L33:
	add	r2, r2, #1
	cmp	r2, #3
	add	r3, r3, #8
	bne	.L34
	pop	{r4, lr}
	bx	lr
.L43:
	.align	2
.L42:
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
	ldr	ip, .L46
	ldr	lr, .L46+4
	ldr	r0, .L46+8
	ldr	r2, .L46+12
	str	r3, [lr]
	str	r3, [ip]
	str	r3, [r0]
	str	r1, [r2]
	ldr	lr, [sp], #4
	bx	lr
.L47:
	.align	2
.L46:
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
	ldr	r3, .L105
	push	{r4, r5, r6, lr}
	ldr	r4, [r3]
	ldr	ip, .L105+4
	ldr	r2, .L105+8
	cmp	r4, #28
	ldr	r1, [ip]
	ldr	r0, [r2, #12]
	beq	.L94
	cmp	r4, #29
	beq	.L95
	cmp	r4, #30
	bne	.L50
	cmp	r1, #256
	ble	.L50
	cmp	r0, #0
	bne	.L88
	mov	r4, #31
	mov	lr, #67108864
	str	r0, [ip]
	ldr	ip, .L105+12
	str	r4, [r3]
	mov	r1, r0
	strh	ip, [lr, #8]	@ movhi
	b	.L57
.L95:
	cmp	r1, #256
	ble	.L50
	cmp	r0, #0
	bne	.L88
	mov	lr, #30
	mov	r1, #67108864
	str	r0, [ip]
	str	lr, [r3]
	ldr	ip, .L105+16
	ldr	r4, [r3]
	strh	ip, [r1, #8]	@ movhi
	mov	r1, r0
	b	.L88
.L94:
	cmp	r1, #256
	bgt	.L96
.L50:
	cmp	r0, #0
	bne	.L51
.L88:
	lsl	r0, r1, #16
	lsr	r0, r0, #16
.L57:
	ldr	r3, [r2]
	cmp	r3, #512
	bgt	.L89
	cmp	r3, #0
	bge	.L62
.L89:
	sub	r3, r3, #512
	str	r3, [r2]
.L62:
	ldr	r2, .L105+20
	ldr	r5, .L105+24
	add	lr, r2, #32
	b	.L65
.L98:
	cmp	r1, #0
	bne	.L77
	cmp	r4, #29
	sub	r3, r3, #512
	bgt	.L77
.L90:
	str	r3, [ip]
.L77:
	cmp	lr, r2
	beq	.L97
.L65:
	ldr	ip, [r2], #4
	ldr	r3, [ip]
	cmp	r3, #512
	bgt	.L98
	cmn	r3, #512
	bge	.L77
	cmp	r1, r5
	ble	.L77
	add	r3, r3, #512
	b	.L90
.L97:
	ldr	r2, .L105+28
	ldr	r5, .L105+24
	add	lr, r2, #32
	b	.L68
.L100:
	cmp	r1, #0
	bne	.L78
	cmp	r4, #29
	sub	r3, r3, #512
	bgt	.L78
.L91:
	str	r3, [ip]
.L78:
	cmp	lr, r2
	beq	.L99
.L68:
	ldr	ip, [r2], #4
	ldr	r3, [ip]
	cmp	r3, #512
	bgt	.L100
	cmn	r3, #512
	bge	.L78
	cmp	r1, r5
	ble	.L78
	add	r3, r3, #512
	b	.L91
.L99:
	ldr	r3, .L105+32
	add	ip, r3, #1072
	ldr	lr, .L105+24
	add	ip, ip, #8
	b	.L72
.L102:
	cmp	r1, #0
	sub	r2, r2, #512
	blt	.L71
.L92:
	str	r2, [r3]
.L71:
	add	r3, r3, #108
	cmp	ip, r3
	beq	.L101
.L72:
	ldr	r2, [r3]
	cmp	r2, #512
	bgt	.L102
	cmn	r2, #512
	bge	.L71
	cmp	r1, lr
	ble	.L71
	add	r2, r2, #512
	b	.L92
.L101:
	ldr	r3, .L105+36
	ldr	lr, .L105+24
	add	ip, r3, #324
.L76:
	ldr	r2, [r3]
	cmp	r2, #512
	ble	.L73
	cmp	r1, #0
	sub	r2, r2, #512
	blt	.L75
.L93:
	str	r2, [r3]
.L75:
	add	r3, r3, #108
	cmp	r3, ip
	bne	.L76
	mov	r3, #67108864
	ldr	r2, .L105+40
	ldrh	r2, [r2]
	strh	r0, [r3, #16]	@ movhi
	pop	{r4, r5, r6, lr}
	strh	r2, [r3, #18]	@ movhi
	bx	lr
.L73:
	cmn	r2, #512
	bge	.L75
	cmp	r1, lr
	ble	.L75
	add	r2, r2, #512
	b	.L93
.L51:
	cmp	r1, #0
	bge	.L88
	cmp	r4, #31
	beq	.L103
	cmp	r4, #30
	beq	.L104
	cmp	r4, #29
	beq	.L60
	ldr	r1, [ip]
	b	.L88
.L96:
	cmp	r0, #0
	bne	.L51
	mov	lr, #29
	mov	r1, #67108864
	str	r0, [ip]
	str	lr, [r3]
	ldr	ip, .L105+44
	ldr	r4, [r3]
	strh	ip, [r1, #8]	@ movhi
	mov	r1, r0
	b	.L88
.L103:
	mov	r4, #30
	mov	r1, #256
	mov	r0, #67108864
	str	r4, [r3]
	ldr	r3, .L105+16
	str	r1, [ip]
	strh	r3, [r0, #8]	@ movhi
	b	.L88
.L60:
	mov	lr, #28
	mov	r5, #256
	mov	r6, #67108864
	str	lr, [r3]
	ldr	r3, .L105+48
	str	r5, [ip]
	mov	r0, r5
	mov	r1, r5
	mov	r4, lr
	strh	r3, [r6, #8]	@ movhi
	b	.L57
.L104:
	mov	r1, #256
	mov	r4, #29
	mov	lr, #67108864
	str	r1, [ip]
	ldr	ip, .L105+44
	str	r4, [r3]
	mov	r0, r1
	strh	ip, [lr, #8]	@ movhi
	b	.L57
.L106:
	.align	2
.L105:
	.word	screenBlock
	.word	hOff
	.word	steven
	.word	24448
	.word	24192
	.word	.LANCHOR0+12
	.word	511
	.word	.LANCHOR0+44
	.word	bubbles
	.word	lives
	.word	vOff
	.word	23936
	.word	23680
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
	ldr	r8, .L112
	ldr	ip, .L112+4
	ldr	r2, [r8, #72]
	ldr	r5, [r8, #68]
	ldr	r4, [r8, #48]
	ldr	r3, .L112+8
	add	r7, r2, r2, lsr #31
	ldr	ip, [ip]
	ldr	r2, [r8, #52]
	add	r4, r4, r7, asr r6
	add	r7, r5, r5, lsr #31
	add	r5, r3, #1072
	sub	ip, r4, ip
	add	r2, r2, r7, asr r6
	add	r5, r5, r0
.L109:
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
	bne	.L109
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L113:
	.align	2
.L112:
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
	add	r2, r0, #48
	cmp	r3, #0
	str	lr, [sp, #-4]!
	ldm	r2, {r2, r3}
	beq	.L115
	ldr	r1, [r0, #12]
	cmp	r1, #1
	beq	.L131
	cmp	r1, #2
	beq	.L132
	cmp	r1, #3
	bne	.L119
	ldr	ip, [r0, #60]
	add	r1, ip, r2
	cmp	r1, #159
	bgt	.L115
	ldr	lr, [r0, #72]
	rsb	lr, lr, #0
	cmp	r1, lr
	subgt	r2, r2, ip
	strgt	r2, [r0, #48]
	ble	.L115
.L117:
	ldr	ip, .L133
	ldr	r1, [r0]
	ldr	ip, [ip]
	sub	r1, r3, r1
	sub	r2, r2, ip
	cmp	r1, #256
	str	r2, [r0, #40]
	str	r1, [r0, #44]
	bls	.L121
	ldr	r2, .L133+4
	ldr	r2, [r2]
	cmp	r2, #29
	bgt	.L121
.L129:
	mov	r2, #1
	mov	r3, #0
	str	r2, [r0, #104]
	str	r3, [r0, #56]
	ldr	lr, [sp], #4
	bx	lr
.L119:
	cmp	r1, #4
	bne	.L115
	ldr	r1, [r0, #60]
	ldr	ip, [r0, #72]
	add	r1, r2, r1
	add	lr, ip, #160
	cmp	r1, lr
	bgt	.L115
	rsb	ip, ip, #0
	cmp	r1, ip
	strgt	r1, [r0, #48]
	movgt	r2, r1
	bgt	.L117
.L115:
	mov	lr, #1
	mov	ip, #0
	ldr	r1, .L133
	ldr	r1, [r1]
	sub	r2, r2, r1
	ldr	r1, [r0]
	sub	r3, r3, r1
	str	r2, [r0, #40]
	str	r3, [r0, #44]
	str	lr, [r0, #104]
	str	ip, [r0, #56]
.L114:
	ldr	lr, [sp], #4
	bx	lr
.L131:
	ldr	ip, [r0, #64]
	add	r1, ip, r3
	cmp	r1, #1024
	bge	.L115
	ldr	lr, [r0, #68]
	rsb	lr, lr, #0
	cmp	r1, lr
	subgt	r3, r3, ip
	strgt	r3, [r0, #52]
	bgt	.L117
	b	.L115
.L132:
	add	r1, r0, #64
	ldm	r1, {r1, ip}
	add	r1, r3, r1
	add	lr, ip, #1024
	cmp	r1, lr
	bgt	.L115
	rsb	ip, ip, #0
	cmp	r1, ip
	strgt	r1, [r0, #52]
	movgt	r3, r1
	bgt	.L117
	b	.L115
.L121:
	sub	r3, r3, #768
	cmp	r3, #256
	bls	.L114
	ldr	r3, .L133+4
	ldr	r3, [r3]
	cmp	r3, #31
	beq	.L129
	ldr	lr, [sp], #4
	bx	lr
.L134:
	.align	2
.L133:
	.word	vOff
	.word	screenBlock
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
	ldr	r0, .L145
	mov	r3, #0
	mov	r2, r0
	b	.L138
.L136:
	add	r3, r3, #1
	cmp	r3, #10
	add	r2, r2, #108
	bxeq	lr
.L138:
	ldr	r1, [r2, #56]
	cmp	r1, #0
	bne	.L136
	push	{r4, lr}
	mov	r4, #1
	ldr	lr, .L145+4
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
.L146:
	.align	2
.L145:
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
	ldr	r0, .L157
	mov	r3, #0
	mov	r2, r0
	b	.L150
.L148:
	add	r3, r3, #1
	cmp	r3, #10
	add	r2, r2, #108
	bxeq	lr
.L150:
	ldr	r1, [r2, #56]
	cmp	r1, #0
	bne	.L148
	push	{r4, r5, lr}
	mov	r4, #1
	mov	r5, #2
	ldr	ip, .L157+4
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
.L158:
	.align	2
.L157:
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
	ldr	r0, .L169
	mov	r3, #0
	mov	r2, r0
	b	.L162
.L160:
	add	r3, r3, #1
	cmp	r3, #10
	add	r2, r2, #108
	bxeq	lr
.L162:
	ldr	r1, [r2, #56]
	cmp	r1, #0
	bne	.L160
	push	{r4, r5, lr}
	mov	lr, #1
	mov	r4, #3
	ldr	r5, .L169+4
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
.L170:
	.align	2
.L169:
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
	ldr	r0, .L181
	mov	r3, #0
	mov	r2, r0
	b	.L174
.L172:
	add	r3, r3, #1
	cmp	r3, #10
	add	r2, r2, #108
	bxeq	lr
.L174:
	ldr	r1, [r2, #56]
	cmp	r1, #0
	bne	.L172
	mov	ip, #1
	str	lr, [sp, #-4]!
	mov	lr, #4
	ldr	r2, .L181+4
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
.L182:
	.align	2
.L181:
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
	ldr	r0, .L188
	mov	r3, #0
	mov	r2, r0
	b	.L186
.L184:
	add	r3, r3, #1
	cmp	r3, #10
	add	r2, r2, #108
	bxeq	lr
.L186:
	ldr	r1, [r2, #56]
	cmp	r1, #0
	bne	.L184
	mov	r2, #1
	add	r3, r3, r3, lsl r2
	add	r3, r3, r3, lsl #3
	add	r3, r0, r3, lsl #2
	str	r1, [r3, #104]
	str	r2, [r3, #56]
	bx	lr
.L189:
	.align	2
.L188:
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
	ldr	r3, .L198
	add	ip, r3, #1072
	push	{r4, r5, lr}
	ldr	r2, .L198+4
	ldr	r5, .L198+8
	add	ip, ip, #8
	b	.L193
.L197:
	ldrh	r1, [r2, #160]
	add	r3, r3, #108
	orr	r1, r1, #512
	cmp	r3, ip
	strh	r1, [r2, #160]	@ movhi
	add	r2, r2, #8
	beq	.L196
.L193:
	ldr	r1, [r3, #104]
	cmp	r1, #0
	bne	.L197
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
	bne	.L193
.L196:
	pop	{r4, r5, lr}
	bx	lr
.L199:
	.align	2
.L198:
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
	ldr	r3, .L204
	str	r6, [r3]
	ldr	r3, .L204+4
.L201:
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
	bne	.L201
	pop	{r4, r5, r6, lr}
	bx	lr
.L205:
	.align	2
.L204:
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
	ldr	r3, .L212
	push	{r4, lr}
	ldr	r4, [r3]
	cmp	r4, #2
	beq	.L211
	cmp	r4, #1
	bne	.L209
	ldr	r3, .L212+4
	str	r4, [r3, #212]
.L206:
	pop	{r4, lr}
	bx	lr
.L209:
	cmp	r4, #0
	bne	.L206
	mov	r1, #1
	ldr	r2, .L212+4
	ldr	r3, .L212+8
	str	r1, [r2, #104]
	mov	lr, pc
	bx	r3
	ldr	r3, .L212+12
	str	r4, [r3]
	pop	{r4, lr}
	bx	lr
.L211:
	mov	r2, #1
	ldr	r3, .L212+4
	pop	{r4, lr}
	str	r2, [r3, #320]
	bx	lr
.L213:
	.align	2
.L212:
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
	ldr	r3, .L220
	push	{r4, r5, lr}
	ldr	r2, .L220+4
	ldr	r5, .L220+8
	add	ip, r3, #324
.L217:
	ldr	r1, [r3, #104]
	cmp	r1, #0
	beq	.L215
	ldrh	r1, [r2, #8]
	orr	r1, r1, #512
	strh	r1, [r2, #8]	@ movhi
.L216:
	add	r3, r3, #108
	cmp	r3, ip
	add	r2, r2, #8
	bne	.L217
	pop	{r4, r5, lr}
	bx	lr
.L215:
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
	b	.L216
.L221:
	.align	2
.L220:
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
	ldr	r0, .L224
	ldr	r0, [r0]
	ldr	r3, .L224+4
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
.L225:
	.align	2
.L224:
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
	ldr	r3, .L297
	ldr	r2, [r3, #80]
	cmp	r2, #4
	movne	r1, #4
	ldr	r0, [r3, #76]
	push	{r4, r5, lr}
	strne	r2, [r3, #84]
	strne	r1, [r3, #80]
	ands	r1, r0, #1
	bne	.L229
	add	r2, r3, #88
	ldm	r2, {r2, ip}
	add	r2, r2, #1
	cmp	r2, ip
	str	r2, [r3, #88]
	strge	r1, [r3, #88]
.L229:
	ldr	r2, .L297+4
	ldrh	r2, [r2, #48]
	tst	r2, #64
	bne	.L232
	ldr	lr, [r3, #48]
	cmp	lr, #0
	ble	.L232
	mov	r5, #3
	sub	r2, lr, #1
	ldr	r4, [r3, #52]
	lsl	r2, r2, #10
	add	r1, r2, r4
	ldr	ip, .L297+8
	lsl	r1, r1, #1
	ldrh	r1, [ip, r1]
	cmp	r1, #0
	str	r5, [r3, #80]
	bne	.L293
.L232:
	ldr	r2, .L297+4
	ldrh	r2, [r2, #48]
	ands	r2, r2, #128
	bne	.L235
	ldr	ip, [r3, #48]
	ldr	r1, [r3, #72]
	add	r1, ip, r1
	cmp	r1, #159
	str	r2, [r3, #80]
	ble	.L294
.L235:
	ldr	r2, .L297+4
	ldrh	r1, [r2, #48]
	tst	r1, #32
	bne	.L237
	mov	r2, #1
	ldr	ip, [r3, #44]
	cmp	ip, #0
	str	r2, [r3, #12]
	str	r2, [r3, #80]
	ble	.L238
	add	r1, r3, #48
	ldm	r1, {r1, r4}
	sub	r2, r4, #1
	add	lr, r2, r1, lsl #10
	ldr	r5, .L297+8
	lsl	lr, lr, #1
	ldrh	lr, [r5, lr]
	cmp	lr, #0
	beq	.L239
	ldr	lr, [r3, #72]
	add	r1, r1, lr
	sub	r1, r1, #1
	add	r2, r2, r1, lsl #10
	lsl	r2, r2, #1
	ldrh	r2, [r5, r2]
	cmp	r2, #0
	ldrne	r2, [r3, #64]
	subne	r4, r4, r2
	strne	r4, [r3, #52]
.L239:
	ldr	r2, [r3]
	ldr	lr, .L297+12
	sub	r2, r2, #1
	cmp	r2, lr
	movhi	r1, #0
	movls	r1, #1
	cmp	ip, #80
	movle	r1, #0
	cmp	r1, #0
	bne	.L295
.L238:
	ldr	r2, .L297+4
	ldrh	r2, [r2, #48]
	tst	r2, #16
	beq	.L251
.L247:
	add	r0, r0, #1
	str	r0, [r3, #76]
	pop	{r4, r5, lr}
	bx	lr
.L237:
	ldrh	r2, [r2, #48]
	tst	r2, #16
	bne	.L243
.L251:
	mov	lr, #0
	mov	r1, #2
	ldr	ip, [r3, #52]
	ldr	r2, [r3, #68]
	ldr	r4, .L297+12
	add	r2, ip, r2
	cmp	r2, r4
	str	lr, [r3, #12]
	str	r1, [r3, #80]
	bgt	.L244
	ldr	r1, [r3, #48]
	ldr	r4, .L297+8
	add	lr, r2, r1, lsl #10
	lsl	lr, lr, #1
	ldrh	lr, [r4, lr]
	cmp	lr, #0
	beq	.L244
	ldr	lr, [r3, #72]
	add	r1, r1, lr
	sub	r1, r1, #1
	add	r2, r2, r1, lsl #10
	lsl	r2, r2, #1
	ldrh	r2, [r4, r2]
	cmp	r2, #0
	ldrne	r2, [r3, #64]
	addne	ip, r2, ip
	strne	ip, [r3, #52]
.L244:
	ldr	r2, .L297+16
	ldr	r2, [r2]
	cmp	r2, #31
	beq	.L296
	cmp	r2, #30
	bgt	.L247
	ldr	ip, .L297+20
	ldr	r2, [ip]
	cmp	r2, #784
	bge	.L247
	ldr	r1, [r3, #44]
	cmp	r1, #80
	ble	.L247
	b	.L246
.L294:
	ldr	r4, [r3, #52]
	lsl	r1, r1, #10
	add	r2, r1, r4
	ldr	lr, .L297+8
	lsl	r2, r2, #1
	ldrh	r2, [lr, r2]
	cmp	r2, #0
	beq	.L235
	ldr	r2, [r3, #68]
	add	r1, r1, r2
	add	r1, r1, r4
	add	r1, lr, r1, lsl #1
	ldrh	r2, [r1, #-2]
	cmp	r2, #0
	ldrne	r2, [r3, #60]
	addne	ip, r2, ip
	strne	ip, [r3, #48]
	b	.L235
.L243:
	ldr	r2, [r3, #80]
	cmp	r2, #4
	bne	.L247
	mov	r1, #0
	ldr	r2, [r3, #84]
	str	r1, [r3, #88]
	str	r2, [r3, #80]
	pop	{r4, r5, lr}
	bx	lr
.L296:
	ldr	ip, .L297+20
	ldr	r2, [ip]
	cmp	r2, #16
	bgt	.L247
.L246:
	ldr	lr, [r3]
	add	r2, r2, #1
	ldr	r1, .L297+24
	add	lr, lr, #1
	str	r2, [ip]
	str	lr, [r3]
	add	lr, r1, #32
.L248:
	ldr	ip, [r1], #4
	ldr	r2, [ip]
	cmp	r1, lr
	add	r2, r2, #1
	str	r2, [ip]
	bne	.L248
	ldr	r1, .L297+28
	add	lr, r1, #32
.L249:
	ldr	ip, [r1], #4
	ldr	r2, [ip]
	cmp	r1, lr
	add	r2, r2, #1
	str	r2, [ip]
	bne	.L249
	ldr	r1, .L297+32
	ldr	ip, [r1]
	ldr	r2, [ip]
	add	r2, r2, #1
	str	r2, [ip]
	ldr	lr, [r1, #4]
	ldr	r2, [lr]
	add	r2, r2, #1
	ldr	ip, [r1, #8]
	str	r2, [lr]
	ldr	r1, [ip]
	ldr	r2, .L297+36
	add	r1, r1, #1
	str	r1, [ip]
	add	ip, r2, #1072
	add	ip, ip, #8
.L250:
	ldr	r1, [r2]
	add	r1, r1, #1
	str	r1, [r2], #108
	cmp	ip, r2
	bne	.L250
	ldr	r2, .L297+40
	ldr	lr, [r2]
	ldr	ip, [r2, #108]
	ldr	r1, [r2, #216]
	add	lr, lr, #1
	add	ip, ip, #1
	add	r1, r1, #1
	str	lr, [r2]
	str	ip, [r2, #108]
	str	r1, [r2, #216]
	b	.L247
.L293:
	ldr	r1, [r3, #68]
	add	r2, r2, r1
	add	r2, r2, r4
	add	r2, ip, r2, lsl #1
	ldrh	r2, [r2, #-2]
	cmp	r2, #0
	ldrne	r2, [r3, #60]
	subne	r2, lr, r2
	strne	r2, [r3, #48]
	b	.L232
.L295:
	ldr	lr, .L297+20
	ldr	ip, [lr]
	ldr	r1, .L297+24
	sub	ip, ip, #1
	str	r2, [r3]
	str	ip, [lr]
	add	lr, r1, #32
.L240:
	ldr	ip, [r1], #4
	ldr	r2, [ip]
	cmp	r1, lr
	sub	r2, r2, #1
	str	r2, [ip]
	bne	.L240
	ldr	lr, .L297+32
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
.L241:
	ldr	ip, [r1], #4
	ldr	r2, [ip]
	cmp	r1, lr
	sub	r2, r2, #1
	str	r2, [ip]
	bne	.L241
	ldr	r2, .L297+36
	add	ip, r2, #1072
	add	ip, ip, #8
.L242:
	ldr	r1, [r2]
	sub	r1, r1, #1
	str	r1, [r2], #108
	cmp	r2, ip
	bne	.L242
	ldr	r2, .L297+40
	ldr	lr, [r2]
	ldr	ip, [r2, #108]
	ldr	r1, [r2, #216]
	sub	lr, lr, #1
	sub	ip, ip, #1
	sub	r1, r1, #1
	str	lr, [r2]
	str	ip, [r2, #108]
	str	r1, [r2, #216]
	ldr	r2, .L297+4
	ldrh	r2, [r2, #48]
	tst	r2, #16
	beq	.L251
	b	.L247
.L298:
	.align	2
.L297:
	.word	steven
	.word	67109120
	.word	colmapBitmap
	.word	1022
	.word	screenBlock
	.word	hOff
	.word	.LANCHOR0+12
	.word	.LANCHOR0+44
	.word	.LANCHOR0
	.word	bubbles
	.word	lives
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
	ldr	r2, .L302
	ldr	r1, .L302+4
	ldrb	r0, [r2, #40]	@ zero_extendqisi2
	ldr	r3, [r2, #44]
	strh	r0, [r1]	@ movhi
	ldr	r0, .L302+8
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
.L303:
	.align	2
.L302:
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
	ldr	r4, .L308
	str	fp, [r4, #48]
	str	fp, [r4, #32]
	str	r10, [r4, #52]
	str	r10, [r4, #36]
	str	r5, [r4, #104]
	str	r6, [r4, #56]
	ldr	r4, .L308+4
	str	r8, [r4, #52]
	str	r8, [r4, #36]
	str	r9, [r4, #48]
	str	r9, [r4, #32]
	str	r6, [r4, #56]
	str	r5, [r4, #104]
	ldr	r4, .L308+8
	mov	r7, #45
	str	r5, [r4, #104]
	mov	r3, r5
	mov	r2, r5
	ldr	r5, .L308+12
	str	r5, [r4, #52]
	str	r5, [r4, #36]
	mov	r5, #17
	str	r7, [r4, #48]
	str	r7, [r4, #32]
	str	r6, [r4, #56]
	ldr	r4, .L308+16
	str	r5, [r4, #48]
	mov	r5, #15
	str	r5, [r4, #32]
	mov	r5, #440
	str	r5, [r4, #52]
	str	r5, [r4, #36]
	mov	r5, #105
	ldr	r4, .L308+20
	str	r5, [r4, #48]
	str	r5, [r4, #32]
	ldr	r5, .L308+24
	str	r5, [r4, #52]
	str	r5, [r4, #36]
	mov	r5, #40
	ldr	r4, .L308+28
	str	r5, [r4, #48]
	str	r5, [r4, #32]
	ldr	r5, .L308+32
	str	r5, [r4, #52]
	str	r5, [r4, #36]
	mov	r4, #28
	ldr	r5, .L308+36
	mov	lr, r6
	ldr	r6, .L308+40
	str	r4, [r5, #48]
	str	r6, [r5, #52]
	str	r4, [r5, #32]
	ldr	r4, .L308+44
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
	ldr	r5, .L308+48
	str	r6, [r4, #52]
	str	r6, [r4, #36]
	ldr	r8, [r5]
	ldr	r6, .L308+52
.L305:
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
	bne	.L305
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L309:
	.align	2
.L308:
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
	ldr	r3, .L324
	ldr	r1, .L324+4
	add	ip, r3, #64
.L318:
	ldr	r2, [r1], #4
	ldr	r0, [r2, #104]
	cmp	r0, #0
	bne	.L319
	ldr	r0, [r2, #44]
	cmp	r0, #240
	bls	.L321
.L319:
	ldrh	r2, [r3, #96]
	orr	r2, r2, #512
	strh	r2, [r3, #96]	@ movhi
	add	r3, r3, #8
	cmp	r3, ip
	bne	.L318
	bx	lr
.L321:
	push	{r4, lr}
.L312:
	ldr	lr, [r2, #16]
	cmp	lr, #0
	bne	.L314
	ldr	lr, [r2, #40]
	cmp	lr, #160
	bhi	.L313
	ldr	r4, [r2, #96]
	ldr	r2, [r2, #100]
	orr	r0, r0, #16384
	add	r2, r2, r4, lsl #5
	strh	r0, [r3, #98]	@ movhi
	strh	lr, [r3, #96]	@ movhi
	strh	r2, [r3, #100]	@ movhi
	add	r3, r3, #8
	cmp	r3, ip
	beq	.L323
.L315:
	ldr	r2, [r1], #4
	ldr	r0, [r2, #104]
	cmp	r0, #0
	bne	.L311
	ldr	r0, [r2, #44]
	cmp	r0, #240
	bls	.L312
.L311:
	ldrh	r2, [r3, #96]
	orr	r2, r2, #512
	strh	r2, [r3, #96]	@ movhi
.L313:
	add	r3, r3, #8
	cmp	r3, ip
	bne	.L315
.L323:
	pop	{r4, lr}
	bx	lr
.L314:
	cmp	lr, #1
	bne	.L313
	ldr	lr, [r2, #96]
	ldrb	r4, [r2, #40]	@ zero_extendqisi2
	ldr	r2, [r2, #100]
	add	lr, lr, #2
	orr	r0, r0, #16384
	add	r2, r2, lr, lsl #5
	strh	r0, [r3, #98]	@ movhi
	strh	r4, [r3, #96]	@ movhi
	strh	r2, [r3, #100]	@ movhi
	b	.L313
.L325:
	.align	2
.L324:
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
	mov	r10, #65
	mov	r5, #10
	mov	fp, #2
	mov	ip, #70
	mov	r4, #115
	mov	r6, #4
	mov	r8, #3
	mov	r9, #540
	ldr	lr, .L330
	str	r10, [lr, #32]
	str	r10, [lr, #48]
	ldr	r10, .L330+4
	str	r5, [lr, #4]
	str	fp, [lr, #8]
	str	r10, [lr, #52]
	str	r10, [lr, #36]
	ldr	lr, .L330+8
	str	r5, [lr, #4]
	str	ip, [lr, #32]
	str	ip, [lr, #48]
	str	r4, [lr, #52]
	str	r6, [lr, #8]
	str	r4, [lr, #36]
	ldr	lr, .L330+12
	str	ip, [lr, #32]
	str	ip, [lr, #48]
	str	r5, [lr, #4]
	str	r8, [lr, #8]
	str	r9, [lr, #52]
	str	r9, [lr, #36]
	ldr	lr, .L330+16
	str	r8, [lr, #8]
	mov	r8, #20
	mov	r7, #9
	str	r8, [lr, #48]
	str	r8, [lr, #32]
	mov	r8, #1000
	mov	r1, #8
	str	r7, [lr, #4]
	str	r8, [lr, #52]
	ldr	lr, .L330+20
	str	ip, [lr, #32]
	str	ip, [lr, #48]
	ldr	ip, .L330+24
	str	r6, [lr, #8]
	str	ip, [lr, #36]
	str	ip, [lr, #52]
	str	r1, [lr, #4]
	mov	lr, #95
	ldr	ip, .L330+28
	str	lr, [ip, #32]
	str	lr, [ip, #48]
	mov	lr, #840
	str	lr, [ip, #36]
	add	lr, lr, r5
	str	lr, [ip, #52]
	ldr	lr, .L330+32
	str	r5, [lr, #4]
	mov	r5, #5
	str	r7, [ip, #4]
	str	r6, [ip, #8]
	ldr	ip, .L330+36
	str	r5, [lr, #8]
	str	r5, [ip, #8]
	mov	r5, #38
	str	r5, [ip, #32]
	str	r5, [ip, #48]
	mov	r5, #940
	mov	r0, fp
	mov	r2, #1
	mov	r3, #0
	str	r4, [lr, #48]
	str	r4, [lr, #32]
	str	r8, [lr, #52]
	ldr	lr, .L330+40
	ldr	r4, .L330+44
	str	r7, [ip, #4]
	str	r5, [ip, #36]
	str	r5, [ip, #52]
	ldr	r7, [lr]
	add	r6, r4, #32
.L327:
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
	bne	.L327
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L331:
	.align	2
.L330:
	.word	jungleBase
	.word	415
	.word	zoo
	.word	garden
	.word	earth
	.word	island
	.word	613
	.word	kindergarten
	.word	desert
	.word	arena
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
	ldr	ip, .L336
	ldr	r0, .L336+4
	ldr	r1, .L336+8
	ldr	r3, .L336+12
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
	ldr	r3, .L336+16
	str	r6, [r3]
	ldr	r3, .L336+20
.L333:
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
	bne	.L333
	pop	{r4, r5, r6, lr}
	b	initBubbles
.L337:
	.align	2
.L336:
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
	ldr	r3, .L348
	push	{r4, r5, r6, lr}
	ldr	r1, .L348+4
	ldr	r4, .L348+8
	add	ip, r3, #64
	b	.L344
.L339:
	ldrh	r2, [r3, #32]
	orr	r2, r2, #512
	strh	r2, [r3, #32]	@ movhi
.L341:
	add	r3, r3, #8
	cmp	r3, ip
	beq	.L347
.L344:
	ldr	r2, [r1], #4
	ldr	r0, [r2, #104]
	cmp	r0, #0
	bne	.L339
	ldr	r0, [r2, #44]
	cmp	r0, #240
	bhi	.L339
	ldrh	lr, [r4, #48]
	tst	lr, #2
	bne	.L342
	ldmib	r2, {r6, lr}
	ldrb	r5, [r2, #40]	@ zero_extendqisi2
	add	r2, lr, r6, lsl #5
	strh	r2, [r3, #36]	@ movhi
	strh	r5, [r3, #32]	@ movhi
	strh	r0, [r3, #34]	@ movhi
	add	r3, r3, #8
	cmp	r3, ip
	bne	.L344
.L347:
	pop	{r4, r5, r6, lr}
	bx	lr
.L342:
	ldr	lr, [r2, #16]
	cmp	lr, #0
	bne	.L343
	add	r6, r2, #96
	ldm	r6, {r6, lr}
	ldr	r5, [r2, #40]
	add	r2, lr, r6, lsl #5
	strh	r2, [r3, #36]	@ movhi
	strh	r5, [r3, #32]	@ movhi
	strh	r0, [r3, #34]	@ movhi
	b	.L341
.L343:
	cmp	lr, #1
	bne	.L341
	add	r5, r2, #96
	ldm	r5, {r5, lr}
	ldr	r6, [r2, #40]
	add	r5, r5, #1
	add	r2, lr, r5, lsl #5
	strh	r2, [r3, #36]	@ movhi
	strh	r6, [r3, #32]	@ movhi
	strh	r0, [r3, #34]	@ movhi
	b	.L341
.L349:
	.align	2
.L348:
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
	ldr	r4, .L354
	add	r5, r4, #1072
	add	r5, r5, #8
.L351:
	mov	r0, r4
	add	r4, r4, #108
	bl	drawBubble
	cmp	r4, r5
	bne	.L351
	ldr	r3, .L354+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L354+8
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L354+12
	mov	r0, #3
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L355:
	.align	2
.L354:
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
	beq	.L377
	ldr	lr, [sp, #8]
	cmp	r3, r4
	add	lr, r1, lr
	beq	.L378
.L361:
	cmp	ip, lr
	beq	.L379
.L363:
	cmp	ip, lr
	cmple	r2, r4
	beq	.L368
.L356:
	pop	{r4, lr}
	bx	lr
.L378:
	cmp	ip, r1
	bge	.L365
	cmp	ip, lr
	bne	.L363
.L367:
	cmp	r2, r4
	bge	.L363
	ldr	r3, [r0, #64]
	sub	r4, r4, r3
	str	r4, [r0, #52]
	b	.L356
.L377:
	cmp	r2, r4
	bgt	.L358
	cmp	r3, r4
	bgt	.L380
	ldr	lr, [sp, #8]
	add	lr, ip, lr
	bne	.L361
.L365:
	cmp	ip, lr
	bge	.L361
	ldr	r3, [r0, #60]
	add	ip, r3, ip
	str	ip, [r0, #48]
	b	.L356
.L379:
	cmp	r4, r3
	ble	.L381
	cmp	r2, r4
	bne	.L356
.L368:
	cmp	ip, r1
	ldrgt	r3, [r0, #60]
	subgt	ip, ip, r3
	strgt	ip, [r0, #48]
	b	.L356
.L358:
	ldr	lr, [sp, #8]
	cmp	r3, r4
	add	lr, ip, lr
	beq	.L365
	cmp	ip, lr
	bne	.L356
	cmp	r3, r4
	blt	.L356
	mov	lr, ip
	b	.L363
.L380:
	ldr	r3, [r0, #64]
	add	r4, r3, r4
	str	r4, [r0, #52]
	b	.L356
.L381:
	mov	lr, ip
	b	.L367
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
	blt	.L383
	add	r2, r1, r2
	cmp	ip, r2
	bge	.L383
	add	ip, ip, r3
	cmp	ip, r1
	cmpgt	r2, ip
	str	ip, [r0, #52]
	ble	.L383
	ldr	r3, [r0, #16]
	cmp	r3, #1
	bne	.L382
	ldr	r0, .L391
	ldr	r3, [r0, #68]
	ldr	r2, [r0, #72]
	add	r0, r0, #48
	ldr	r5, [r4, #68]
	ldm	r0, {r0, r1}
	str	ip, [sp, #4]
	ldr	lr, [r4, #72]
	str	r5, [sp, #12]
	ldr	ip, [r4, #48]
	ldr	r5, .L391+4
	str	lr, [sp, #8]
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L382
	ldr	ip, [r4, #52]
	ldr	r3, [r4, #64]
.L383:
	sub	ip, ip, r3
	rsb	r3, r3, #0
	str	ip, [r4, #52]
	str	r3, [r4, #64]
.L382:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L392:
	.align	2
.L391:
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
	blt	.L394
	add	r2, r1, r2
	cmp	ip, r2
	bge	.L394
	add	ip, ip, r3
	cmp	ip, r1
	cmpgt	r2, ip
	str	ip, [r0, #48]
	ble	.L394
	ldr	r3, [r0, #16]
	cmp	r3, #1
	bne	.L393
	ldr	r0, .L402
	ldr	r3, [r0, #68]
	ldr	r2, [r0, #72]
	add	r0, r0, #48
	ldr	r5, [r4, #68]
	ldm	r0, {r0, r1}
	str	ip, [sp]
	ldr	lr, [r4, #72]
	str	r5, [sp, #12]
	ldr	ip, [r4, #52]
	ldr	r5, .L402+4
	stmib	sp, {ip, lr}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L393
	ldr	ip, [r4, #48]
	ldr	r3, [r4, #60]
.L394:
	sub	ip, ip, r3
	rsb	r3, r3, #0
	str	ip, [r4, #48]
	str	r3, [r4, #60]
.L393:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L403:
	.align	2
.L402:
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
	blt	.L405
	add	r2, r1, r2
	cmp	ip, r2
	bge	.L405
	add	ip, ip, r0
	cmp	ip, r1
	cmpgt	r2, ip
	add	lr, lr, r3
	str	ip, [r4, #48]
	str	lr, [r4, #52]
	ble	.L405
	ldr	r3, [r4, #16]
	cmp	r3, #1
	bne	.L404
	ldr	r0, .L413
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
	ldr	r5, .L413+4
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L404
	add	r0, r4, #60
	ldr	ip, [r4, #48]
	ldm	r0, {r0, r3}
	ldr	lr, [r4, #52]
.L405:
	sub	ip, ip, r0
	sub	lr, lr, r3
	rsb	r0, r0, #0
	rsb	r3, r3, #0
	str	ip, [r4, #48]
	str	r0, [r4, #60]
	str	lr, [r4, #52]
	str	r3, [r4, #64]
.L404:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L414:
	.align	2
.L413:
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
	blt	.L416
	add	r2, r1, r2
	cmp	ip, r2
	bge	.L416
	add	ip, ip, r0
	cmp	ip, r1
	cmpgt	r2, ip
	sub	lr, lr, r3
	str	ip, [r4, #48]
	str	lr, [r4, #52]
	ble	.L416
	ldr	r3, [r4, #16]
	cmp	r3, #1
	bne	.L415
	ldr	r0, .L424
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
	ldr	r5, .L424+4
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L415
	add	r0, r4, #60
	ldr	ip, [r4, #48]
	ldm	r0, {r0, r3}
	ldr	lr, [r4, #52]
.L416:
	sub	ip, ip, r0
	add	lr, r3, lr
	rsb	r0, r0, #0
	rsb	r3, r3, #0
	str	ip, [r4, #48]
	str	r0, [r4, #60]
	str	lr, [r4, #52]
	str	r3, [r4, #64]
.L415:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L425:
	.align	2
.L424:
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
	ldr	r4, .L496
	sub	sp, sp, #16
	ldr	r5, .L496+4
	ldr	r7, .L496+8
	ldr	r8, .L496+12
	add	r6, r4, #32
	b	.L434
.L432:
	cmp	r6, r4
	beq	.L488
.L434:
	ldr	r2, [r4], #4
	ldr	r3, [r2, #16]
	cmp	r3, #0
	bne	.L432
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
	bne	.L434
.L488:
	ldr	r4, .L496+16
	ldr	r2, [r4, #44]
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L489
.L436:
	ldr	r2, [r4, #48]
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L490
.L439:
	ldr	r2, [r4, #52]
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L491
.L442:
	ldr	r2, [r4, #56]
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L492
.L445:
	ldr	r2, [r4, #60]
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L493
.L448:
	ldr	r2, [r4, #64]
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L494
.L451:
	ldr	r2, [r4, #68]
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L495
.L454:
	ldr	r2, [r4, #72]
	ldr	r3, [r2, #16]
	cmp	r3, #0
	bne	.L430
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	r4, .L496+4
	ldr	ip, [r2, #48]
	add	r0, r4, #48
	ldr	r3, [r4, #68]
	ldr	r2, [r4, #72]
	ldm	r0, {r0, r1}
	ldr	r5, .L496+8
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	movne	r2, #95
	ldrne	r3, .L496+20
	strne	r2, [r4, #48]
	strne	r3, [r4, #52]
.L430:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L495:
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	r5, .L496+4
	ldr	ip, [r2, #48]
	add	r0, r5, #48
	ldr	r3, [r5, #68]
	ldr	r2, [r5, #72]
	ldm	r0, {r0, r1}
	ldr	r6, .L496+8
	str	ip, [sp]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L454
	ldr	r2, [r4, #4]
	add	r2, r2, #48
	ldm	r2, {r2, r3}
	sub	r3, r3, #45
	str	r3, [r5, #52]
	str	r2, [r5, #48]
	b	.L454
.L494:
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	r5, .L496+4
	ldr	ip, [r2, #48]
	add	r0, r5, #48
	ldr	r3, [r5, #68]
	ldr	r2, [r5, #72]
	ldm	r0, {r0, r1}
	ldr	r6, .L496+8
	str	ip, [sp]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	movne	r2, #30
	movne	r3, #620
	strne	r2, [r5, #48]
	strne	r3, [r5, #52]
	b	.L451
.L493:
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	r5, .L496+4
	ldr	ip, [r2, #48]
	add	r0, r5, #48
	ldr	r3, [r5, #68]
	ldr	r2, [r5, #72]
	ldm	r0, {r0, r1}
	ldr	r6, .L496+8
	str	ip, [sp]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	movne	r2, #45
	ldrne	r3, .L496+24
	strne	r2, [r5, #48]
	strne	r3, [r5, #52]
	b	.L448
.L492:
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	r5, .L496+4
	ldr	ip, [r2, #48]
	add	r0, r5, #48
	ldr	r3, [r5, #68]
	ldr	r2, [r5, #72]
	ldm	r0, {r0, r1}
	ldr	r6, .L496+8
	str	ip, [sp]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	movne	r2, #60
	movne	r3, #440
	strne	r2, [r5, #48]
	strne	r3, [r5, #52]
	b	.L445
.L491:
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	r5, .L496+4
	ldr	ip, [r2, #48]
	add	r0, r5, #48
	ldr	r3, [r5, #68]
	ldr	r2, [r5, #72]
	ldm	r0, {r0, r1}
	ldr	r6, .L496+8
	str	ip, [sp]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	movne	r2, #40
	movne	r3, #320
	strne	r2, [r5, #48]
	strne	r3, [r5, #52]
	b	.L442
.L490:
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	r5, .L496+4
	ldr	ip, [r2, #48]
	add	r0, r5, #48
	ldr	r3, [r5, #68]
	ldr	r2, [r5, #72]
	ldm	r0, {r0, r1}
	ldr	r6, .L496+8
	str	ip, [sp]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L439
	mov	r2, #60
	ldr	r3, [r4, #48]
	ldr	r3, [r3, #36]
	sub	r3, r3, #50
	str	r3, [r5, #52]
	str	r2, [r5, #48]
	b	.L439
.L489:
	ldr	r3, [r2, #68]
	str	r3, [sp, #12]
	ldr	r3, [r2, #72]
	str	r3, [sp, #8]
	ldr	r3, [r2, #52]
	str	r3, [sp, #4]
	ldr	r5, .L496+4
	ldr	ip, [r2, #48]
	add	r0, r5, #48
	ldr	r3, [r5, #68]
	ldr	r2, [r5, #72]
	ldm	r0, {r0, r1}
	ldr	r6, .L496+8
	str	ip, [sp]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	movne	r2, #30
	movne	r3, #95
	strne	r2, [r5, #48]
	strne	r3, [r5, #52]
	b	.L436
.L497:
	.align	2
.L496:
	.word	.LANCHOR0+44
	.word	steven
	.word	collision
	.word	livesLeft
	.word	.LANCHOR0
	.word	870
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
	ldr	r5, .L526
	ldrh	r3, [r5]
	tst	r3, #1
	bne	.L520
	ldr	r4, .L526+4
.L505:
	bl	enemyCollisions
	ldr	r3, [r4, #52]
	ldr	r1, [r4]
	ldr	r2, [r4, #48]
	sub	r3, r3, r1
	str	r3, [r4, #44]
	str	r2, [r4, #40]
	pop	{r4, r5, r6, lr}
	bx	lr
.L520:
	ldr	r6, .L526+8
	ldrh	r3, [r6]
	tst	r3, #1
	ldr	r4, .L526+4
	bne	.L505
	ldr	r3, [r4, #80]
	cmp	r3, #1
	beq	.L523
.L501:
	ldr	r3, [r4, #80]
	cmp	r3, #2
	beq	.L524
.L502:
	ldr	r3, [r4, #80]
	cmp	r3, #3
	beq	.L525
.L503:
	ldr	r3, [r4, #80]
	cmp	r3, #0
	bne	.L505
	ldr	r0, .L526+12
	mov	r2, r0
	b	.L506
.L504:
	add	r3, r3, #1
	cmp	r3, #10
	add	r2, r2, #108
	beq	.L505
.L506:
	ldr	r1, [r2, #56]
	cmp	r1, #0
	bne	.L504
	mov	ip, #1
	mov	lr, #4
	add	r3, r3, r3, lsl ip
	add	r3, r3, r3, lsl #3
	add	r3, r0, r3, lsl #2
	add	r0, r4, #48
	ldm	r0, {r0, r2}
	add	r0, r0, #11
	add	r2, r2, lr
	str	r1, [r3, #104]
	str	lr, [r3, #12]
	str	r0, [r3, #48]
	str	r2, [r3, #52]
	str	ip, [r3, #56]
	b	.L505
.L525:
	bl	throwUp
	ldrh	r3, [r5]
	tst	r3, #1
	beq	.L505
	ldrh	r3, [r6]
	tst	r3, #1
	beq	.L503
	b	.L505
.L524:
	bl	throwRight
	ldrh	r3, [r5]
	tst	r3, #1
	beq	.L505
	ldrh	r3, [r6]
	tst	r3, #1
	bne	.L505
	b	.L502
.L523:
	bl	throwLeft
	ldrh	r3, [r5]
	tst	r3, #1
	beq	.L505
	ldrh	r3, [r6]
	tst	r3, #1
	beq	.L501
	b	.L505
.L527:
	.align	2
.L526:
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
	ldr	r4, .L546
	add	r7, r4, #1072
	sub	sp, sp, #16
	mov	r5, r0
	mov	r10, #0
	mov	r9, #1
	ldr	r8, .L546+4
	add	r7, r7, #8
	b	.L535
.L532:
	cmp	r6, #1
	beq	.L544
.L531:
	add	r4, r4, #108
	cmp	r4, r7
	beq	.L545
.L535:
	ldr	r3, [r4, #8]
	cmp	r3, #0
	beq	.L531
	ldr	r6, [r5, #16]
	cmp	r6, #0
	bne	.L532
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
	beq	.L533
	str	r9, [r5, #16]
	add	r4, r4, #108
	str	r6, [r4, #-100]
	str	r9, [r4, #-52]
	cmp	r4, r7
	bne	.L535
.L545:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L544:
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
	b	.L531
.L533:
	ldr	r3, [r4, #8]
	cmp	r3, #0
	beq	.L531
	ldr	r6, [r5, #16]
	b	.L532
.L547:
	.align	2
.L546:
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
	ldr	r0, .L552
	sub	sp, sp, #8
	ldr	r1, [r0, #32]
	mov	r2, #35
	bl	hoverDN
	ldr	r0, .L552+4
	mov	r2, #40
	ldr	r1, [r0, #36]
	bl	hoverH
	ldr	r0, .L552+8
	mov	r2, #35
	ldr	r1, [r0, #32]
	bl	hoverV
	ldr	r0, .L552+12
	mov	r2, #50
	ldr	r1, [r0, #36]
	bl	hoverH
	ldr	r0, .L552+16
	mov	r2, #50
	ldr	r1, [r0, #36]
	bl	hoverH
	ldr	r0, .L552+20
	mov	r2, #55
	ldr	r1, [r0, #32]
	bl	hoverDN
	mov	r3, #80
	ldr	r0, .L552+24
	add	r1, r0, #32
	ldm	r1, {r1, r2}
	str	r3, [sp]
	bl	moveRect
	ldr	r0, .L552+28
	mov	r2, #160
	ldr	r1, [r0, #36]
	bl	hoverH
	ldr	r4, .L552+32
	ldr	r6, .L552+36
	add	r5, r4, #32
.L549:
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
	bne	.L549
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L553:
	.align	2
.L552:
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
	ldr	r0, .L558
	push	{r4, r5, r6, lr}
	ldr	r1, [r0, #36]
	mov	r2, #10
	bl	hoverH
	ldr	r0, .L558+4
	mov	r2, #20
	ldr	r1, [r0, #36]
	bl	hoverH
	ldr	r0, .L558+8
	mov	r2, #15
	ldr	r1, [r0, #32]
	bl	hoverV
	ldr	r0, .L558+12
	mov	r2, #20
	ldr	r1, [r0, #36]
	bl	hoverH
	ldr	r0, .L558+16
	mov	r2, #25
	ldr	r1, [r0, #36]
	bl	hoverH
	ldr	r0, .L558+20
	mov	r2, #40
	ldr	r1, [r0, #36]
	bl	hoverH
	ldr	r0, .L558+24
	mov	r2, #10
	ldr	r1, [r0, #32]
	bl	hoverV
	ldr	r0, .L558+28
	mov	r2, #10
	ldr	r1, [r0, #32]
	bl	hoverV
	ldr	r4, .L558+32
	ldr	r6, .L558+36
	add	r5, r4, #32
.L555:
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
	bne	.L555
	pop	{r4, r5, r6, lr}
	bx	lr
.L559:
	.align	2
.L558:
	.word	zoo
	.word	jungleBase
	.word	garden
	.word	island
	.word	kindergarten
	.word	arena
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
	bl	updateStars
	bl	updateEnemies
	bl	updateLives
	ldr	r4, .L564
	add	r5, r4, #1072
	add	r5, r5, #8
.L561:
	mov	r0, r4
	add	r4, r4, #108
	bl	updateBubble
	cmp	r4, r5
	bne	.L561
	pop	{r4, r5, r6, lr}
	bx	lr
.L565:
	.align	2
.L564:
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
