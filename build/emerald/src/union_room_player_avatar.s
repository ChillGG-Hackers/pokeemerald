@ Generated by gcc 2.9-arm-000512 for Thumb/elf
	.code	16
.gcc2_compiled.:
	.globl	gUnknown_02022C64
	.section ewram_data,"aw"
	.align	2, 0
	.type	 gUnknown_02022C64,object
	.size	 gUnknown_02022C64,4
gUnknown_02022C64:
	.word	0x0
	.globl	gUnknown_02022C68
	.align	2, 0
	.type	 gUnknown_02022C68,object
	.size	 gUnknown_02022C68,4
gUnknown_02022C68:
	.word	0x0
	.globl	gUnknown_082F072C
	.section .rodata
	.align	2, 0
	.type	 gUnknown_082F072C,object
gUnknown_082F072C:
	.byte	0x21
	.byte	0x2c
	.byte	0x1f
	.byte	0x23
	.byte	0x25
	.byte	0x24
	.byte	0x41
	.byte	0x42
	.space	2
	.byte	0x22
	.byte	0x28
	.byte	0x20
	.byte	0x2f
	.byte	0x2f
	.byte	0xe
	.byte	0x14
	.byte	0x2d
	.space	2
	.size	 gUnknown_082F072C,20
	.align	1, 0
	.type	 gUnknown_082F0740,object
gUnknown_082F0740:
	.short	0x4
	.short	0x6
	.short	0xd
	.short	0x8
	.short	0xa
	.short	0x6
	.short	0x1
	.short	0x8
	.short	0xd
	.short	0x4
	.short	0x7
	.short	0x4
	.short	0x1
	.short	0x4
	.short	0x7
	.short	0x8
	.size	 gUnknown_082F0740,32
	.type	 gUnknown_082F0760,object
gUnknown_082F0760:
	.byte	0x0
	.byte	0x0
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.byte	-0x1
	.byte	-0x1
	.byte	0x0
	.byte	0x0
	.byte	0x1
	.size	 gUnknown_082F0760,10
	.type	 gUnknown_082F076A,object
gUnknown_082F076A:
	.byte	0x0
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x3
	.size	 gUnknown_082F076A,5
	.type	 gUnknown_082F076F,object
gUnknown_082F076F:
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.size	 gUnknown_082F076F,5
	.type	 gUnknown_082F0774,object
gUnknown_082F0774:
	.byte	0x9
	.byte	0x8
	.byte	0x7
	.byte	0x2
	.byte	0x6
	.byte	0x5
	.byte	0x4
	.byte	0x3
	.byte	0xbf
	.byte	0x2
	.byte	0xc0
	.byte	0x2
	.byte	0xc1
	.byte	0x2
	.byte	0xc2
	.byte	0x2
	.byte	0xc3
	.byte	0x2
	.byte	0xc4
	.byte	0x2
	.byte	0xc5
	.byte	0x2
	.byte	0xc6
	.byte	0x2
	.size	 gUnknown_082F0774,24
	.type	 gUnknown_082F078C,object
	.size	 gUnknown_082F078C,2
gUnknown_082F078C:
	.byte	0x9c
	.byte	0xfe
	.type	 gUnknown_082F078E,object
	.size	 gUnknown_082F078E,2
gUnknown_082F078E:
	.byte	0x9d
	.byte	0xfe
.text
	.align	2, 0
	.type	 is_walking_or_running,function
	.thumb_func
is_walking_or_running:
	push	{lr}
	ldr	r0, .L7
	ldrb	r0, [r0, #0x3]
	cmp	r0, #0x2
	beq	.L4	@cond_branch
	cmp	r0, #0
	bne	.L3	@cond_branch
.L4:
	mov	r0, #0x1
	b	.L6
.L8:
	.align	2, 0
.L7:
	.word	gPlayerAvatar
.L3:
	mov	r0, #0x0
.L6:
	pop	{r1}
	bx	r1
.Lfe1:
	.size	 is_walking_or_running,.Lfe1-is_walking_or_running
	.align	2, 0
	.type	 sub_8019978,function
	.thumb_func
sub_8019978:
	ldr	r3, .L10
	mov	r2, #0x7
	and	r2, r2, r1
	lsl	r1, r0, #0x2
	add	r1, r1, r0
	lsl	r1, r1, #0x1
	add	r2, r2, r1
	add	r2, r2, r3
	ldrb	r0, [r2]
	bx	lr
.L11:
	.align	2, 0
.L10:
	.word	gUnknown_082F072C
.Lfe2:
	.size	 sub_8019978,.Lfe2-sub_8019978
	.align	2, 0
	.type	 sub_8019990,function
	.thumb_func
sub_8019990:
	push	{r4, r5, r6, lr}
	mov	r6, r8
	push	{r6}
	ldr	r4, .L13
	mov	r8, r4
	lsl	r0, r0, #0x2
	add	r4, r0, r4
	mov	r6, #0x0
	ldrsh	r5, [r4, r6]
	ldr	r6, .L13+0x4
	lsl	r1, r1, #0x1
	add	r4, r1, r6
	ldrb	r4, [r4, #0]
	lsl	r4, r4, #24
	asr	r4, r4, #24
	add	r5, r5, r4
	add	r5, r5, #0x7
	str	r5, [r2]
	mov	r2, #0x2
	add	r8, r8, r2
	add	r0, r0, r8
	mov	r4, #0x0
	ldrsh	r0, [r0, r4]
	add	r6, r6, #0x1
	add	r1, r1, r6
	ldrb	r1, [r1, #0]
	lsl	r1, r1, #24
	asr	r1, r1, #24
	add	r0, r0, r1
	add	r0, r0, #0x7
	str	r0, [r3]
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L14:
	.align	2, 0
.L13:
	.word	gUnknown_082F0740
	.word	gUnknown_082F0760
.Lfe3:
	.size	 sub_8019990,.Lfe3-sub_8019990
	.align	2, 0
	.type	 sub_80199E0,function
	.thumb_func
sub_80199E0:
	push	{r4, r5, r6, r7, lr}
	mov	ip, r3
	ldr	r7, .L21
	lsl	r5, r0, #0x2
	add	r0, r5, r7
	mov	r4, #0x0
	ldrsh	r3, [r0, r4]
	ldr	r6, .L21+0x4
	lsl	r4, r1, #0x1
	add	r0, r4, r6
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #24
	asr	r0, r0, #24
	add	r3, r3, r0
	add	r3, r3, #0x7
	cmp	r3, r2
	bne	.L18	@cond_branch
	add	r0, r7, #0x2
	add	r0, r5, r0
	mov	r2, #0x0
	ldrsh	r1, [r0, r2]
	add	r0, r6, #0x1
	add	r0, r4, r0
	ldrb	r0, [r0, #0]
	lsl	r0, r0, #24
	asr	r0, r0, #24
	add	r1, r1, r0
	add	r1, r1, #0x7
	cmp	r1, ip
	bne	.L18	@cond_branch
	mov	r0, #0x1
	b	.L20
.L22:
	.align	2, 0
.L21:
	.word	gUnknown_082F0740
	.word	gUnknown_082F0760
.L18:
	mov	r0, #0x0
.L20:
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.Lfe4:
	.size	 sub_80199E0,.Lfe4-sub_80199E0
	.align	2, 0
	.type	 IsUnionRoomPlayerHidden,function
	.thumb_func
IsUnionRoomPlayerHidden:
	push	{lr}
	ldr	r1, .L24
	add	r0, r0, r1
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	bl	FlagGet
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	pop	{r1}
	bx	r1
.L25:
	.align	2, 0
.L24:
	.word	0x2bf
.Lfe5:
	.size	 IsUnionRoomPlayerHidden,.Lfe5-IsUnionRoomPlayerHidden
	.align	2, 0
	.type	 HideUnionRoomPlayer,function
	.thumb_func
HideUnionRoomPlayer:
	push	{lr}
	ldr	r1, .L27
	add	r0, r0, r1
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	bl	FlagSet
	pop	{r0}
	bx	r0
.L28:
	.align	2, 0
.L27:
	.word	0x2bf
.Lfe6:
	.size	 HideUnionRoomPlayer,.Lfe6-HideUnionRoomPlayer
	.align	2, 0
	.type	 ShowUnionRoomPlayer,function
	.thumb_func
ShowUnionRoomPlayer:
	push	{lr}
	ldr	r1, .L30
	add	r0, r0, r1
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	bl	FlagClear
	pop	{r0}
	bx	r0
.L31:
	.align	2, 0
.L30:
	.word	0x2bf
.Lfe7:
	.size	 ShowUnionRoomPlayer,.Lfe7-ShowUnionRoomPlayer
	.align	2, 0
	.type	 SetUnionRoomPlayerGfx,function
	.thumb_func
SetUnionRoomPlayerGfx:
	push	{lr}
	ldr	r2, .L33
	add	r0, r0, r2
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	lsl	r1, r1, #0x10
	lsr	r1, r1, #0x10
	bl	VarSet
	pop	{r0}
	bx	r0
.L34:
	.align	2, 0
.L33:
	.word	0x4010
.Lfe8:
	.size	 SetUnionRoomPlayerGfx,.Lfe8-SetUnionRoomPlayerGfx
	.align	2, 0
	.type	 CreateUnionRoomPlayerObjectEvent,function
	.thumb_func
CreateUnionRoomPlayerObjectEvent:
	push	{lr}
	ldr	r1, .L36
	add	r0, r0, r1
	ldrb	r0, [r0]
	ldr	r1, .L36+0x4
	ldr	r2, [r1]
	ldrb	r1, [r2, #0x5]
	ldrb	r2, [r2, #0x4]
	bl	TrySpawnObjectEvent
	pop	{r0}
	bx	r0
.L37:
	.align	2, 0
.L36:
	.word	gUnknown_082F0774
	.word	gSaveBlock1Ptr
.Lfe9:
	.size	 CreateUnionRoomPlayerObjectEvent,.Lfe9-CreateUnionRoomPlayerObjectEvent
	.align	2, 0
	.type	 RemoveUnionRoomPlayerObjectEvent,function
	.thumb_func
RemoveUnionRoomPlayerObjectEvent:
	push	{lr}
	ldr	r1, .L39
	add	r0, r0, r1
	ldrb	r0, [r0]
	ldr	r1, .L39+0x4
	ldr	r2, [r1]
	ldrb	r1, [r2, #0x5]
	ldrb	r2, [r2, #0x4]
	bl	RemoveObjectEventByLocalIdAndMap
	pop	{r0}
	bx	r0
.L40:
	.align	2, 0
.L39:
	.word	gUnknown_082F0774
	.word	gSaveBlock1Ptr
.Lfe10:
	.size	 RemoveUnionRoomPlayerObjectEvent,.Lfe10-RemoveUnionRoomPlayerObjectEvent
	.align	2, 0
	.type	 SetUnionRoomPlayerEnterExitMovement,function
	.thumb_func
SetUnionRoomPlayerEnterExitMovement:
	push	{r4, r5, lr}
	add	sp, sp, #-0x4
	add	r5, r1, #0
	ldr	r1, .L46
	add	r0, r0, r1
	ldrb	r0, [r0]
	ldr	r1, .L46+0x4
	ldr	r2, [r1]
	ldrb	r1, [r2, #0x5]
	ldrb	r2, [r2, #0x4]
	mov	r3, sp
	bl	TryGetObjectEventIdByLocalIdAndMap
	lsl	r0, r0, #0x18
	cmp	r0, #0
	bne	.L44	@cond_branch
	mov	r0, sp
	ldrb	r1, [r0]
	lsl	r0, r1, #0x3
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	ldr	r1, .L46+0x8
	add	r4, r0, r1
	add	r0, r4, #0
	bl	ObjectEventIsMovementOverridden
	lsl	r0, r0, #0x18
	cmp	r0, #0
	bne	.L44	@cond_branch
	ldrb	r1, [r5]
	add	r0, r4, #0
	bl	ObjectEventSetHeldMovement
	lsl	r0, r0, #0x18
	cmp	r0, #0
	bne	.L44	@cond_branch
	mov	r0, #0x1
	b	.L45
.L47:
	.align	2, 0
.L46:
	.word	gUnknown_082F0774
	.word	gSaveBlock1Ptr
	.word	gObjectEvents
.L44:
	mov	r0, #0x0
.L45:
	add	sp, sp, #0x4
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.Lfe11:
	.size	 SetUnionRoomPlayerEnterExitMovement,.Lfe11-SetUnionRoomPlayerEnterExitMovement
	.align	2, 0
	.type	 sub_8019B3C,function
	.thumb_func
sub_8019B3C:
	push	{r4, lr}
	add	sp, sp, #-0x4
	ldr	r1, .L54
	add	r0, r0, r1
	ldrb	r0, [r0]
	ldr	r1, .L54+0x4
	ldr	r2, [r1]
	ldrb	r1, [r2, #0x5]
	ldrb	r2, [r2, #0x4]
	mov	r3, sp
	bl	TryGetObjectEventIdByLocalIdAndMap
	lsl	r0, r0, #0x18
	cmp	r0, #0
	bne	.L52	@cond_branch
	mov	r0, sp
	ldrb	r1, [r0]
	lsl	r0, r1, #0x3
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	ldr	r1, .L54+0x8
	add	r4, r0, r1
	add	r0, r4, #0
	bl	ObjectEventClearHeldMovementIfFinished
	lsl	r0, r0, #0x18
	cmp	r0, #0
	bne	.L50	@cond_branch
	mov	r0, #0x0
	b	.L53
.L55:
	.align	2, 0
.L54:
	.word	gUnknown_082F0774
	.word	gSaveBlock1Ptr
	.word	gObjectEvents
.L50:
	bl	ScriptContext2_IsEnabled
	lsl	r0, r0, #0x18
	cmp	r0, #0
	bne	.L51	@cond_branch
	add	r0, r4, #0
	bl	UnfreezeObjectEvent
	b	.L52
.L51:
	add	r0, r4, #0
	bl	FreezeObjectEvent
.L52:
	mov	r0, #0x1
.L53:
	add	sp, sp, #0x4
	pop	{r4}
	pop	{r1}
	bx	r1
.Lfe12:
	.size	 sub_8019B3C,.Lfe12-sub_8019B3C
	.align	2, 0
	.globl	sub_8019BA8
	.type	 sub_8019BA8,function
	.thumb_func
sub_8019BA8:
	push	{lr}
	ldr	r2, .L62
	mov	r1, #0x0
	str	r1, [r2]
	ldr	r1, .L62+0x4
	str	r0, [r1]
	mov	r1, #0x0
	mov	r2, #0x7
.L60:
	strb	r1, [r0]
	strb	r1, [r0, #0x1]
	strb	r1, [r0, #0x2]
	strb	r1, [r0, #0x3]
	add	r0, r0, #0x4
	sub	r2, r2, #0x1
	cmp	r2, #0
	bge	.L60	@cond_branch
	bl	sub_8019DF4
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	pop	{r1}
	bx	r1
.L63:
	.align	2, 0
.L62:
	.word	gUnknown_02022C68
	.word	gUnknown_02022C64
.Lfe13:
	.size	 sub_8019BA8,.Lfe13-sub_8019BA8
	.align	2, 0
	.type	 sub_8019BDC,function
	.thumb_func
sub_8019BDC:
	push	{r4, r5, lr}
	add	r5, r0, #0
	add	r4, r1, #0
	mov	r0, #0x0
	ldrsb	r0, [r5, r0]
	cmp	r0, #0
	beq	.L66	@cond_branch
	cmp	r0, #0x1
	beq	.L68	@cond_branch
	b	.L65
.L66:
	ldr	r1, .L73
	add	r0, r4, #0
	bl	SetUnionRoomPlayerEnterExitMovement
	cmp	r0, #0x1
	bne	.L65	@cond_branch
	add	r0, r4, #0
	bl	HideUnionRoomPlayer
	ldrb	r0, [r5]
	add	r0, r0, #0x1
	strb	r0, [r5]
	b	.L65
.L74:
	.align	2, 0
.L73:
	.word	gUnknown_082F078C
.L68:
	add	r0, r4, #0
	bl	sub_8019B3C
	cmp	r0, #0
	beq	.L65	@cond_branch
	add	r0, r4, #0
	bl	RemoveUnionRoomPlayerObjectEvent
	add	r0, r4, #0
	bl	HideUnionRoomPlayer
	mov	r0, #0x0
	strb	r0, [r5]
	mov	r0, #0x1
	b	.L72
.L65:
	mov	r0, #0x0
.L72:
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.Lfe14:
	.size	 sub_8019BDC,.Lfe14-sub_8019BDC
	.align	2, 0
	.type	 sub_8019C38,function
	.thumb_func
sub_8019C38:
	push	{r4, r5, r6, r7, lr}
	add	sp, sp, #-0x4
	add	r6, r0, #0
	add	r5, r1, #0
	add	r7, r2, #0
	mov	r0, #0x0
	ldrsb	r0, [r6, r0]
	cmp	r0, #0x2
	beq	.L83	@cond_branch
	cmp	r0, #0x2
	bgt	.L87	@cond_branch
	cmp	r0, #0
	beq	.L77	@cond_branch
	b	.L76
.L87:
	cmp	r0, #0x3
	beq	.L81	@cond_branch
	b	.L76
.L77:
	bl	is_walking_or_running
	cmp	r0, #0
	beq	.L76	@cond_branch
	mov	r4, sp
	add	r4, r4, #0x2
	mov	r0, sp
	add	r1, r4, #0
	bl	PlayerGetDestCoords
	mov	r0, sp
	mov	r1, #0x0
	ldrsh	r2, [r0, r1]
	mov	r0, #0x0
	ldrsh	r3, [r4, r0]
	add	r0, r5, #0
	mov	r1, #0x0
	bl	sub_80199E0
	cmp	r0, #0x1
	beq	.L76	@cond_branch
	mov	r0, sp
	add	r1, r4, #0
	bl	player_get_pos_including_state_based_drift
	mov	r0, sp
	mov	r1, #0x0
	ldrsh	r2, [r0, r1]
	mov	r0, #0x0
	ldrsh	r3, [r4, r0]
	add	r0, r5, #0
	mov	r1, #0x0
	bl	sub_80199E0
	cmp	r0, #0x1
	beq	.L76	@cond_branch
	ldrb	r1, [r7, #0x1]
	add	r0, r5, #0
	bl	SetUnionRoomPlayerGfx
	add	r0, r5, #0
	bl	CreateUnionRoomPlayerObjectEvent
	add	r0, r5, #0
	bl	ShowUnionRoomPlayer
	ldrb	r0, [r6]
	add	r0, r0, #0x1
	strb	r0, [r6]
.L81:
	ldr	r1, .L89
	add	r0, r5, #0
	bl	SetUnionRoomPlayerEnterExitMovement
	cmp	r0, #0x1
	bne	.L76	@cond_branch
	ldrb	r0, [r6]
	add	r0, r0, #0x1
	strb	r0, [r6]
	b	.L76
.L90:
	.align	2, 0
.L89:
	.word	gUnknown_082F078E
.L83:
	add	r0, r5, #0
	bl	sub_8019B3C
	cmp	r0, #0
	beq	.L76	@cond_branch
	mov	r0, #0x0
	strb	r0, [r6]
	mov	r0, #0x1
	b	.L88
.L76:
	mov	r0, #0x0
.L88:
	add	sp, sp, #0x4
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.Lfe15:
	.size	 sub_8019C38,.Lfe15-sub_8019C38
	.align	2, 0
	.type	 sub_8019CF0,function
	.thumb_func
sub_8019CF0:
	push	{r4, lr}
	ldr	r3, .L95
	lsl	r0, r0, #0x2
	ldr	r4, [r3]
	add	r4, r4, r0
	mov	r0, #0x1
	strb	r0, [r4, #0x3]
	add	r0, r1, #0
	add	r1, r2, #0
	bl	sub_8019978
	strb	r0, [r4, #0x1]
	ldrb	r0, [r4]
	cmp	r0, #0
	beq	.L92	@cond_branch
	mov	r0, #0x0
	b	.L94
.L96:
	.align	2, 0
.L95:
	.word	gUnknown_02022C64
.L92:
	mov	r0, #0x1
.L94:
	pop	{r4}
	pop	{r1}
	bx	r1
.Lfe16:
	.size	 sub_8019CF0,.Lfe16-sub_8019CF0
	.align	2, 0
	.type	 sub_8019D20,function
	.thumb_func
sub_8019D20:
	push	{lr}
	ldr	r1, .L101
	lsl	r0, r0, #0x2
	ldr	r1, [r1]
	add	r1, r1, r0
	mov	r0, #0x2
	strb	r0, [r1, #0x3]
	ldrb	r0, [r1]
	cmp	r0, #0x1
	beq	.L98	@cond_branch
	mov	r0, #0x0
	b	.L100
.L102:
	.align	2, 0
.L101:
	.word	gUnknown_02022C64
.L98:
	mov	r0, #0x1
.L100:
	pop	{r1}
	bx	r1
.Lfe17:
	.size	 sub_8019D20,.Lfe17-sub_8019D20
	.align	2, 0
	.type	 sub_8019D44,function
	.thumb_func
sub_8019D44:
	push	{r4, r5, lr}
	add	r5, r0, #0
	add	r4, r1, #0
	ldrb	r1, [r4]
	cmp	r1, #0x1
	beq	.L112	@cond_branch
	cmp	r1, #0x1
	bgt	.L119	@cond_branch
	cmp	r1, #0
	beq	.L105	@cond_branch
	b	.L104
.L119:
	cmp	r1, #0x2
	beq	.L108	@cond_branch
	cmp	r1, #0x3
	beq	.L115	@cond_branch
	b	.L104
.L105:
	ldrb	r0, [r4, #0x3]
	cmp	r0, #0x1
	bne	.L104	@cond_branch
	mov	r0, #0x2
	strb	r0, [r4]
	strb	r1, [r4, #0x2]
.L108:
	add	r0, r5, #0
	mov	r1, #0x0
	bl	sub_8019F8C
	add	r1, r0, #0
	cmp	r1, #0
	bne	.L109	@cond_branch
	ldrb	r0, [r4, #0x3]
	cmp	r0, #0x2
	bne	.L109	@cond_branch
	strb	r1, [r4]
	strb	r1, [r4, #0x2]
	add	r0, r5, #0
	bl	RemoveUnionRoomPlayerObjectEvent
	add	r0, r5, #0
	bl	HideUnionRoomPlayer
	b	.L104
.L109:
	add	r0, r4, #0x2
	add	r1, r5, #0
	add	r2, r4, #0
	bl	sub_8019C38
	cmp	r0, #0x1
	bne	.L104	@cond_branch
	b	.L120
.L112:
	ldrb	r0, [r4, #0x3]
	cmp	r0, #0x2
	bne	.L104	@cond_branch
	mov	r1, #0x0
	mov	r0, #0x3
	strb	r0, [r4]
	strb	r1, [r4, #0x2]
.L115:
	add	r0, r4, #0x2
	add	r1, r5, #0
	add	r2, r4, #0
	bl	sub_8019BDC
	cmp	r0, #0x1
	bne	.L104	@cond_branch
	mov	r0, #0x0
.L120:
	strb	r0, [r4]
.L104:
	mov	r0, #0x0
	strb	r0, [r4, #0x3]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.Lfe18:
	.size	 sub_8019D44,.Lfe18-sub_8019D44
	.align	2, 0
	.type	 sub_8019DD0,function
	.thumb_func
sub_8019DD0:
	push	{r4, r5, lr}
	mov	r4, #0x0
	ldr	r5, .L127
.L125:
	lsl	r0, r4, #0x2
	ldr	r1, [r5]
	add	r1, r1, r0
	add	r0, r4, #0
	bl	sub_8019D44
	add	r4, r4, #0x1
	cmp	r4, #0x7
	ble	.L125	@cond_branch
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L128:
	.align	2, 0
.L127:
	.word	gUnknown_02022C64
.Lfe19:
	.size	 sub_8019DD0,.Lfe19-sub_8019DD0
	.align	2, 0
	.type	 sub_8019DF4,function
	.thumb_func
sub_8019DF4:
	push	{r4, lr}
	ldr	r4, .L133
	add	r0, r4, #0
	bl	FuncIsActiveTask
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0x1
	beq	.L130	@cond_branch
	add	r0, r4, #0
	mov	r1, #0x5
	bl	CreateTask
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	b	.L132
.L134:
	.align	2, 0
.L133:
	.word	sub_8019DD0
.L130:
	mov	r0, #0x10
.L132:
	pop	{r4}
	pop	{r1}
	bx	r1
.Lfe20:
	.size	 sub_8019DF4,.Lfe20-sub_8019DF4
	.align	2, 0
	.type	 sub_8019E20,function
	.thumb_func
sub_8019E20:
	push	{lr}
	ldr	r0, .L137
	bl	FindTaskIdByFunc
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0xf
	bhi	.L136	@cond_branch
	bl	DestroyTask
.L136:
	pop	{r0}
	bx	r0
.L138:
	.align	2, 0
.L137:
	.word	sub_8019DD0
.Lfe21:
	.size	 sub_8019E20,.Lfe21-sub_8019E20
	.align	2, 0
	.globl	sub_8019E3C
	.type	 sub_8019E3C,function
	.thumb_func
sub_8019E3C:
	push	{r4, lr}
	mov	r4, #0x0
.L143:
	add	r0, r4, #0
	bl	IsUnionRoomPlayerHidden
	cmp	r0, #0
	bne	.L142	@cond_branch
	add	r0, r4, #0
	bl	RemoveUnionRoomPlayerObjectEvent
	add	r0, r4, #0
	bl	HideUnionRoomPlayer
.L142:
	add	r4, r4, #0x1
	cmp	r4, #0x7
	ble	.L143	@cond_branch
	ldr	r1, .L146
	mov	r0, #0x0
	str	r0, [r1]
	bl	sub_8019E20
	pop	{r4}
	pop	{r0}
	bx	r0
.L147:
	.align	2, 0
.L146:
	.word	gUnknown_02022C64
.Lfe22:
	.size	 sub_8019E3C,.Lfe22-sub_8019E3C
	.align	2, 0
	.globl	sub_8019E70
	.type	 sub_8019E70,function
	.thumb_func
sub_8019E70:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	add	sp, sp, #-0x10
	str	r0, [sp, #0x8]
	mov	r9, r1
	mov	r7, #0x0
	mov	r0, r9
	lsl	r0, r0, #0x2
	mov	r8, r0
	ldr	r0, .L154
	mov	r2, r8
	add	r1, r2, r0
	ldrh	r1, [r1]
	mov	r2, sp
	strh	r1, [r2, #0xc]
	add	r0, r0, #0x2
	add	r0, r0, r8
	ldrh	r0, [r0]
	mov	sl, r0
	ldr	r6, .L154+0x4
.L152:
	mov	r5, r8
	add	r5, r5, r9
	add	r5, r5, r7
	add	r4, r5, #0
	sub	r4, r4, #0x38
	lsl	r4, r4, #0x18
	lsr	r4, r4, #0x18
	mov	r2, #0x0
	ldrsb	r2, [r6, r2]
	mov	r0, sp
	ldrh	r0, [r0, #0xc]
	add	r2, r0, r2
	lsl	r2, r2, #0x10
	asr	r2, r2, #0x10
	mov	r3, #0x1
	ldrsb	r3, [r6, r3]
	add	r3, r3, sl
	lsl	r3, r3, #0x10
	asr	r3, r3, #0x10
	mov	r0, #0x3
	str	r0, [sp]
	mov	r0, #0x1
	str	r0, [sp, #0x4]
	mov	r0, #0x41
	add	r1, r4, #0
	bl	sprite_new
	ldr	r1, [sp, #0x8]
	add	r5, r1, r5
	strb	r0, [r5]
	add	r0, r4, #0
	mov	r1, #0x1
	bl	sub_8097C44
	add	r6, r6, #0x2
	add	r7, r7, #0x1
	cmp	r7, #0x4
	ble	.L152	@cond_branch
	add	sp, sp, #0x10
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L155:
	.align	2, 0
.L154:
	.word	gUnknown_082F0740
	.word	gUnknown_082F0760
.Lfe23:
	.size	 sub_8019E70,.Lfe23-sub_8019E70
	.align	2, 0
	.globl	sub_8019F04
	.type	 sub_8019F04,function
	.thumb_func
sub_8019F04:
	push	{r4, r5, r6, lr}
	add	r5, r0, #0
	mov	r4, #0x0
	ldr	r6, .L162
.L160:
	add	r0, r5, r4
	ldrb	r1, [r0]
	lsl	r0, r1, #0x4
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	add	r0, r0, r6
	bl	DestroySprite
	add	r4, r4, #0x1
	cmp	r4, #0x27
	ble	.L160	@cond_branch
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L163:
	.align	2, 0
.L162:
	.word	gSprites
.Lfe24:
	.size	 sub_8019F04,.Lfe24-sub_8019F04
	.align	2, 0
	.globl	sub_8019F2C
	.type	 sub_8019F2C,function
	.thumb_func
sub_8019F2C:
	push	{r4, r5, r6, r7, lr}
	add	sp, sp, #-0x8
	mov	r5, #0x0
	add	r7, sp, #0x4
.L168:
	mov	r4, #0x0
	add	r6, r5, #0x1
.L172:
	add	r0, r5, #0
	add	r1, r4, #0
	mov	r2, sp
	add	r3, r7, #0
	bl	sub_8019990
	ldr	r0, [sp]
	ldr	r1, [sp, #0x4]
	mov	r2, #0x0
	bl	sub_8088B94
	add	r4, r4, #0x1
	cmp	r4, #0x4
	ble	.L172	@cond_branch
	add	r5, r6, #0
	cmp	r5, #0x7
	ble	.L168	@cond_branch
	add	sp, sp, #0x8
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.Lfe25:
	.size	 sub_8019F2C,.Lfe25-sub_8019F2C
	.align	2, 0
	.type	 sub_8019F64,function
	.thumb_func
sub_8019F64:
	push	{lr}
	add	r1, r0, #0
	cmp	r1, #0
	beq	.L176	@cond_branch
	ldr	r0, .L181
	add	r0, r1, r0
	ldrb	r0, [r0]
	b	.L180
.L182:
	.align	2, 0
.L181:
	.word	gUnknown_082F076F
.L176:
	ldrb	r1, [r2, #0xa]
	mov	r0, #0x7f
	and	r0, r0, r1
	cmp	r0, #0x45
	beq	.L178	@cond_branch
	mov	r0, #0x4
	b	.L180
.L178:
	mov	r0, #0x1
.L180:
	pop	{r1}
	bx	r1
.Lfe26:
	.size	 sub_8019F64,.Lfe26-sub_8019F64
	.align	2, 0
	.type	 sub_8019F8C,function
	.thumb_func
sub_8019F8C:
	push	{lr}
	add	r2, r0, #0
	lsl	r0, r2, #0x2
	add	r0, r0, r2
	add	r0, r0, r1
	sub	r0, r0, #0x38
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	bl	sub_8097C8C
	pop	{r1}
	bx	r1
.Lfe27:
	.size	 sub_8019F8C,.Lfe27-sub_8019F8C
	.align	2, 0
	.type	 sub_8019FA4,function
	.thumb_func
sub_8019FA4:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	add	sp, sp, #-0x8
	add	r5, r0, #0
	add	r6, r1, #0
	mov	r9, r3
	lsl	r2, r2, #0x18
	lsr	r2, r2, #0x18
	mov	r8, r2
	lsl	r0, r5, #0x2
	add	r0, r0, r5
	add	r7, r0, r6
	add	r0, r5, #0
	bl	sub_8019F8C
	cmp	r0, #0x1
	bne	.L185	@cond_branch
	add	r4, r7, #0
	sub	r4, r4, #0x38
	lsl	r4, r4, #0x18
	lsr	r4, r4, #0x18
	add	r0, r4, #0
	mov	r1, #0x0
	bl	sub_8097C44
	add	r0, r4, #0
	mov	r1, #0x1
	bl	sub_8097CC4
.L185:
	add	r0, r7, #0
	sub	r0, r0, #0x38
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	mov	r1, r8
	bl	sub_8097BB4
	add	r0, r6, #0
	add	r1, r5, #0
	mov	r2, r9
	bl	sub_8019F64
	add	r2, r0, #0
	lsl	r2, r2, #0x18
	lsr	r2, r2, #0x18
	add	r0, r6, #0
	add	r1, r5, #0
	bl	sub_801A3B0
	add	r3, sp, #0x4
	add	r0, r5, #0
	add	r1, r6, #0
	mov	r2, sp
	bl	sub_8019990
	ldr	r0, [sp]
	ldr	r1, [sp, #0x4]
	mov	r2, #0x1
	bl	sub_8088B94
	add	sp, sp, #0x8
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.Lfe28:
	.size	 sub_8019FA4,.Lfe28-sub_8019FA4
	.align	2, 0
	.type	 sub_801A02C,function
	.thumb_func
sub_801A02C:
	push	{r4, r5, lr}
	add	sp, sp, #-0x8
	add	r4, r0, #0
	add	r5, r1, #0
	lsl	r0, r4, #0x2
	add	r0, r0, r4
	add	r0, r0, r5
	sub	r0, r0, #0x38
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	mov	r1, #0x2
	bl	sub_8097CC4
	add	r3, sp, #0x4
	add	r0, r4, #0
	add	r1, r5, #0
	mov	r2, sp
	bl	sub_8019990
	ldr	r0, [sp]
	ldr	r1, [sp, #0x4]
	mov	r2, #0x0
	bl	sub_8088B94
	add	sp, sp, #0x8
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.Lfe29:
	.size	 sub_801A02C,.Lfe29-sub_801A02C
	.align	2, 0
	.type	 sub_801A064,function
	.thumb_func
sub_801A064:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	add	sp, sp, #-0x8
	add	r7, r0, #0
	mov	r8, r1
	mov	r6, sp
	add	r6, r6, #0x2
	mov	r0, sp
	add	r1, r6, #0
	bl	PlayerGetDestCoords
	add	r4, sp, #0x4
	mov	r5, sp
	add	r5, r5, #0x6
	add	r0, r4, #0
	add	r1, r5, #0
	bl	player_get_pos_including_state_based_drift
	lsl	r0, r7, #0x2
	add	r0, r0, r7
	sub	r0, r0, #0x38
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	bl	sub_8097C8C
	mov	sl, r6
	mov	r9, r4
	add	r6, r5, #0
	cmp	r0, #0x1
	bne	.L188	@cond_branch
	mov	r0, sp
	mov	r1, #0x0
	ldrsh	r2, [r0, r1]
	mov	r0, sl
	mov	r1, #0x0
	ldrsh	r3, [r0, r1]
	add	r0, r7, #0
	mov	r1, #0x0
	bl	sub_80199E0
	cmp	r0, #0x1
	beq	.L187	@cond_branch
	mov	r0, #0x0
	ldrsh	r2, [r4, r0]
	mov	r1, #0x0
	ldrsh	r3, [r6, r1]
	add	r0, r7, #0
	mov	r1, #0x0
	bl	sub_80199E0
	cmp	r0, #0x1
	beq	.L187	@cond_branch
	mov	r2, r8
	ldrb	r0, [r2, #0xb]
	lsl	r0, r0, #0x1f
	lsr	r0, r0, #0x1f
	ldrb	r1, [r2, #0x2]
	bl	sub_8019978
	add	r2, r0, #0
	lsl	r2, r2, #0x18
	lsr	r2, r2, #0x18
	add	r0, r7, #0
	mov	r1, #0x0
	mov	r3, r8
	bl	sub_8019FA4
.L188:
	mov	r5, #0x1
	mov	r4, r8
	add	r4, r4, #0x4
.L194:
	ldrb	r0, [r4]
	cmp	r0, #0
	bne	.L195	@cond_branch
	add	r0, r7, #0
	add	r1, r5, #0
	bl	sub_801A02C
	b	.L193
.L195:
	mov	r0, sp
	mov	r1, #0x0
	ldrsh	r2, [r0, r1]
	mov	r0, sl
	mov	r1, #0x0
	ldrsh	r3, [r0, r1]
	add	r0, r7, #0
	add	r1, r5, #0
	bl	sub_80199E0
	cmp	r0, #0
	bne	.L193	@cond_branch
	mov	r0, r9
	mov	r1, #0x0
	ldrsh	r2, [r0, r1]
	mov	r0, #0x0
	ldrsh	r3, [r6, r0]
	add	r0, r7, #0
	add	r1, r5, #0
	bl	sub_80199E0
	cmp	r0, #0
	bne	.L193	@cond_branch
	ldrb	r2, [r4]
	lsr	r0, r2, #0x3
	mov	r1, #0x1
	and	r0, r0, r1
	mov	r1, #0x7
	and	r1, r1, r2
	bl	sub_8019978
	add	r2, r0, #0
	lsl	r2, r2, #0x18
	lsr	r2, r2, #0x18
	add	r0, r7, #0
	add	r1, r5, #0
	mov	r3, r8
	bl	sub_8019FA4
.L193:
	add	r4, r4, #0x1
	add	r5, r5, #0x1
	cmp	r5, #0x4
	ble	.L194	@cond_branch
.L187:
	add	sp, sp, #0x8
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.Lfe30:
	.size	 sub_801A064,.Lfe30-sub_801A064
	.align	2, 0
	.type	 sub_801A16C,function
	.thumb_func
sub_801A16C:
	push	{r4, r5, lr}
	add	r5, r0, #0
	add	r4, r1, #0
	ldrb	r0, [r4, #0xa]
	lsl	r0, r0, #0x19
	lsr	r0, r0, #0x19
	sub	r0, r0, #0x40
	cmp	r0, #0x14
	bhi	.L200	@cond_branch
	lsl	r0, r0, #0x2
	ldr	r1, .L217
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.L218:
	.align	2, 0
.L217:
	.word	.L215
	.align	2, 0
	.align	2, 0
.L215:
	.word	.L202
	.word	.L214
	.word	.L200
	.word	.L200
	.word	.L214
	.word	.L214
	.word	.L200
	.word	.L200
	.word	.L214
	.word	.L200
	.word	.L200
	.word	.L200
	.word	.L200
	.word	.L200
	.word	.L200
	.word	.L200
	.word	.L200
	.word	.L214
	.word	.L214
	.word	.L214
	.word	.L202
.L202:
	ldrb	r1, [r4, #0xb]
	lsl	r1, r1, #0x1f
	lsr	r1, r1, #0x1f
	ldrb	r2, [r4, #0x2]
	add	r0, r5, #0
	bl	sub_8019CF0
	mov	r4, #0x0
.L206:
	add	r0, r5, #0
	add	r1, r4, #0
	bl	sub_801A02C
	add	r4, r4, #0x1
	cmp	r4, #0x4
	bls	.L206	@cond_branch
	b	.L200
.L214:
	add	r0, r5, #0
	bl	sub_8019D20
	add	r0, r5, #0
	add	r1, r4, #0
	bl	sub_801A064
.L200:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.Lfe31:
	.size	 sub_801A16C,.Lfe31-sub_801A16C
	.align	2, 0
	.type	 sub_801A214,function
	.thumb_func
sub_801A214:
	push	{r4, r5, lr}
	add	r5, r0, #0
	bl	sub_8019D20
	mov	r4, #0x0
.L223:
	add	r0, r5, #0
	add	r1, r4, #0
	bl	sub_801A02C
	add	r4, r4, #0x1
	cmp	r4, #0x4
	ble	.L223	@cond_branch
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.Lfe32:
	.size	 sub_801A214,.Lfe32-sub_801A214
	.align	2, 0
	.type	 sub_801A234,function
	.thumb_func
sub_801A234:
	push	{r4, r5, lr}
	ldr	r2, .L234
	mov	r1, #0x0
	str	r1, [r2]
	mov	r5, #0x0
	ldr	r4, [r0]
.L229:
	ldrb	r0, [r4, #0x1a]
	mov	r1, #0x3
	and	r1, r1, r0
	cmp	r1, #0x1
	bne	.L230	@cond_branch
	add	r0, r5, #0
	add	r1, r4, #0
	bl	sub_801A16C
	b	.L228
.L235:
	.align	2, 0
.L234:
	.word	gUnknown_02022C68
.L230:
	cmp	r1, #0x2
	bne	.L228	@cond_branch
	add	r0, r5, #0
	add	r1, r4, #0
	bl	sub_801A214
.L228:
	add	r4, r4, #0x20
	add	r5, r5, #0x1
	cmp	r5, #0x7
	ble	.L229	@cond_branch
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.Lfe33:
	.size	 sub_801A234,.Lfe33-sub_801A234
	.align	2, 0
	.globl	sub_801A274
	.type	 sub_801A274,function
	.thumb_func
sub_801A274:
	ldr	r1, .L237
	mov	r0, #0x96
	lsl	r0, r0, #0x1
	str	r0, [r1]
	bx	lr
.L238:
	.align	2, 0
.L237:
	.word	gUnknown_02022C68
.Lfe34:
	.size	 sub_801A274,.Lfe34-sub_801A274
	.align	2, 0
	.globl	sub_801A284
	.type	 sub_801A284,function
	.thumb_func
sub_801A284:
	push	{lr}
	add	r2, r0, #0
	ldr	r0, .L241
	ldr	r1, [r0]
	add	r1, r1, #0x1
	str	r1, [r0]
	mov	r0, #0x96
	lsl	r0, r0, #0x1
	cmp	r1, r0
	bls	.L240	@cond_branch
	add	r0, r2, #0
	bl	sub_801A234
.L240:
	pop	{r0}
	bx	r0
.L242:
	.align	2, 0
.L241:
	.word	gUnknown_02022C68
.Lfe35:
	.size	 sub_801A284,.Lfe35-sub_801A284
	.align	2, 0
	.globl	sub_801A2A8
	.type	 sub_801A2A8,function
	.thumb_func
sub_801A2A8:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	add	sp, sp, #-0x18
	add	r5, r0, #0
	str	r1, [sp, #0x4]
	str	r2, [sp, #0x8]
	bl	is_walking_or_running
	cmp	r0, #0
	bne	.L244	@cond_branch
	b	.L262
.L261:
	ldr	r4, .L263
	bl	GetPlayerFacingDirection
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	add	r0, r0, r4
	ldrb	r2, [r0]
	add	r0, r6, #0
	ldr	r1, [sp, #0xc]
	bl	sub_801A3B0
	ldr	r0, [sp, #0x4]
	strh	r6, [r0]
	mov	r1, sp
	ldrh	r2, [r1, #0xc]
	ldr	r1, [sp, #0x8]
	strh	r2, [r1]
	mov	r0, #0x1
	b	.L260
.L264:
	.align	2, 0
.L263:
	.word	gUnknown_082F076A
.L244:
	mov	r4, sp
	add	r4, r4, #0x2
	mov	r0, sp
	add	r1, r4, #0
	bl	GetXYCoordsOneStepInFrontOfPlayer
	mov	r0, #0x0
	str	r0, [sp, #0xc]
	ldr	r0, .L265
	add	r7, r5, #0
	mov	r1, #0x0
	mov	sl, r1
	add	r2, r0, #0x2
	str	r2, [sp, #0x10]
	str	r0, [sp, #0x14]
.L248:
	mov	r6, #0x0
	ldr	r4, [sp, #0x14]
	mov	r0, #0x0
	ldrsh	r4, [r4, r0]
	mov	r9, r4
	ldr	r1, [sp, #0x10]
	mov	r8, r1
	ldr	r5, .L265+0x4
.L252:
	mov	r2, sl
	add	r3, r2, r6
	mov	r0, sp
	mov	r4, #0x0
	ldrsh	r1, [r0, r4]
	mov	r0, #0x0
	ldrsb	r0, [r5, r0]
	add	r0, r0, r9
	add	r0, r0, #0x7
	cmp	r1, r0
	bne	.L251	@cond_branch
	mov	r1, sp
	mov	r2, #0x2
	ldrsh	r0, [r1, r2]
	mov	r4, r8
	mov	r2, #0x0
	ldrsh	r1, [r4, r2]
	mov	r2, #0x1
	ldrsb	r2, [r5, r2]
	add	r1, r1, r2
	add	r1, r1, #0x7
	cmp	r0, r1
	bne	.L251	@cond_branch
	add	r0, r3, #0
	sub	r0, r0, #0x38
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x18
	add	r0, r4, #0
	bl	sub_8097C8C
	cmp	r0, #0
	bne	.L251	@cond_branch
	add	r0, r4, #0
	bl	sub_8097D9C
	cmp	r0, #0
	bne	.L251	@cond_branch
	ldrb	r1, [r7, #0x1a]
	mov	r0, #0x3
	and	r0, r0, r1
	cmp	r0, #0x1
	beq	.L261	@cond_branch
.L251:
	add	r5, r5, #0x2
	add	r6, r6, #0x1
	cmp	r6, #0x4
	ble	.L252	@cond_branch
	add	r7, r7, #0x20
	mov	r4, #0x5
	add	sl, sl, r4
	ldr	r0, [sp, #0x10]
	add	r0, r0, #0x4
	str	r0, [sp, #0x10]
	ldr	r1, [sp, #0x14]
	add	r1, r1, #0x4
	str	r1, [sp, #0x14]
	ldr	r2, [sp, #0xc]
	add	r2, r2, #0x1
	str	r2, [sp, #0xc]
	cmp	r2, #0x7
	ble	.L248	@cond_branch
.L262:
	mov	r0, #0x0
.L260:
	add	sp, sp, #0x18
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L266:
	.align	2, 0
.L265:
	.word	gUnknown_082F0740
	.word	gUnknown_082F0760
.Lfe36:
	.size	 sub_801A2A8,.Lfe36-sub_801A2A8
	.align	2, 0
	.type	 sub_801A3B0,function
	.thumb_func
sub_801A3B0:
	push	{r4, lr}
	add	r4, r0, #0
	add	r3, r1, #0
	lsl	r1, r2, #0x18
	lsr	r1, r1, #0x18
	lsl	r0, r3, #0x2
	add	r0, r0, r3
	sub	r0, r0, #0x38
	add	r0, r0, r4
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	bl	sub_8097B78
	pop	{r4}
	pop	{r0}
	bx	r0
.Lfe37:
	.size	 sub_801A3B0,.Lfe37-sub_801A3B0
	.align	2, 0
	.globl	sub_801A3D0
	.type	 sub_801A3D0,function
	.thumb_func
sub_801A3D0:
	push	{r4, r5, lr}
	add	r5, r0, #0
	add	r4, r1, #0
	lsl	r3, r4, #0x5
	add	r3, r3, r2
	add	r2, r3, #0
	bl	sub_8019F64
	add	r2, r0, #0
	lsl	r2, r2, #0x18
	lsr	r2, r2, #0x18
	add	r0, r5, #0
	add	r1, r4, #0
	bl	sub_801A3B0
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.Lfe38:
	.size	 sub_801A3D0,.Lfe38-sub_801A3D0
.text
	.align	2, 0

