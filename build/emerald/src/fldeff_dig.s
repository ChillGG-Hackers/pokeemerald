@ Generated by gcc 2.9-arm-000512 for Thumb/elf
	.code	16
.gcc2_compiled.:
.text
	.align	2, 0
	.globl	SetUpFieldMove_Dig
	.type	 SetUpFieldMove_Dig,function
	.thumb_func
SetUpFieldMove_Dig:
	push	{lr}
	bl	CanUseDigOrEscapeRopeOnCurMap
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0x1
	beq	.L3	@cond_branch
	mov	r0, #0x0
	b	.L5
.L3:
	ldr	r1, .L6
	ldr	r0, .L6+0x4
	str	r0, [r1]
	ldr	r1, .L6+0x8
	ldr	r0, .L6+0xc
	str	r0, [r1]
	mov	r0, #0x1
.L5:
	pop	{r1}
	bx	r1
.L7:
	.align	2, 0
.L6:
	.word	gFieldCallback2
	.word	FieldCallback_PrepareFadeInFromMenu
	.word	gPostMenuFieldCallback
	.word	hm2_dig
.Lfe1:
	.size	 SetUpFieldMove_Dig,.Lfe1-SetUpFieldMove_Dig
	.align	2, 0
	.type	 hm2_dig,function
	.thumb_func
hm2_dig:
	push	{lr}
	bl	Overworld_ResetStateAfterDigEscRope
	mov	r0, #0x26
	bl	FieldEffectStart
	bl	GetCursorSelectionMonId
	ldr	r1, .L9
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	str	r0, [r1]
	pop	{r0}
	bx	r0
.L10:
	.align	2, 0
.L9:
	.word	gFieldEffectArguments
.Lfe2:
	.size	 hm2_dig,.Lfe2-hm2_dig
	.align	2, 0
	.globl	FldEff_UseDig
	.type	 FldEff_UseDig,function
	.thumb_func
FldEff_UseDig:
	push	{lr}
	bl	oei_task_add
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	ldr	r2, .L13
	lsl	r1, r0, #0x2
	add	r1, r1, r0
	lsl	r1, r1, #0x3
	add	r1, r1, r2
	ldr	r2, .L13+0x4
	lsr	r0, r2, #0x10
	strh	r0, [r1, #0x18]
	strh	r2, [r1, #0x1a]
	bl	ShouldDoBrailleDigEffect
	lsl	r0, r0, #0x18
	cmp	r0, #0
	bne	.L12	@cond_branch
	mov	r0, #0x1
	bl	SetPlayerAvatarTransitionFlags
.L12:
	mov	r0, #0x0
	pop	{r1}
	bx	r1
.L14:
	.align	2, 0
.L13:
	.word	gTasks
	.word	sub_8135780
.Lfe3:
	.size	 FldEff_UseDig,.Lfe3-FldEff_UseDig
	.align	2, 0
	.type	 sub_8135780,function
	.thumb_func
sub_8135780:
	push	{r4, lr}
	mov	r0, #0x26
	bl	FieldEffectActiveListRemove
	bl	ShouldDoBrailleDigEffect
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x18
	cmp	r4, #0
	beq	.L16	@cond_branch
	bl	DoBrailleDigEffect
	b	.L17
.L16:
	ldr	r0, .L18
	mov	r1, #0x8
	bl	CreateTask
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	ldr	r2, .L18+0x4
	lsl	r1, r0, #0x2
	add	r1, r1, r0
	lsl	r1, r1, #0x3
	add	r1, r1, r2
	strh	r4, [r1, #0x8]
.L17:
	pop	{r4}
	pop	{r0}
	bx	r0
.L19:
	.align	2, 0
.L18:
	.word	Task_UseDigEscapeRopeOnField
	.word	gTasks
.Lfe4:
	.size	 sub_8135780,.Lfe4-sub_8135780
.text
	.align	2, 0

