@ Generated by gcc 2.9-arm-000512 for Thumb/elf
	.code	16
.gcc2_compiled.:
.text
	.align	2, 0
	.globl	SetUpFieldMove_SoftBoiled
	.type	 SetUpFieldMove_SoftBoiled,function
	.thumb_func
SetUpFieldMove_SoftBoiled:
	push	{r4, r5, r6, lr}
	bl	GetCursorSelectionMonId
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	mov	r6, #0x64
	mul	r0, r0, r6
	ldr	r4, .L5
	add	r0, r0, r4
	mov	r1, #0x3a
	bl	GetMonData
	add	r5, r0, #0
	lsl	r5, r5, #0x10
	lsr	r5, r5, #0x10
	bl	GetCursorSelectionMonId
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	mul	r0, r0, r6
	add	r0, r0, r4
	mov	r1, #0x39
	bl	GetMonData
	add	r4, r0, #0
	lsl	r4, r4, #0x10
	lsr	r4, r4, #0x10
	add	r0, r5, #0
	mov	r1, #0x5
	bl	__udivsi3
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	cmp	r4, r0
	bhi	.L3	@cond_branch
	mov	r0, #0x0
	b	.L4
.L6:
	.align	2, 0
.L5:
	.word	gPlayerParty
.L3:
	mov	r0, #0x1
.L4:
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.Lfe1:
	.size	 SetUpFieldMove_SoftBoiled,.Lfe1-SetUpFieldMove_SoftBoiled
	.align	2, 0
	.globl	ChooseMonForSoftboiled
	.type	 ChooseMonForSoftboiled,function
	.thumb_func
ChooseMonForSoftboiled:
	push	{r4, lr}
	add	r4, r0, #0
	lsl	r4, r4, #0x18
	lsr	r4, r4, #0x18
	ldr	r0, .L8
	mov	r1, #0xa
	strb	r1, [r0, #0xb]
	ldrb	r1, [r0, #0x9]
	strb	r1, [r0, #0xa]
	bl	GetCursorSelectionMonId
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	mov	r1, #0x1
	bl	AnimatePartySlot
	mov	r0, #0x5
	bl	DisplayPartyMenuStdMessage
	ldr	r1, .L8+0x4
	lsl	r0, r4, #0x2
	add	r0, r0, r4
	lsl	r0, r0, #0x3
	add	r0, r0, r1
	ldr	r1, .L8+0x8
	str	r1, [r0]
	pop	{r4}
	pop	{r0}
	bx	r0
.L9:
	.align	2, 0
.L8:
	.word	gPartyMenu
	.word	gTasks
	.word	Task_HandleChooseMonInput
.Lfe2:
	.size	 ChooseMonForSoftboiled,.Lfe2-ChooseMonForSoftboiled
	.align	2, 0
	.globl	Task_TryUseSoftboiledOnPartyMon
	.type	 Task_TryUseSoftboiledOnPartyMon,function
	.thumb_func
Task_TryUseSoftboiledOnPartyMon:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	add	sp, sp, #-0x8
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x18
	str	r4, [sp, #0x4]
	ldr	r1, .L14
	ldrb	r7, [r1, #0x9]
	mov	r8, r7
	ldrb	r0, [r1, #0xa]
	add	r5, r0, #0
	cmp	r5, #0x6
	bls	.L11	@cond_branch
	mov	r0, #0x0
	strb	r0, [r1, #0xb]
	bl	DisplayPartyMenuStdMessage
	ldr	r1, .L14+0x4
	lsl	r0, r4, #0x2
	add	r0, r0, r4
	lsl	r0, r0, #0x3
	add	r0, r0, r1
	ldr	r1, .L14+0x8
	str	r1, [r0]
	b	.L10
.L15:
	.align	2, 0
.L14:
	.word	gPartyMenu
	.word	gTasks
	.word	Task_HandleChooseMonInput
.L11:
	mov	r0, #0x64
	mov	sl, r0
	mov	r0, sl
	mul	r0, r0, r5
	ldr	r1, .L16
	mov	r9, r1
	add	r6, r0, r1
	add	r0, r6, #0
	mov	r1, #0x39
	bl	GetMonData
	lsl	r0, r0, #0x10
	lsr	r4, r0, #0x10
	cmp	r4, #0
	beq	.L13	@cond_branch
	cmp	r7, r5
	beq	.L13	@cond_branch
	add	r0, r6, #0
	mov	r1, #0x3a
	bl	GetMonData
	cmp	r0, r4
	bne	.L12	@cond_branch
.L13:
	ldr	r0, [sp, #0x4]
	bl	CantUseSoftboiledOnMon
	b	.L10
.L17:
	.align	2, 0
.L16:
	.word	gPlayerParty
.L12:
	mov	r0, #0x1
	bl	PlaySE
	mov	r1, sl
	mov	r0, r8
	mul	r0, r0, r1
	add	r0, r0, r9
	mov	r1, #0x3a
	bl	GetMonData
	mov	r1, #0x5
	bl	__udivsi3
	add	r3, r0, #0
	lsl	r3, r3, #0x10
	asr	r3, r3, #0x10
	mov	r2, #0x1
	neg	r2, r2
	ldr	r0, .L18
	str	r0, [sp]
	ldr	r0, [sp, #0x4]
	mov	r1, r8
	bl	PartyMenuModifyHP
.L10:
	add	sp, sp, #0x8
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L19:
	.align	2, 0
.L18:
	.word	Task_SoftboiledRestoreHealth
.Lfe3:
	.size	 Task_TryUseSoftboiledOnPartyMon,.Lfe3-Task_TryUseSoftboiledOnPartyMon
	.align	2, 0
	.type	 Task_SoftboiledRestoreHealth,function
	.thumb_func
Task_SoftboiledRestoreHealth:
	push	{r4, r5, lr}
	add	sp, sp, #-0x4
	add	r4, r0, #0
	lsl	r4, r4, #0x18
	lsr	r4, r4, #0x18
	mov	r0, #0x1
	bl	PlaySE
	ldr	r5, .L21
	mov	r1, #0x9
	ldrsb	r1, [r5, r1]
	mov	r0, #0x64
	mul	r0, r0, r1
	ldr	r1, .L21+0x4
	add	r0, r0, r1
	mov	r1, #0x3a
	bl	GetMonData
	mov	r1, #0x5
	bl	__udivsi3
	add	r3, r0, #0
	lsl	r3, r3, #0x10
	asr	r3, r3, #0x10
	ldrb	r1, [r5, #0xa]
	ldr	r0, .L21+0x8
	str	r0, [sp]
	add	r0, r4, #0
	mov	r2, #0x1
	bl	PartyMenuModifyHP
	add	sp, sp, #0x4
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L22:
	.align	2, 0
.L21:
	.word	gPartyMenu
	.word	gPlayerParty
	.word	Task_DisplayHPRestoredMessage
.Lfe4:
	.size	 Task_SoftboiledRestoreHealth,.Lfe4-Task_SoftboiledRestoreHealth
	.align	2, 0
	.type	 Task_DisplayHPRestoredMessage,function
	.thumb_func
Task_DisplayHPRestoredMessage:
	push	{r4, r5, lr}
	add	r5, r0, #0
	lsl	r5, r5, #0x18
	lsr	r5, r5, #0x18
	ldr	r0, .L24
	mov	r1, #0xa
	ldrsb	r1, [r0, r1]
	mov	r0, #0x64
	mul	r0, r0, r1
	ldr	r1, .L24+0x4
	add	r0, r0, r1
	ldr	r1, .L24+0x8
	bl	GetMonNickname
	ldr	r4, .L24+0xc
	ldr	r1, .L24+0x10
	add	r0, r4, #0
	bl	StringExpandPlaceholders
	add	r0, r4, #0
	mov	r1, #0x0
	bl	DisplayPartyMenuMessage
	mov	r0, #0x2
	bl	schedule_bg_copy_tilemap_to_vram
	ldr	r1, .L24+0x14
	lsl	r0, r5, #0x2
	add	r0, r0, r5
	lsl	r0, r0, #0x3
	add	r0, r0, r1
	ldr	r1, .L24+0x18
	str	r1, [r0]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L25:
	.align	2, 0
.L24:
	.word	gPartyMenu
	.word	gPlayerParty
	.word	gStringVar1
	.word	gStringVar4
	.word	gText_PkmnHPRestoredByVar2
	.word	gTasks
	.word	Task_FinishSoftboiled
.Lfe5:
	.size	 Task_DisplayHPRestoredMessage,.Lfe5-Task_DisplayHPRestoredMessage
	.align	2, 0
	.type	 Task_FinishSoftboiled,function
	.thumb_func
Task_FinishSoftboiled:
	push	{r4, r5, lr}
	lsl	r0, r0, #0x18
	lsr	r5, r0, #0x18
	bl	IsPartyMenuTextPrinterActive
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0x1
	beq	.L26	@cond_branch
	ldr	r4, .L28
	mov	r0, #0x0
	strb	r0, [r4, #0xb]
	ldrb	r0, [r4, #0x9]
	mov	r1, #0x0
	bl	AnimatePartySlot
	ldrb	r0, [r4, #0xa]
	strb	r0, [r4, #0x9]
	ldrb	r0, [r4, #0xa]
	mov	r1, #0x1
	bl	AnimatePartySlot
	mov	r0, #0x6
	mov	r1, #0x0
	bl	ClearStdWindowAndFrameToTransparent
	mov	r0, #0x6
	bl	ClearWindowTilemap
	mov	r0, #0x0
	bl	DisplayPartyMenuStdMessage
	ldr	r1, .L28+0x4
	lsl	r0, r5, #0x2
	add	r0, r0, r5
	lsl	r0, r0, #0x3
	add	r0, r0, r1
	ldr	r1, .L28+0x8
	str	r1, [r0]
.L26:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L29:
	.align	2, 0
.L28:
	.word	gPartyMenu
	.word	gTasks
	.word	Task_HandleChooseMonInput
.Lfe6:
	.size	 Task_FinishSoftboiled,.Lfe6-Task_FinishSoftboiled
	.align	2, 0
	.type	 Task_ChooseNewMonForSoftboiled,function
	.thumb_func
Task_ChooseNewMonForSoftboiled:
	push	{r4, lr}
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x18
	bl	IsPartyMenuTextPrinterActive
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0x1
	beq	.L30	@cond_branch
	mov	r0, #0x5
	bl	DisplayPartyMenuStdMessage
	ldr	r0, .L32
	lsl	r1, r4, #0x2
	add	r1, r1, r4
	lsl	r1, r1, #0x3
	add	r1, r1, r0
	ldr	r0, .L32+0x4
	str	r0, [r1]
.L30:
	pop	{r4}
	pop	{r0}
	bx	r0
.L33:
	.align	2, 0
.L32:
	.word	gTasks
	.word	Task_HandleChooseMonInput
.Lfe7:
	.size	 Task_ChooseNewMonForSoftboiled,.Lfe7-Task_ChooseNewMonForSoftboiled
	.align	2, 0
	.type	 CantUseSoftboiledOnMon,function
	.thumb_func
CantUseSoftboiledOnMon:
	push	{r4, lr}
	add	r4, r0, #0
	lsl	r4, r4, #0x18
	lsr	r4, r4, #0x18
	mov	r0, #0x5
	bl	PlaySE
	ldr	r0, .L35
	mov	r1, #0x0
	bl	DisplayPartyMenuMessage
	mov	r0, #0x2
	bl	schedule_bg_copy_tilemap_to_vram
	ldr	r1, .L35+0x4
	lsl	r0, r4, #0x2
	add	r0, r0, r4
	lsl	r0, r0, #0x3
	add	r0, r0, r1
	ldr	r1, .L35+0x8
	str	r1, [r0]
	pop	{r4}
	pop	{r0}
	bx	r0
.L36:
	.align	2, 0
.L35:
	.word	gText_CantBeUsedOnPkmn
	.word	gTasks
	.word	Task_ChooseNewMonForSoftboiled
.Lfe8:
	.size	 CantUseSoftboiledOnMon,.Lfe8-CantUseSoftboiledOnMon
.text
	.align	2, 0

