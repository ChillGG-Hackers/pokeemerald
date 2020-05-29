@ Generated by gcc 2.9-arm-000512 for Thumb/elf
	.code	16
.gcc2_compiled.:
.text
	.align	2, 0
	.globl	GameClear
	.type	 GameClear,function
	.thumb_func
GameClear:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	add	sp, sp, #-0x1c
	bl	HealPlayerParty
	ldr	r4, .L22
	add	r0, r4, #0
	bl	FlagGet
	lsl	r0, r0, #0x18
	lsr	r1, r0, #0x18
	cmp	r1, #0x1
	bne	.L3	@cond_branch
	ldr	r0, .L22+0x4
	strb	r1, [r0]
	b	.L4
.L23:
	.align	2, 0
.L22:
	.word	0x864
	.word	gHasHallOfFameRecords
.L3:
	ldr	r1, .L24
	mov	r0, #0x0
	strb	r0, [r1]
	add	r0, r4, #0
	bl	FlagSet
.L4:
	mov	r0, #0x1
	bl	GetGameStat
	cmp	r0, #0
	bne	.L5	@cond_branch
	ldr	r0, .L24+0x4
	ldr	r2, [r0]
	ldrh	r1, [r2, #0xe]
	lsl	r1, r1, #0x10
	ldrb	r0, [r2, #0x10]
	lsl	r0, r0, #0x8
	orr	r1, r1, r0
	ldrb	r0, [r2, #0x11]
	orr	r1, r1, r0
	mov	r0, #0x1
	bl	SetGameStat
.L5:
	bl	SetContinueGameWarpStatus
	ldr	r0, .L24+0x4
	ldr	r0, [r0]
	ldrb	r0, [r0, #0x8]
	cmp	r0, #0
	bne	.L6	@cond_branch
	mov	r0, #0x1
	bl	SetContinueGameWarpToHealLocation
	b	.L7
.L25:
	.align	2, 0
.L24:
	.word	gHasHallOfFameRecords
	.word	gSaveBlock2Ptr
.L6:
	mov	r0, #0x2
	bl	SetContinueGameWarpToHealLocation
.L7:
	mov	r7, #0x0
	mov	r6, #0x0
	add	r0, sp, #0x18
	mov	r8, r0
	mov	r5, sp
.L11:
	mov	r0, #0x64
	mov	r1, r6
	mul	r1, r1, r0
	ldr	r0, .L26
	add	r4, r1, r0
	mov	r0, #0x0
	strb	r6, [r5]
	strb	r0, [r5, #0x1]
	add	r0, r4, #0
	mov	r1, #0x5
	bl	GetMonData
	cmp	r0, #0
	beq	.L10	@cond_branch
	add	r0, r4, #0
	mov	r1, #0x6
	bl	GetMonData
	cmp	r0, #0
	bne	.L10	@cond_branch
	add	r0, r4, #0
	mov	r1, #0x43
	bl	GetMonData
	cmp	r0, #0
	bne	.L10	@cond_branch
	mov	r0, #0x1
	mov	r1, r8
	strb	r0, [r1]
	add	r0, r4, #0
	mov	r1, #0x43
	add	r2, sp, #0x18
	bl	SetMonData
	add	r0, r4, #0
	bl	GetRibbonCount
	strb	r0, [r5, #0x1]
	mov	r7, #0x1
.L10:
	add	r5, r5, #0x4
	add	r6, r6, #0x1
	cmp	r6, #0x5
	ble	.L11	@cond_branch
	cmp	r7, #0x1
	bne	.L14	@cond_branch
	mov	r0, #0x2a
	bl	IncrementGameStat
	ldr	r0, .L26+0x4
	bl	FlagSet
	mov	r3, sp
	add	r2, sp, #0x4
	mov	r6, #0x4
.L18:
	ldrb	r1, [r3, #0x1]
	ldrb	r0, [r2, #0x1]
	cmp	r0, r1
	bls	.L17	@cond_branch
	ldr	r1, [sp]
	ldr	r0, [r2]
	str	r0, [sp]
	str	r1, [r2]
.L17:
	add	r2, r2, #0x4
	sub	r6, r6, #0x1
	cmp	r6, #0
	bge	.L18	@cond_branch
	mov	r0, sp
	ldrb	r0, [r0, #0x1]
	cmp	r0, #0x4
	bls	.L14	@cond_branch
	mov	r0, sp
	ldrb	r1, [r0]
	mov	r0, #0x64
	mul	r0, r0, r1
	ldr	r1, .L26
	add	r0, r0, r1
	mov	r1, #0x43
	bl	TryPutSpotTheCutiesOnAir
.L14:
	ldr	r0, .L26+0x8
	bl	SetMainCallback2
	mov	r0, #0x0
	add	sp, sp, #0x1c
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L27:
	.align	2, 0
.L26:
	.word	gPlayerParty
	.word	0x89b
	.word	CB2_DoHallOfFameScreen
.Lfe1:
	.size	 GameClear,.Lfe1-GameClear
	.align	2, 0
	.globl	SetCB2WhiteOut
	.type	 SetCB2WhiteOut,function
	.thumb_func
SetCB2WhiteOut:
	push	{lr}
	ldr	r0, .L29
	bl	SetMainCallback2
	mov	r0, #0x0
	pop	{r1}
	bx	r1
.L30:
	.align	2, 0
.L29:
	.word	CB2_WhiteOut
.Lfe2:
	.size	 SetCB2WhiteOut,.Lfe2-SetCB2WhiteOut
.text
	.align	2, 0

