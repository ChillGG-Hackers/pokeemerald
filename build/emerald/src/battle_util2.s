@ Generated by gcc 2.9-arm-000512 for Thumb/elf
	.code	16
.gcc2_compiled.:
.text
	.align	2, 0
	.globl	AllocateBattleResources
	.type	 AllocateBattleResources,function
	.thumb_func
AllocateBattleResources:
	push	{r4, r5, r6, lr}
	ldr	r5, .L5
	ldr	r6, .L5+0x4
	ldr	r0, [r6]
	mov	r1, #0x80
	lsl	r1, r1, #0x13
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L3	@cond_branch
	bl	InitTrainerHillBattleStruct
.L3:
	ldr	r4, .L5+0x8
	mov	r0, #0xa9
	lsl	r0, r0, #0x2
	bl	AllocZeroed
	str	r0, [r4]
	mov	r0, #0x20
	bl	AllocZeroed
	str	r0, [r5]
	mov	r0, #0xa0
	bl	AllocZeroed
	ldr	r1, [r5]
	str	r0, [r1]
	mov	r0, #0x10
	bl	AllocZeroed
	ldr	r1, [r5]
	str	r0, [r1, #0x4]
	mov	r0, #0x24
	bl	AllocZeroed
	ldr	r1, [r5]
	str	r0, [r1, #0x8]
	mov	r0, #0x24
	bl	AllocZeroed
	ldr	r1, [r5]
	str	r0, [r1, #0xc]
	mov	r0, #0xc
	bl	AllocZeroed
	ldr	r1, [r5]
	str	r0, [r1, #0x10]
	mov	r0, #0x1c
	bl	AllocZeroed
	ldr	r1, [r5]
	str	r0, [r1, #0x14]
	mov	r0, #0x54
	bl	AllocZeroed
	ldr	r1, [r5]
	str	r0, [r1, #0x18]
	mov	r0, #0x24
	bl	AllocZeroed
	ldr	r1, [r5]
	str	r0, [r1, #0x1c]
	ldr	r4, .L5+0xc
	mov	r5, #0x80
	lsl	r5, r5, #0x5
	add	r0, r5, #0
	bl	AllocZeroed
	str	r0, [r4]
	ldr	r4, .L5+0x10
	add	r0, r5, #0
	bl	AllocZeroed
	str	r0, [r4]
	ldr	r4, .L5+0x14
	mov	r0, #0x80
	lsl	r0, r0, #0x6
	bl	AllocZeroed
	str	r0, [r4]
	ldr	r4, .L5+0x18
	add	r0, r5, #0
	bl	AllocZeroed
	str	r0, [r4]
	ldr	r0, [r6]
	mov	r1, #0x80
	lsl	r1, r1, #0x14
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L4	@cond_branch
	ldr	r0, .L5+0x1c
	bl	VarGet
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	ldr	r2, .L5+0x20
	lsl	r1, r0, #0x2
	add	r1, r1, r0
	lsl	r1, r1, #0x5
	ldr	r0, .L5+0x24
	add	r1, r1, r0
	ldr	r0, [r2]
	add	r0, r0, r1
	bl	CreateSecretBaseEnemyParty
.L4:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L6:
	.align	2, 0
.L5:
	.word	gBattleResources
	.word	gBattleTypeFlags
	.word	gBattleStruct
	.word	gLinkBattleSendBuffer
	.word	gLinkBattleRecvBuffer
	.word	gUnknown_0202305C
	.word	gUnknown_02023060
	.word	0x4054
	.word	gSaveBlock1Ptr
	.word	0x1a9c
.Lfe1:
	.size	 AllocateBattleResources,.Lfe1-AllocateBattleResources
	.align	2, 0
	.globl	FreeBattleResources
	.type	 FreeBattleResources,function
	.thumb_func
FreeBattleResources:
	push	{r4, r5, r6, lr}
	ldr	r0, .L10
	ldr	r0, [r0]
	mov	r1, #0x80
	lsl	r1, r1, #0x13
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L8	@cond_branch
	bl	FreeTrainerHillBattleStruct
.L8:
	ldr	r6, .L10+0x4
	ldr	r0, [r6]
	cmp	r0, #0
	beq	.L9	@cond_branch
	ldr	r4, .L10+0x8
	ldr	r0, [r4]
	bl	Free
	mov	r5, #0x0
	str	r5, [r4]
	ldr	r0, [r6]
	ldr	r0, [r0]
	bl	Free
	ldr	r0, [r6]
	str	r5, [r0]
	ldr	r0, [r0, #0x4]
	bl	Free
	ldr	r0, [r6]
	str	r5, [r0, #0x4]
	ldr	r0, [r0, #0x8]
	bl	Free
	ldr	r0, [r6]
	str	r5, [r0, #0x8]
	ldr	r0, [r0, #0xc]
	bl	Free
	ldr	r0, [r6]
	str	r5, [r0, #0xc]
	ldr	r0, [r0, #0x10]
	bl	Free
	ldr	r0, [r6]
	str	r5, [r0, #0x10]
	ldr	r0, [r0, #0x14]
	bl	Free
	ldr	r0, [r6]
	str	r5, [r0, #0x14]
	ldr	r0, [r0, #0x18]
	bl	Free
	ldr	r0, [r6]
	str	r5, [r0, #0x18]
	ldr	r0, [r0, #0x1c]
	bl	Free
	ldr	r0, [r6]
	str	r5, [r0, #0x1c]
	bl	Free
	str	r5, [r6]
	ldr	r4, .L10+0xc
	ldr	r0, [r4]
	bl	Free
	str	r5, [r4]
	ldr	r4, .L10+0x10
	ldr	r0, [r4]
	bl	Free
	str	r5, [r4]
	ldr	r4, .L10+0x14
	ldr	r0, [r4]
	bl	Free
	str	r5, [r4]
	ldr	r4, .L10+0x18
	ldr	r0, [r4]
	bl	Free
	str	r5, [r4]
.L9:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L11:
	.align	2, 0
.L10:
	.word	gBattleTypeFlags
	.word	gBattleResources
	.word	gBattleStruct
	.word	gLinkBattleSendBuffer
	.word	gLinkBattleRecvBuffer
	.word	gUnknown_0202305C
	.word	gUnknown_02023060
.Lfe2:
	.size	 FreeBattleResources,.Lfe2-FreeBattleResources
	.align	2, 0
	.globl	AdjustFriendshipOnBattleFaint
	.type	 AdjustFriendshipOnBattleFaint,function
	.thumb_func
AdjustFriendshipOnBattleFaint:
	push	{r4, r5, lr}
	lsl	r0, r0, #0x18
	lsr	r5, r0, #0x18
	ldr	r0, .L20
	ldr	r0, [r0]
	mov	r1, #0x1
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L13	@cond_branch
	mov	r0, #0x1
	bl	GetBattlerAtPosition
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x18
	mov	r0, #0x3
	bl	GetBattlerAtPosition
	lsl	r0, r0, #0x18
	lsr	r3, r0, #0x18
	ldr	r2, .L20+0x4
	mov	r0, #0x58
	mov	r1, r3
	mul	r1, r1, r0
	add	r1, r1, r2
	add	r1, r1, #0x2a
	mul	r0, r0, r4
	add	r0, r0, r2
	add	r0, r0, #0x2a
	ldrb	r1, [r1]
	ldrb	r0, [r0]
	cmp	r1, r0
	bls	.L15	@cond_branch
	add	r4, r3, #0
	b	.L15
.L21:
	.align	2, 0
.L20:
	.word	gBattleTypeFlags
	.word	gBattleMons
.L13:
	mov	r0, #0x1
	bl	GetBattlerAtPosition
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x18
.L15:
	ldr	r2, .L22
	mov	r1, #0x58
	mov	r0, r4
	mul	r0, r0, r1
	add	r0, r0, r2
	add	r3, r0, #0
	add	r3, r3, #0x2a
	mov	r0, r5
	mul	r0, r0, r1
	add	r0, r0, r2
	add	r1, r0, #0
	add	r1, r1, #0x2a
	ldrb	r0, [r3]
	ldrb	r2, [r1]
	cmp	r0, r2
	bls	.L16	@cond_branch
	ldrb	r1, [r1]
	sub	r0, r0, r1
	cmp	r0, #0x1d
	ble	.L17	@cond_branch
	ldr	r1, .L22+0x4
	lsl	r0, r5, #0x1
	add	r0, r0, r1
	ldrh	r1, [r0]
	mov	r0, #0x64
	mul	r0, r0, r1
	ldr	r1, .L22+0x8
	add	r0, r0, r1
	mov	r1, #0x8
	bl	AdjustFriendship
	b	.L19
.L23:
	.align	2, 0
.L22:
	.word	gBattleMons
	.word	gBattlerPartyIndexes
	.word	gPlayerParty
.L17:
	ldr	r1, .L24
	lsl	r0, r5, #0x1
	add	r0, r0, r1
	ldrh	r1, [r0]
	mov	r0, #0x64
	mul	r0, r0, r1
	ldr	r1, .L24+0x4
	add	r0, r0, r1
	mov	r1, #0x6
	bl	AdjustFriendship
	b	.L19
.L25:
	.align	2, 0
.L24:
	.word	gBattlerPartyIndexes
	.word	gPlayerParty
.L16:
	ldr	r1, .L26
	lsl	r0, r5, #0x1
	add	r0, r0, r1
	ldrh	r1, [r0]
	mov	r0, #0x64
	mul	r0, r0, r1
	ldr	r1, .L26+0x4
	add	r0, r0, r1
	mov	r1, #0x6
	bl	AdjustFriendship
.L19:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L27:
	.align	2, 0
.L26:
	.word	gBattlerPartyIndexes
	.word	gPlayerParty
.Lfe3:
	.size	 AdjustFriendshipOnBattleFaint,.Lfe3-AdjustFriendshipOnBattleFaint
	.align	2, 0
	.globl	SwitchPartyOrderInGameMulti
	.type	 SwitchPartyOrderInGameMulti,function
	.thumb_func
SwitchPartyOrderInGameMulti:
	push	{r4, r5, r6, r7, lr}
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x18
	lsl	r1, r1, #0x18
	lsr	r7, r1, #0x18
	add	r0, r4, #0
	bl	GetBattlerSide
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0x1
	beq	.L29	@cond_branch
	mov	r2, #0x0
	ldr	r6, .L40
	lsl	r3, r4, #0x1
	ldr	r5, .L40+0x4
	ldr	r4, .L40+0x8
.L33:
	add	r0, r2, r5
	ldr	r1, [r4]
	add	r1, r2, r1
	add	r1, r1, #0x60
	ldrb	r1, [r1]
	strb	r1, [r0]
	add	r2, r2, #0x1
	cmp	r2, #0x2
	ble	.L33	@cond_branch
	add	r0, r3, r6
	ldrb	r0, [r0]
	bl	GetPartyIdFromBattlePartyId
	add	r4, r0, #0
	lsl	r4, r4, #0x18
	lsr	r4, r4, #0x18
	add	r0, r7, #0
	bl	GetPartyIdFromBattlePartyId
	add	r1, r0, #0
	lsl	r1, r1, #0x18
	lsr	r1, r1, #0x18
	add	r0, r4, #0
	bl	SwitchPartyMonSlots
	mov	r2, #0x0
	ldr	r4, .L40+0x8
	ldr	r3, .L40+0x4
.L38:
	ldr	r0, [r4]
	add	r0, r2, r0
	add	r0, r0, #0x60
	add	r1, r2, r3
	ldrb	r1, [r1]
	strb	r1, [r0]
	add	r2, r2, #0x1
	cmp	r2, #0x2
	ble	.L38	@cond_branch
.L29:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L41:
	.align	2, 0
.L40:
	.word	gBattlerPartyIndexes
	.word	gBattlePartyCurrentOrder
	.word	gBattleStruct
.Lfe4:
	.size	 SwitchPartyOrderInGameMulti,.Lfe4-SwitchPartyOrderInGameMulti
	.align	2, 0
	.globl	sub_805725C
	.type	 sub_805725C,function
	.thumb_func
sub_805725C:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	add	sp, sp, #-0x4
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	mov	r9, r0
	mov	r0, #0x0
	mov	r8, r0
	ldr	r1, .L69
	mov	sl, r1
	b	.L43
.L70:
	.align	2, 0
.L69:
	.word	gBattleCommunication
.L67:
	mov	r2, r8
	cmp	r2, #0
	beq	.LCB539
	b	.L44	@long jump
.LCB539:
.L43:
	mov	r1, sl
	ldrb	r0, [r1]
	cmp	r0, #0x1
	bne	.LCB546
	b	.L57	@long jump
.LCB546:
	cmp	r0, #0x1
	ble	.LCB548
	b	.L45	@long jump
.LCB548:
	cmp	r0, #0
	beq	.LCB550
	b	.L45	@long jump
.LCB550:
	ldr	r6, .L71
	mov	r0, #0x58
	mov	r5, r9
	mul	r5, r5, r0
	add	r0, r6, #0
	add	r0, r0, #0x4c
	add	r4, r5, r0
	ldr	r0, [r4]
	mov	r7, #0x7
	and	r0, r0, r7
	cmp	r0, #0
	beq	.L48	@cond_branch
	mov	r0, r9
	bl	UproarWakeUpCheck
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.L49	@cond_branch
	ldr	r0, [r4]
	mov	r1, #0x8
	neg	r1, r1
	and	r0, r0, r1
	str	r0, [r4]
	add	r2, r6, #0
	add	r2, r2, #0x50
	add	r2, r5, r2
	ldr	r0, [r2]
	ldr	r1, .L71+0x4
	and	r0, r0, r1
	str	r0, [r2]
	bl	BattleScriptPushCursor
	mov	r0, #0x1
	mov	r2, sl
	strb	r0, [r2, #0x5]
	ldr	r1, .L71+0x8
	ldr	r0, .L71+0xc
	str	r0, [r1]
	mov	r0, #0x2
	mov	r8, r0
	b	.L48
.L72:
	.align	2, 0
.L71:
	.word	gBattleMons
	.word	-0x8000001
	.word	gBattlescriptCurrInstr
	.word	BattleScript_MoveUsedWokeUp
.L49:
	add	r0, r5, r6
	add	r0, r0, #0x20
	ldrb	r0, [r0]
	mov	r2, #0x1
	cmp	r0, #0x30
	bne	.L51	@cond_branch
	mov	r2, #0x2
.L51:
	ldr	r1, [r4]
	add	r0, r1, #0
	and	r0, r0, r7
	cmp	r0, r2
	bcs	.L53	@cond_branch
	mov	r0, #0x8
	neg	r0, r0
	and	r1, r1, r0
	str	r1, [r4]
	b	.L54
.L53:
	sub	r0, r1, r2
	str	r0, [r4]
.L54:
	ldr	r2, .L73
	mov	r0, #0x58
	mov	r1, r9
	mul	r1, r1, r0
	add	r0, r2, #0
	add	r0, r0, #0x4c
	add	r0, r1, r0
	ldr	r4, [r0]
	mov	r0, #0x7
	and	r4, r4, r0
	cmp	r4, #0
	beq	.L55	@cond_branch
	ldr	r1, .L73+0x4
	ldr	r0, .L73+0x8
	str	r0, [r1]
	mov	r1, #0x2
	mov	r8, r1
	b	.L48
.L74:
	.align	2, 0
.L73:
	.word	gBattleMons
	.word	gBattlescriptCurrInstr
	.word	BattleScript_MoveUsedIsAsleep
.L55:
	add	r2, r2, #0x50
	add	r2, r1, r2
	ldr	r0, [r2]
	ldr	r1, .L75
	and	r0, r0, r1
	str	r0, [r2]
	bl	BattleScriptPushCursor
	ldr	r0, .L75+0x4
	strb	r4, [r0, #0x5]
	ldr	r1, .L75+0x8
	ldr	r0, .L75+0xc
	str	r0, [r1]
	mov	r2, #0x2
	mov	r8, r2
.L48:
	ldr	r1, .L75+0x4
	ldrb	r0, [r1]
	add	r0, r0, #0x1
	strb	r0, [r1]
	mov	sl, r1
	b	.L45
.L76:
	.align	2, 0
.L75:
	.word	-0x8000001
	.word	gBattleCommunication
	.word	gBattlescriptCurrInstr
	.word	BattleScript_MoveUsedWokeUp
.L57:
	ldr	r1, .L77
	mov	r0, #0x58
	mov	r2, r9
	mul	r2, r2, r0
	add	r0, r2, #0
	add	r1, r1, #0x4c
	add	r4, r0, r1
	ldr	r0, [r4]
	mov	r1, #0x20
	and	r0, r0, r1
	cmp	r0, #0
	beq	.L58	@cond_branch
	bl	Random
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	mov	r1, #0x5
	bl	__umodsi3
	lsl	r0, r0, #0x10
	lsr	r5, r0, #0x10
	cmp	r5, #0
	beq	.L59	@cond_branch
	ldr	r1, .L77+0x4
	ldr	r0, .L77+0x8
	str	r0, [r1]
	b	.L60
.L78:
	.align	2, 0
.L77:
	.word	gBattleMons
	.word	gBattlescriptCurrInstr
	.word	BattleScript_MoveUsedIsFrozen
.L59:
	ldr	r0, [r4]
	mov	r1, #0x21
	neg	r1, r1
	and	r0, r0, r1
	str	r0, [r4]
	bl	BattleScriptPushCursor
	ldr	r1, .L79
	ldr	r0, .L79+0x4
	str	r0, [r1]
	mov	r0, sl
	strb	r5, [r0, #0x5]
.L60:
	mov	r1, #0x2
	mov	r8, r1
	ldr	r2, .L79+0x8
	mov	sl, r2
.L58:
	mov	r1, sl
	ldrb	r0, [r1]
	add	r0, r0, #0x1
	strb	r0, [r1]
.L45:
	mov	r2, sl
	ldrb	r0, [r2]
	cmp	r0, #0x2
	beq	.LCB762
	b	.L67	@long jump
.LCB762:
.L44:
	mov	r0, r8
	cmp	r0, #0x2
	bne	.L68	@cond_branch
	ldr	r4, .L79+0xc
	mov	r1, r9
	strb	r1, [r4]
	ldrb	r1, [r4]
	mov	r0, #0x58
	mul	r0, r0, r1
	ldr	r1, .L79+0x10
	add	r0, r0, r1
	str	r0, [sp]
	mov	r0, #0x0
	mov	r1, #0x28
	mov	r2, #0x0
	mov	r3, #0x4
	bl	BtlController_EmitSetMonData
	ldrb	r0, [r4]
	bl	MarkBattlerForControllerExec
.L68:
	mov	r0, r8
	add	sp, sp, #0x4
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L80:
	.align	2, 0
.L79:
	.word	gBattlescriptCurrInstr
	.word	BattleScript_MoveUsedUnfroze
	.word	gBattleCommunication
	.word	gActiveBattler
	.word	gBattleMons+0x4c
.Lfe5:
	.size	 sub_805725C,.Lfe5-sub_805725C
.text
	.align	2, 0

