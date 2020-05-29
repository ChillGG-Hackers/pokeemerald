@ Generated by gcc 2.9-arm-000512 for Thumb/elf
	.code	16
.gcc2_compiled.:
	.section ewram_data,"aw"
	.align	2, 0
	.type	 sCreatingSpriteTemplate,object
	.size	 sCreatingSpriteTemplate,24
sCreatingSpriteTemplate:
	.space	24
	.align	2, 0
	.type	 sSpritePics,object
	.size	 sSpritePics,96
sSpritePics:
	.space	96
	.section .rodata
	.align	2, 0
	.type	 sDummyPicData,object
	.size	 sDummyPicData,12
sDummyPicData:
	.space	12
	.align	2, 0
	.type	 gUnknown_0860B064,object
	.size	 gUnknown_0860B064,8
gUnknown_0860B064:
	.space	1
	.byte	0x0
	.space	1
	.byte	0xc0
	.space	4
	.align	2, 0
	.type	 gUnknown_0860B06C,object
	.size	 gUnknown_0860B06C,8
gUnknown_0860B06C:
	.space	1
	.byte	0x1
	.space	1
	.byte	0xc0
	.space	4
.text
	.align	2, 0
	.type	 DummyPicSpriteCallback,function
	.thumb_func
DummyPicSpriteCallback:
	bx	lr
.Lfe1:
	.size	 DummyPicSpriteCallback,.Lfe1-DummyPicSpriteCallback
	.align	2, 0
	.globl	ResetAllPicSprites
	.type	 ResetAllPicSprites,function
	.thumb_func
ResetAllPicSprites:
	push	{r4, r5, r6, r7, lr}
	ldr	r4, .L9
	ldr	r3, .L9+0x4
	mov	r2, #0x7
.L7:
	add	r1, r3, #0
	add	r0, r4, #0
	ldmia	r0!, {r5, r6, r7}
	stmia	r1!, {r5, r6, r7}
	add	r3, r3, #0xc
	sub	r2, r2, #0x1
	cmp	r2, #0
	bge	.L7	@cond_branch
	mov	r0, #0x0
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L10:
	.align	2, 0
.L9:
	.word	sDummyPicData
	.word	sSpritePics
.Lfe2:
	.size	 ResetAllPicSprites,.Lfe2-ResetAllPicSprites
	.align	2, 0
	.type	 DecompressPic,function
	.thumb_func
DecompressPic:
	push	{r4, r5, r6, r7, lr}
	add	sp, sp, #-0x4
	add	r6, r1, #0
	add	r5, r3, #0
	ldr	r3, [sp, #0x18]
	ldr	r1, [sp, #0x1c]
	lsl	r0, r0, #0x10
	lsr	r4, r0, #0x10
	add	r7, r4, #0
	lsl	r2, r2, #0x18
	lsr	r2, r2, #0x18
	lsl	r3, r3, #0x18
	lsl	r1, r1, #0x18
	lsr	r1, r1, #0x18
	add	r0, r1, #0
	cmp	r3, #0
	bne	.L12	@cond_branch
	cmp	r2, #0
	beq	.L13	@cond_branch
	cmp	r1, #0
	bne	.L14	@cond_branch
	lsl	r0, r4, #0x3
	ldr	r1, .L24
	b	.L22
.L25:
	.align	2, 0
.L24:
	.word	gMonFrontPicTable
.L14:
	lsl	r0, r4, #0x3
	ldr	r1, .L26
	b	.L23
.L27:
	.align	2, 0
.L26:
	.word	gMonFrontPicTable
.L13:
	cmp	r0, #0
	bne	.L17	@cond_branch
	lsl	r0, r4, #0x3
	ldr	r1, .L28
.L22:
	add	r0, r0, r1
	str	r2, [sp]
	add	r1, r5, #0
	add	r2, r4, #0
	add	r3, r6, #0
	bl	LoadSpecialPokePic
	b	.L19
.L29:
	.align	2, 0
.L28:
	.word	gMonBackPicTable
.L17:
	lsl	r0, r4, #0x3
	ldr	r1, .L30
.L23:
	add	r0, r0, r1
	str	r2, [sp]
	add	r1, r5, #0
	add	r2, r4, #0
	add	r3, r6, #0
	bl	LoadSpecialPokePic_DontHandleDeoxys
	b	.L19
.L31:
	.align	2, 0
.L30:
	.word	gMonBackPicTable
.L12:
	cmp	r2, #0
	beq	.L20	@cond_branch
	lsl	r0, r4, #0x3
	ldr	r1, .L32
	add	r0, r0, r1
	add	r1, r5, #0
	add	r2, r4, #0
	bl	DecompressPicFromTable
	b	.L19
.L33:
	.align	2, 0
.L32:
	.word	gTrainerFrontPicTable
.L20:
	lsl	r0, r7, #0x3
	ldr	r1, .L34
	add	r0, r0, r1
	add	r1, r5, #0
	add	r2, r7, #0
	bl	DecompressPicFromTable
.L19:
	mov	r0, #0x0
	add	sp, sp, #0x4
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L35:
	.align	2, 0
.L34:
	.word	gTrainerBackPicTable
.Lfe3:
	.size	 DecompressPic,.Lfe3-DecompressPic
	.align	2, 0
	.type	 DecompressPic_HandleDeoxys,function
	.thumb_func
DecompressPic_HandleDeoxys:
	push	{r4, lr}
	add	sp, sp, #-0x8
	ldr	r4, [sp, #0x10]
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	lsl	r2, r2, #0x18
	lsr	r2, r2, #0x18
	lsl	r4, r4, #0x18
	lsr	r4, r4, #0x18
	str	r4, [sp]
	mov	r4, #0x0
	str	r4, [sp, #0x4]
	bl	DecompressPic
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	add	sp, sp, #0x8
	pop	{r4}
	pop	{r1}
	bx	r1
.Lfe4:
	.size	 DecompressPic_HandleDeoxys,.Lfe4-DecompressPic_HandleDeoxys
	.align	2, 0
	.type	 LoadPicPaletteByTagOrSlot,function
	.thumb_func
LoadPicPaletteByTagOrSlot:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	add	r7, r1, #0
	mov	r8, r2
	ldr	r1, [sp, #0x18]
	ldr	r2, [sp, #0x1c]
	lsl	r0, r0, #0x10
	lsr	r4, r0, #0x10
	add	r6, r4, #0
	lsl	r3, r3, #0x18
	lsr	r5, r3, #0x18
	mov	ip, r5
	lsl	r1, r1, #0x10
	lsr	r3, r1, #0x10
	add	r1, r3, #0
	lsl	r2, r2, #0x18
	cmp	r2, #0
	bne	.L38	@cond_branch
	ldr	r0, .L45
	cmp	r3, r0
	bne	.L39	@cond_branch
	ldr	r2, .L45+0x4
	ldrh	r1, [r2, #0x2]
	add	r0, r3, #0
	orr	r0, r0, r1
	strh	r0, [r2, #0x2]
	add	r0, r4, #0
	add	r1, r7, #0
	mov	r2, r8
	bl	GetMonSpritePalFromSpeciesAndPersonality
	lsl	r1, r5, #0x14
	b	.L44
.L46:
	.align	2, 0
.L45:
	.word	0xffff
	.word	sCreatingSpriteTemplate
.L39:
	ldr	r0, .L47
	strh	r3, [r0, #0x2]
	add	r0, r4, #0
	add	r1, r7, #0
	mov	r2, r8
	bl	GetMonSpritePalStructFromOtIdPersonality
	bl	LoadCompressedSpritePalette
	b	.L41
.L48:
	.align	2, 0
.L47:
	.word	sCreatingSpriteTemplate
.L38:
	ldr	r0, .L49
	cmp	r3, r0
	bne	.L42	@cond_branch
	ldr	r2, .L49+0x4
	ldrh	r1, [r2, #0x2]
	add	r0, r3, #0
	orr	r0, r0, r1
	strh	r0, [r2, #0x2]
	ldr	r1, .L49+0x8
	lsl	r0, r4, #0x3
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	r2, ip
	lsl	r1, r2, #0x14
.L44:
	mov	r2, #0x80
	lsl	r2, r2, #0x11
	add	r1, r1, r2
	lsr	r1, r1, #0x10
	mov	r2, #0x20
	bl	LoadCompressedPalette
	b	.L41
.L50:
	.align	2, 0
.L49:
	.word	0xffff
	.word	sCreatingSpriteTemplate
	.word	gTrainerFrontPicPaletteTable
.L42:
	ldr	r0, .L51
	strh	r1, [r0, #0x2]
	lsl	r0, r6, #0x3
	ldr	r1, .L51+0x4
	add	r0, r0, r1
	bl	LoadCompressedSpritePalette
.L41:
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L52:
	.align	2, 0
.L51:
	.word	sCreatingSpriteTemplate
	.word	gTrainerFrontPicPaletteTable
.Lfe5:
	.size	 LoadPicPaletteByTagOrSlot,.Lfe5-LoadPicPaletteByTagOrSlot
	.align	2, 0
	.type	 LoadPicPaletteBySlot,function
	.thumb_func
LoadPicPaletteBySlot:
	push	{r4, r5, lr}
	add	r5, r1, #0
	ldr	r1, [sp, #0xc]
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	lsl	r3, r3, #0x18
	lsr	r4, r3, #0x18
	lsl	r1, r1, #0x18
	cmp	r1, #0
	bne	.L54	@cond_branch
	add	r1, r5, #0
	bl	GetMonSpritePalFromSpeciesAndPersonality
	lsl	r1, r4, #0x4
	mov	r2, #0x20
	bl	LoadCompressedPalette
	b	.L55
.L54:
	ldr	r1, .L56
	lsl	r0, r0, #0x3
	add	r0, r0, r1
	ldr	r0, [r0]
	lsl	r1, r4, #0x4
	mov	r2, #0x20
	bl	LoadCompressedPalette
.L55:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.L57:
	.align	2, 0
.L56:
	.word	gTrainerFrontPicPaletteTable
.Lfe6:
	.size	 LoadPicPaletteBySlot,.Lfe6-LoadPicPaletteBySlot
	.align	2, 0
	.type	 AssignSpriteAnimsTable,function
	.thumb_func
AssignSpriteAnimsTable:
	push	{lr}
	lsl	r0, r0, #0x18
	cmp	r0, #0
	bne	.L59	@cond_branch
	ldr	r1, .L61
	ldr	r0, .L61+0x4
	str	r0, [r1, #0x8]
	b	.L60
.L62:
	.align	2, 0
.L61:
	.word	sCreatingSpriteTemplate
	.word	gUnknown_082FF70C
.L59:
	ldr	r0, .L63
	ldr	r1, .L63+0x4
	ldr	r1, [r1]
	str	r1, [r0, #0x8]
.L60:
	pop	{r0}
	bx	r0
.L64:
	.align	2, 0
.L63:
	.word	sCreatingSpriteTemplate
	.word	gTrainerFrontAnimsPtrTable
.Lfe7:
	.size	 AssignSpriteAnimsTable,.Lfe7-AssignSpriteAnimsTable
	.align	2, 0
	.type	 CreatePicSprite,function
	.thumb_func
CreatePicSprite:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	add	sp, sp, #-0x30
	str	r1, [sp, #0xc]
	str	r2, [sp, #0x10]
	ldr	r1, [sp, #0x50]
	ldr	r2, [sp, #0x54]
	ldr	r4, [sp, #0x58]
	ldr	r5, [sp, #0x5c]
	ldr	r6, [sp, #0x60]
	ldr	r7, [sp, #0x64]
	mov	r8, r7
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	str	r0, [sp, #0x8]
	lsl	r3, r3, #0x18
	lsr	r3, r3, #0x18
	str	r3, [sp, #0x14]
	lsl	r1, r1, #0x10
	lsr	r1, r1, #0x10
	str	r1, [sp, #0x18]
	lsl	r2, r2, #0x10
	lsr	r2, r2, #0x10
	str	r2, [sp, #0x1c]
	lsl	r4, r4, #0x18
	lsr	r4, r4, #0x18
	str	r4, [sp, #0x20]
	lsl	r5, r5, #0x10
	lsr	r5, r5, #0x10
	mov	sl, r5
	lsl	r6, r6, #0x18
	lsr	r6, r6, #0x18
	mov	r9, r6
	mov	r0, r8
	lsl	r0, r0, #0x18
	lsr	r5, r0, #0x18
	mov	r4, #0x0
	ldr	r1, .L85
	ldrb	r0, [r1, #0xb]
	cmp	r0, #0
	beq	.L67	@cond_branch
.L68:
	add	r0, r4, #0x1
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x18
	cmp	r4, #0x7
	bhi	.L67	@cond_branch
	lsl	r0, r4, #0x1
	add	r0, r0, r4
	lsl	r0, r0, #0x2
	add	r0, r0, r1
	ldrb	r0, [r0, #0xb]
	cmp	r0, #0
	bne	.L68	@cond_branch
.L67:
	cmp	r4, #0x8
	beq	.L84	@cond_branch
	mov	r0, #0x80
	lsl	r0, r0, #0x6
	bl	Alloc
	add	r7, r0, #0
	cmp	r7, #0
	beq	.L84	@cond_branch
	mov	r0, #0x20
	bl	Alloc
	mov	r8, r0
	cmp	r0, #0
	bne	.L74	@cond_branch
	add	r0, r7, #0
	bl	Free
.L84:
	ldr	r0, .L85+0x4
	b	.L82
.L86:
	.align	2, 0
.L85:
	.word	sSpritePics
	.word	0xffff
.L74:
	mov	r1, r9
	str	r1, [sp]
	str	r5, [sp, #0x4]
	ldr	r0, [sp, #0x8]
	ldr	r1, [sp, #0x10]
	ldr	r2, [sp, #0x14]
	add	r3, r7, #0
	bl	DecompressPic
	lsl	r0, r0, #0x10
	cmp	r0, #0
	bne	.L84	@cond_branch
	lsl	r2, r4, #0x1
	str	r2, [sp, #0x2c]
	ldr	r5, .L87
	ldr	r0, .L87+0x4
	mov	ip, r0
	ldr	r1, [sp, #0x18]
	lsl	r1, r1, #0x10
	str	r1, [sp, #0x24]
	ldr	r2, [sp, #0x1c]
	lsl	r2, r2, #0x10
	str	r2, [sp, #0x28]
	mov	r3, #0x80
	lsl	r3, r3, #0x4
	mov	r0, r8
	add	r1, r7, #0
	add	r6, r3, #0
	mov	r2, #0x3
.L79:
	str	r1, [r0]
	strh	r3, [r0, #0x4]
	add	r0, r0, #0x8
	add	r1, r1, r6
	sub	r2, r2, #0x1
	cmp	r2, #0
	bge	.L79	@cond_branch
	ldr	r0, .L87+0x8
	strh	r0, [r5]
	mov	r0, ip
	str	r0, [r5, #0x4]
	mov	r0, r9
	bl	AssignSpriteAnimsTable
	mov	r1, r8
	str	r1, [r5, #0xc]
	ldr	r0, .L87+0xc
	str	r0, [r5, #0x10]
	ldr	r0, .L87+0x10
	str	r0, [r5, #0x14]
	mov	r2, sl
	str	r2, [sp]
	mov	r0, r9
	str	r0, [sp, #0x4]
	ldr	r0, [sp, #0x8]
	ldr	r1, [sp, #0xc]
	ldr	r2, [sp, #0x10]
	ldr	r3, [sp, #0x20]
	bl	LoadPicPaletteByTagOrSlot
	ldr	r2, [sp, #0x24]
	asr	r1, r2, #0x10
	ldr	r0, [sp, #0x28]
	asr	r2, r0, #0x10
	add	r0, r5, #0
	mov	r3, #0x0
	bl	CreateSprite
	lsl	r0, r0, #0x18
	lsr	r2, r0, #0x18
	add	r6, r2, #0
	ldr	r0, .L87+0x8
	cmp	sl, r0
	bne	.L81	@cond_branch
	ldr	r0, .L87+0x14
	lsl	r1, r2, #0x4
	add	r1, r1, r2
	lsl	r1, r1, #0x2
	add	r1, r1, r0
	ldr	r2, [sp, #0x20]
	lsl	r3, r2, #0x4
	ldrb	r2, [r1, #0x5]
	mov	r0, #0xf
	and	r0, r0, r2
	orr	r0, r0, r3
	strb	r0, [r1, #0x5]
.L81:
	ldr	r1, .L87+0x18
	ldr	r2, [sp, #0x2c]
	add	r0, r2, r4
	lsl	r0, r0, #0x2
	add	r2, r0, r1
	str	r7, [r2]
	add	r1, r1, #0x4
	add	r0, r0, r1
	mov	r7, r8
	str	r7, [r0]
	mov	r0, sl
	strh	r0, [r2, #0x8]
	strb	r6, [r2, #0xa]
	mov	r0, #0x1
	strb	r0, [r2, #0xb]
	add	r0, r6, #0
.L82:
	add	sp, sp, #0x30
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L88:
	.align	2, 0
.L87:
	.word	sCreatingSpriteTemplate
	.word	gUnknown_0860B064
	.word	0xffff
	.word	gDummySpriteAffineAnimTable
	.word	DummyPicSpriteCallback
	.word	gSprites
	.word	sSpritePics
.Lfe8:
	.size	 CreatePicSprite,.Lfe8-CreatePicSprite
	.align	2, 0
	.type	 CreatePicSprite_HandleDeoxys,function
	.thumb_func
CreatePicSprite_HandleDeoxys:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	add	sp, sp, #-0x18
	ldr	r4, [sp, #0x34]
	ldr	r5, [sp, #0x38]
	ldr	r6, [sp, #0x3c]
	ldr	r7, [sp, #0x40]
	mov	r8, r7
	ldr	r7, [sp, #0x44]
	mov	r9, r7
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	lsl	r3, r3, #0x18
	lsr	r3, r3, #0x18
	lsl	r6, r6, #0x18
	lsr	r6, r6, #0x18
	mov	r7, r8
	lsl	r7, r7, #0x10
	lsr	r7, r7, #0x10
	mov	r8, r7
	mov	r7, r9
	lsl	r7, r7, #0x18
	lsr	r7, r7, #0x18
	lsl	r4, r4, #0x10
	asr	r4, r4, #0x10
	str	r4, [sp]
	lsl	r5, r5, #0x10
	asr	r5, r5, #0x10
	str	r5, [sp, #0x4]
	str	r6, [sp, #0x8]
	mov	r4, r8
	str	r4, [sp, #0xc]
	str	r7, [sp, #0x10]
	mov	r4, #0x0
	str	r4, [sp, #0x14]
	bl	CreatePicSprite
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	add	sp, sp, #0x18
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.Lfe9:
	.size	 CreatePicSprite_HandleDeoxys,.Lfe9-CreatePicSprite_HandleDeoxys
	.align	2, 0
	.globl	CreatePicSprite2
	.type	 CreatePicSprite2,function
	.thumb_func
CreatePicSprite2:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	add	sp, sp, #-0x2c
	str	r1, [sp, #0x8]
	str	r2, [sp, #0xc]
	ldr	r1, [sp, #0x4c]
	ldr	r2, [sp, #0x50]
	ldr	r4, [sp, #0x54]
	ldr	r5, [sp, #0x58]
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	mov	sl, r0
	lsl	r3, r3, #0x18
	lsr	r6, r3, #0x18
	lsl	r1, r1, #0x10
	lsr	r1, r1, #0x10
	str	r1, [sp, #0x10]
	lsl	r2, r2, #0x10
	lsr	r2, r2, #0x10
	str	r2, [sp, #0x14]
	lsl	r4, r4, #0x18
	lsr	r4, r4, #0x18
	str	r4, [sp, #0x18]
	lsl	r5, r5, #0x10
	lsr	r5, r5, #0x10
	str	r5, [sp, #0x1c]
	mov	r5, #0x0
	ldr	r1, .L117
	ldrb	r0, [r1, #0xb]
	cmp	r0, #0
	beq	.L92	@cond_branch
.L93:
	add	r0, r5, #0x1
	lsl	r0, r0, #0x18
	lsr	r5, r0, #0x18
	cmp	r5, #0x7
	bhi	.L92	@cond_branch
	lsl	r0, r5, #0x1
	add	r0, r0, r5
	lsl	r0, r0, #0x2
	add	r0, r0, r1
	ldrb	r0, [r0, #0xb]
	cmp	r0, #0
	bne	.L93	@cond_branch
.L92:
	cmp	r5, #0x8
	beq	.L115	@cond_branch
	mov	r0, #0x80
	lsl	r0, r0, #0x6
	bl	Alloc
	add	r7, r0, #0
	cmp	r7, #0
	beq	.L115	@cond_branch
	mov	r0, #0x80
	and	r0, r0, r6
	cmp	r0, #0
	beq	.L99	@cond_branch
	mov	r0, #0x7f
	and	r6, r6, r0
	mov	r0, #0x3
	mov	r9, r0
	b	.L100
.L118:
	.align	2, 0
.L117:
	.word	sSpritePics
.L99:
	mov	r9, r6
.L100:
	mov	r0, #0x20
	bl	Alloc
	mov	r8, r0
	cmp	r0, #0
	bne	.L101	@cond_branch
	add	r0, r7, #0
	bl	Free
.L115:
	ldr	r0, .L119
	b	.L113
.L120:
	.align	2, 0
.L119:
	.word	0xffff
.L101:
	mov	r0, #0x0
	str	r0, [sp]
	str	r0, [sp, #0x4]
	mov	r0, sl
	ldr	r1, [sp, #0xc]
	add	r2, r6, #0
	add	r3, r7, #0
	bl	DecompressPic
	lsl	r0, r0, #0x10
	cmp	r0, #0
	bne	.L115	@cond_branch
	lsl	r1, r5, #0x1
	str	r1, [sp, #0x28]
	ldr	r4, .L121
	mov	r2, sl
	lsl	r2, r2, #0x2
	mov	ip, r2
	ldr	r0, [sp, #0x10]
	lsl	r0, r0, #0x10
	str	r0, [sp, #0x20]
	ldr	r1, [sp, #0x14]
	lsl	r1, r1, #0x10
	str	r1, [sp, #0x24]
	mov	r3, #0x80
	lsl	r3, r3, #0x4
	mov	r0, r8
	add	r1, r7, #0
	add	r6, r3, #0
	mov	r2, #0x3
.L106:
	str	r1, [r0]
	strh	r3, [r0, #0x4]
	add	r0, r0, #0x8
	add	r1, r1, r6
	sub	r2, r2, #0x1
	cmp	r2, #0
	bge	.L106	@cond_branch
	ldr	r0, .L121+0x4
	strh	r0, [r4]
	ldr	r0, .L121+0x8
	add	r0, r0, ip
	ldr	r0, [r0]
	str	r0, [r4, #0x8]
	mov	r2, r8
	str	r2, [r4, #0xc]
	mov	r0, r9
	cmp	r0, #0x1
	bne	.L108	@cond_branch
	ldr	r0, .L121+0xc
	b	.L116
.L122:
	.align	2, 0
.L121:
	.word	sCreatingSpriteTemplate
	.word	0xffff
	.word	gMonFrontAnimsPtrTable
	.word	gUnknown_082FF694
.L108:
	mov	r1, r9
	cmp	r1, #0
	bne	.L110	@cond_branch
	ldr	r0, .L123
.L116:
	str	r0, [r4, #0x10]
	ldr	r0, .L123+0x4
	str	r0, [r4, #0x4]
	b	.L109
.L124:
	.align	2, 0
.L123:
	.word	gUnknown_082FF618
	.word	gUnknown_0860B06C
.L110:
	ldr	r0, .L125
	str	r0, [r4, #0x4]
	ldr	r0, .L125+0x4
	str	r0, [r4, #0x10]
.L109:
	ldr	r2, .L125+0x8
	str	r2, [r4, #0x14]
	ldr	r0, [sp, #0x1c]
	str	r0, [sp]
	mov	r0, #0x0
	str	r0, [sp, #0x4]
	mov	r0, sl
	ldr	r1, [sp, #0x8]
	ldr	r2, [sp, #0xc]
	ldr	r3, [sp, #0x18]
	bl	LoadPicPaletteByTagOrSlot
	ldr	r2, [sp, #0x20]
	asr	r1, r2, #0x10
	ldr	r0, [sp, #0x24]
	asr	r2, r0, #0x10
	add	r0, r4, #0
	mov	r3, #0x0
	bl	CreateSprite
	lsl	r0, r0, #0x18
	lsr	r2, r0, #0x18
	add	r6, r2, #0
	ldr	r0, .L125+0xc
	ldr	r1, [sp, #0x1c]
	cmp	r1, r0
	bne	.L112	@cond_branch
	ldr	r0, .L125+0x10
	lsl	r1, r2, #0x4
	add	r1, r1, r2
	lsl	r1, r1, #0x2
	add	r1, r1, r0
	ldr	r2, [sp, #0x18]
	lsl	r3, r2, #0x4
	ldrb	r2, [r1, #0x5]
	mov	r0, #0xf
	and	r0, r0, r2
	orr	r0, r0, r3
	strb	r0, [r1, #0x5]
.L112:
	ldr	r1, .L125+0x14
	ldr	r2, [sp, #0x28]
	add	r0, r2, r5
	lsl	r0, r0, #0x2
	add	r2, r0, r1
	str	r7, [r2]
	add	r1, r1, #0x4
	add	r0, r0, r1
	mov	r1, r8
	str	r1, [r0]
	mov	r0, sp
	ldrh	r0, [r0, #0x1c]
	strh	r0, [r2, #0x8]
	strb	r6, [r2, #0xa]
	mov	r0, #0x1
	strb	r0, [r2, #0xb]
	add	r0, r6, #0
.L113:
	add	sp, sp, #0x2c
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L126:
	.align	2, 0
.L125:
	.word	gUnknown_0860B064
	.word	gDummySpriteAffineAnimTable
	.word	DummyPicSpriteCallback
	.word	0xffff
	.word	gSprites
	.word	sSpritePics
.Lfe10:
	.size	 CreatePicSprite2,.Lfe10-CreatePicSprite2
	.align	2, 0
	.type	 FreeAndDestroyPicSpriteInternal,function
	.thumb_func
FreeAndDestroyPicSpriteInternal:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	lsl	r0, r0, #0x10
	lsr	r4, r0, #0x10
	mov	r2, #0x0
	ldr	r0, .L137
	ldrb	r1, [r0, #0xa]
	add	r3, r0, #0
	cmp	r1, r4
	beq	.L129	@cond_branch
	add	r1, r3, #0
.L130:
	add	r0, r2, #0x1
	lsl	r0, r0, #0x18
	lsr	r2, r0, #0x18
	cmp	r2, #0x7
	bhi	.L129	@cond_branch
	lsl	r0, r2, #0x1
	add	r0, r0, r2
	lsl	r0, r0, #0x2
	add	r0, r0, r1
	ldrb	r0, [r0, #0xa]
	cmp	r0, r4
	bne	.L130	@cond_branch
.L129:
	cmp	r2, #0x8
	bne	.L134	@cond_branch
	ldr	r0, .L137+0x4
	b	.L136
.L138:
	.align	2, 0
.L137:
	.word	sSpritePics
	.word	0xffff
.L134:
	lsl	r0, r2, #0x1
	add	r0, r0, r2
	lsl	r0, r0, #0x2
	add	r5, r0, r3
	ldr	r1, [r5]
	mov	r8, r1
	add	r1, r3, #0x4
	add	r0, r0, r1
	ldr	r7, [r0]
	ldrh	r1, [r5, #0x8]
	ldr	r0, .L139
	lsl	r6, r4, #0x4
	cmp	r1, r0
	beq	.L135	@cond_branch
	ldr	r1, .L139+0x4
	add	r0, r6, r4
	lsl	r0, r0, #0x2
	add	r0, r0, r1
	ldrb	r0, [r0, #0x5]
	lsr	r0, r0, #0x4
	bl	GetSpritePaletteTagByPaletteNum
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	bl	FreeSpritePaletteByTag
.L135:
	add	r0, r6, r4
	lsl	r0, r0, #0x2
	ldr	r1, .L139+0x4
	add	r0, r0, r1
	bl	DestroySprite
	mov	r0, r8
	bl	Free
	add	r0, r7, #0
	bl	Free
	add	r1, r5, #0
	ldr	r0, .L139+0x8
	ldmia	r0!, {r2, r3, r4}
	stmia	r1!, {r2, r3, r4}
	mov	r0, #0x0
.L136:
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L140:
	.align	2, 0
.L139:
	.word	0xffff
	.word	gSprites
	.word	sDummyPicData
.Lfe11:
	.size	 FreeAndDestroyPicSpriteInternal,.Lfe11-FreeAndDestroyPicSpriteInternal
	.align	2, 0
	.type	 sub_818D65C,function
	.thumb_func
sub_818D65C:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	add	sp, sp, #-0x4
	mov	r9, r1
	add	r7, r2, #0
	add	r4, r3, #0
	ldr	r1, [sp, #0x20]
	ldr	r2, [sp, #0x24]
	ldr	r3, [sp, #0x28]
	lsl	r0, r0, #0x10
	lsr	r5, r0, #0x10
	lsl	r4, r4, #0x18
	lsr	r4, r4, #0x18
	lsl	r1, r1, #0x18
	lsr	r1, r1, #0x18
	mov	r8, r1
	lsl	r2, r2, #0x18
	lsr	r2, r2, #0x18
	lsl	r3, r3, #0x18
	lsr	r6, r3, #0x18
	add	r0, r2, #0
	mov	r1, #0x7
	bl	GetWindowAttribute
	add	r3, r0, #0
	mov	r0, #0x0
	str	r0, [sp]
	add	r0, r5, #0
	add	r1, r7, #0
	add	r2, r4, #0
	bl	DecompressPic_HandleDeoxys
	lsl	r0, r0, #0x10
	cmp	r0, #0
	bne	.L142	@cond_branch
	str	r6, [sp]
	add	r0, r5, #0
	mov	r1, r9
	add	r2, r7, #0
	mov	r3, r8
	bl	LoadPicPaletteBySlot
	mov	r0, #0x0
	b	.L143
.L142:
	ldr	r0, .L144
.L143:
	add	sp, sp, #0x4
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L145:
	.align	2, 0
.L144:
	.word	0xffff
.Lfe12:
	.size	 sub_818D65C,.Lfe12-sub_818D65C
	.align	2, 0
	.type	 CreateTrainerCardSprite,function
	.thumb_func
CreateTrainerCardSprite:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	add	sp, sp, #-0x24
	str	r1, [sp, #0x18]
	str	r2, [sp, #0x1c]
	ldr	r1, [sp, #0x44]
	ldr	r2, [sp, #0x48]
	ldr	r4, [sp, #0x4c]
	ldr	r5, [sp, #0x50]
	ldr	r6, [sp, #0x54]
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	mov	r9, r0
	lsl	r3, r3, #0x18
	lsr	r7, r3, #0x18
	lsl	r1, r1, #0x10
	lsr	r1, r1, #0x10
	mov	sl, r1
	lsl	r2, r2, #0x10
	lsr	r2, r2, #0x10
	mov	r8, r2
	lsl	r4, r4, #0x18
	lsr	r4, r4, #0x18
	str	r4, [sp, #0x20]
	lsl	r5, r5, #0x18
	lsr	r5, r5, #0x18
	lsl	r6, r6, #0x18
	lsr	r6, r6, #0x18
	mov	r0, #0x80
	lsl	r0, r0, #0x6
	bl	Alloc
	add	r4, r0, #0
	cmp	r4, #0
	beq	.L147	@cond_branch
	str	r6, [sp]
	mov	r0, r9
	ldr	r1, [sp, #0x1c]
	add	r2, r7, #0
	add	r3, r4, #0
	bl	DecompressPic_HandleDeoxys
	lsl	r0, r0, #0x10
	cmp	r0, #0
	bne	.L147	@cond_branch
	mov	r0, #0x40
	str	r0, [sp]
	str	r0, [sp, #0x4]
	mov	r1, sl
	str	r1, [sp, #0x8]
	mov	r1, r8
	str	r1, [sp, #0xc]
	str	r0, [sp, #0x10]
	str	r0, [sp, #0x14]
	add	r0, r5, #0
	add	r1, r4, #0
	mov	r2, #0x0
	mov	r3, #0x0
	bl	BlitBitmapRectToWindow
	str	r6, [sp]
	mov	r0, r9
	ldr	r1, [sp, #0x18]
	ldr	r2, [sp, #0x1c]
	ldr	r3, [sp, #0x20]
	bl	LoadPicPaletteBySlot
	add	r0, r4, #0
	bl	Free
	mov	r0, #0x0
	b	.L148
.L147:
	ldr	r0, .L149
.L148:
	add	sp, sp, #0x24
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L150:
	.align	2, 0
.L149:
	.word	0xffff
.Lfe13:
	.size	 CreateTrainerCardSprite,.Lfe13-CreateTrainerCardSprite
	.align	2, 0
	.type	 CreateMonPicSprite,function
	.thumb_func
CreateMonPicSprite:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	add	sp, sp, #-0x18
	ldr	r4, [sp, #0x34]
	ldr	r5, [sp, #0x38]
	ldr	r6, [sp, #0x3c]
	ldr	r7, [sp, #0x40]
	mov	r8, r7
	ldr	r7, [sp, #0x44]
	mov	r9, r7
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	lsl	r3, r3, #0x18
	lsr	r3, r3, #0x18
	lsl	r6, r6, #0x18
	lsr	r6, r6, #0x18
	mov	r7, r8
	lsl	r7, r7, #0x10
	lsr	r7, r7, #0x10
	mov	r8, r7
	mov	r7, r9
	lsl	r7, r7, #0x18
	lsr	r7, r7, #0x18
	lsl	r4, r4, #0x10
	asr	r4, r4, #0x10
	str	r4, [sp]
	lsl	r5, r5, #0x10
	asr	r5, r5, #0x10
	str	r5, [sp, #0x4]
	str	r6, [sp, #0x8]
	mov	r4, r8
	str	r4, [sp, #0xc]
	mov	r4, #0x0
	str	r4, [sp, #0x10]
	str	r7, [sp, #0x14]
	bl	CreatePicSprite
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	add	sp, sp, #0x18
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.Lfe14:
	.size	 CreateMonPicSprite,.Lfe14-CreateMonPicSprite
	.align	2, 0
	.globl	CreateMonPicSprite_HandleDeoxys
	.type	 CreateMonPicSprite_HandleDeoxys,function
	.thumb_func
CreateMonPicSprite_HandleDeoxys:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	add	sp, sp, #-0x14
	ldr	r4, [sp, #0x2c]
	ldr	r5, [sp, #0x30]
	ldr	r6, [sp, #0x34]
	ldr	r7, [sp, #0x38]
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	lsl	r3, r3, #0x18
	lsr	r3, r3, #0x18
	lsl	r6, r6, #0x18
	lsr	r6, r6, #0x18
	lsl	r7, r7, #0x10
	lsr	r7, r7, #0x10
	lsl	r4, r4, #0x10
	asr	r4, r4, #0x10
	str	r4, [sp]
	lsl	r5, r5, #0x10
	asr	r5, r5, #0x10
	str	r5, [sp, #0x4]
	str	r6, [sp, #0x8]
	str	r7, [sp, #0xc]
	mov	r4, #0x0
	str	r4, [sp, #0x10]
	bl	CreateMonPicSprite
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	add	sp, sp, #0x14
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.Lfe15:
	.size	 CreateMonPicSprite_HandleDeoxys,.Lfe15-CreateMonPicSprite_HandleDeoxys
	.align	2, 0
	.globl	FreeAndDestroyMonPicSprite
	.type	 FreeAndDestroyMonPicSprite,function
	.thumb_func
FreeAndDestroyMonPicSprite:
	push	{lr}
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	bl	FreeAndDestroyPicSpriteInternal
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	pop	{r1}
	bx	r1
.Lfe16:
	.size	 FreeAndDestroyMonPicSprite,.Lfe16-FreeAndDestroyMonPicSprite
	.align	2, 0
	.globl	sub_818D834
	.type	 sub_818D834,function
	.thumb_func
sub_818D834:
	push	{r4, r5, lr}
	add	sp, sp, #-0xc
	ldr	r4, [sp, #0x18]
	ldr	r5, [sp, #0x1c]
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	lsl	r3, r3, #0x18
	lsr	r3, r3, #0x18
	lsl	r4, r4, #0x18
	lsr	r4, r4, #0x18
	lsl	r5, r5, #0x18
	lsr	r5, r5, #0x18
	str	r4, [sp]
	str	r5, [sp, #0x4]
	mov	r4, #0x0
	str	r4, [sp, #0x8]
	bl	sub_818D65C
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	add	sp, sp, #0xc
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.Lfe17:
	.size	 sub_818D834,.Lfe17-sub_818D834
	.align	2, 0
	.globl	CreateTrainerCardMonIconSprite
	.type	 CreateTrainerCardMonIconSprite,function
	.thumb_func
CreateTrainerCardMonIconSprite:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	add	sp, sp, #-0x14
	ldr	r4, [sp, #0x2c]
	ldr	r5, [sp, #0x30]
	ldr	r6, [sp, #0x34]
	ldr	r7, [sp, #0x38]
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	lsl	r3, r3, #0x18
	lsr	r3, r3, #0x18
	lsl	r4, r4, #0x10
	lsr	r4, r4, #0x10
	lsl	r5, r5, #0x10
	lsr	r5, r5, #0x10
	lsl	r6, r6, #0x18
	lsr	r6, r6, #0x18
	lsl	r7, r7, #0x18
	lsr	r7, r7, #0x18
	str	r4, [sp]
	str	r5, [sp, #0x4]
	str	r6, [sp, #0x8]
	str	r7, [sp, #0xc]
	mov	r4, #0x0
	str	r4, [sp, #0x10]
	bl	CreateTrainerCardSprite
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	add	sp, sp, #0x14
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.Lfe18:
	.size	 CreateTrainerCardMonIconSprite,.Lfe18-CreateTrainerCardMonIconSprite
	.align	2, 0
	.globl	CreateTrainerPicSprite
	.type	 CreateTrainerPicSprite,function
	.thumb_func
CreateTrainerPicSprite:
	push	{r4, r5, lr}
	add	sp, sp, #-0x14
	add	r5, r1, #0
	ldr	r1, [sp, #0x20]
	ldr	r4, [sp, #0x24]
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	lsl	r5, r5, #0x18
	lsr	r5, r5, #0x18
	lsl	r1, r1, #0x18
	lsr	r1, r1, #0x18
	lsl	r4, r4, #0x10
	lsr	r4, r4, #0x10
	lsl	r2, r2, #0x10
	asr	r2, r2, #0x10
	str	r2, [sp]
	lsl	r3, r3, #0x10
	asr	r3, r3, #0x10
	str	r3, [sp, #0x4]
	str	r1, [sp, #0x8]
	str	r4, [sp, #0xc]
	mov	r1, #0x1
	str	r1, [sp, #0x10]
	mov	r1, #0x0
	mov	r2, #0x0
	add	r3, r5, #0
	bl	CreatePicSprite_HandleDeoxys
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	add	sp, sp, #0x14
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.Lfe19:
	.size	 CreateTrainerPicSprite,.Lfe19-CreateTrainerPicSprite
	.align	2, 0
	.globl	FreeAndDestroyTrainerPicSprite
	.type	 FreeAndDestroyTrainerPicSprite,function
	.thumb_func
FreeAndDestroyTrainerPicSprite:
	push	{lr}
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	bl	FreeAndDestroyPicSpriteInternal
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	pop	{r1}
	bx	r1
.Lfe20:
	.size	 FreeAndDestroyTrainerPicSprite,.Lfe20-FreeAndDestroyTrainerPicSprite
	.align	2, 0
	.globl	sub_818D904
	.type	 sub_818D904,function
	.thumb_func
sub_818D904:
	push	{r4, lr}
	add	sp, sp, #-0xc
	add	r4, r1, #0
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	lsl	r4, r4, #0x18
	lsr	r4, r4, #0x18
	lsl	r2, r2, #0x18
	lsr	r2, r2, #0x18
	lsl	r3, r3, #0x18
	lsr	r3, r3, #0x18
	str	r2, [sp]
	str	r3, [sp, #0x4]
	mov	r1, #0x1
	str	r1, [sp, #0x8]
	mov	r1, #0x0
	mov	r2, #0x0
	add	r3, r4, #0
	bl	sub_818D65C
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	add	sp, sp, #0xc
	pop	{r4}
	pop	{r1}
	bx	r1
.Lfe21:
	.size	 sub_818D904,.Lfe21-sub_818D904
	.align	2, 0
	.globl	CreateTrainerCardTrainerPicSprite
	.type	 CreateTrainerCardTrainerPicSprite,function
	.thumb_func
CreateTrainerCardTrainerPicSprite:
	push	{r4, r5, lr}
	add	sp, sp, #-0x14
	add	r5, r1, #0
	ldr	r1, [sp, #0x20]
	ldr	r4, [sp, #0x24]
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	lsl	r5, r5, #0x18
	lsr	r5, r5, #0x18
	lsl	r2, r2, #0x10
	lsr	r2, r2, #0x10
	lsl	r3, r3, #0x10
	lsr	r3, r3, #0x10
	lsl	r1, r1, #0x18
	lsr	r1, r1, #0x18
	lsl	r4, r4, #0x18
	lsr	r4, r4, #0x18
	str	r2, [sp]
	str	r3, [sp, #0x4]
	str	r1, [sp, #0x8]
	str	r4, [sp, #0xc]
	mov	r1, #0x1
	str	r1, [sp, #0x10]
	mov	r1, #0x0
	mov	r2, #0x0
	add	r3, r5, #0
	bl	CreateTrainerCardSprite
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	add	sp, sp, #0x14
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.Lfe22:
	.size	 CreateTrainerCardTrainerPicSprite,.Lfe22-CreateTrainerCardTrainerPicSprite
	.align	2, 0
	.globl	PlayerGenderToFrontTrainerPicId_Debug
	.type	 PlayerGenderToFrontTrainerPicId_Debug,function
	.thumb_func
PlayerGenderToFrontTrainerPicId_Debug:
	push	{lr}
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	lsl	r1, r1, #0x18
	lsr	r1, r1, #0x18
	cmp	r1, #0x1
	bne	.L166	@cond_branch
	cmp	r0, #0
	beq	.L164	@cond_branch
	ldr	r0, .L168
	add	r0, r0, #0x3f
	ldrb	r0, [r0]
	b	.L167
.L169:
	.align	2, 0
.L168:
	.word	gFacilityClassToPicIndex
.L164:
	ldr	r0, .L170
	add	r0, r0, #0x3c
	ldrb	r0, [r0]
.L167:
.L166:
	pop	{r1}
	bx	r1
.L171:
	.align	2, 0
.L170:
	.word	gFacilityClassToPicIndex
.Lfe23:
	.size	 PlayerGenderToFrontTrainerPicId_Debug,.Lfe23-PlayerGenderToFrontTrainerPicId_Debug
.text
	.align	2, 0

