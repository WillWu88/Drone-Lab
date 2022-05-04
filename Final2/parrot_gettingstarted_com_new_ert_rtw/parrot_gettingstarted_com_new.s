	.arch armv5te
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 18, 4
	.file	"parrot_gettingstarted_com_new.c"
	.comm	cmd_inport,36,4
	.comm	sensor_inport,2496,8
	.comm	motors_outport,16,4
	.comm	flag_outport,1,1
	.comm	parrot_gettingstarted_com_ne_DW,44,4
	.comm	parrot_gettingstarted_com_new_Y,20,4
	.local	parrot_gettingstarted_com_ne_M_
	.comm	parrot_gettingstarted_com_ne_M_,48,8
	.global	parrot_gettingstarted_com_ne_M
	.section	.data.rel.ro.local,"aw",%progbits
	.align	2
	.type	parrot_gettingstarted_com_ne_M, %object
	.size	parrot_gettingstarted_com_ne_M, 4
parrot_gettingstarted_com_ne_M:
	.word	parrot_gettingstarted_com_ne_M_
	.global	__aeabi_dmul
	.global	__aeabi_dadd
	.global	__aeabi_d2f
	.global	__aeabi_f2d
	.global	__aeabi_dcmplt
	.global	__aeabi_dcmpgt
	.global	__aeabi_dcmpeq
	.global	__aeabi_dsub
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Simulation finished\000"
	.global	__aeabi_ui2d
	.text
	.align	2
	.global	parrot_gettingstarted_com_new_step
	.type	parrot_gettingstarted_com_new_step, %function
parrot_gettingstarted_com_new_step:
	.fnstart
.LFB0:
	@ args = 0, pretend = 0, frame = 160
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, fp, lr}
	.save {r4, r5, r6, r7, r8, r9, fp, lr}
.LCFI0:
	.setfp fp, sp, #28
	add	fp, sp, #28
.LCFI1:
	.pad #160
	sub	sp, sp, #160
.LCFI2:
	ldr	r4, .L41
.LPIC0:
	add	r4, pc, r4
	ldr	r3, .L41+4
	ldr	r3, [r4, r3]
	ldrd	r0, [r3, #136]
	ldr	r3, .L41+4
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #128]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	strd	r2, [fp, #-44]
	mov	r3, #0
	str	r3, [fp, #-32]
	b	.L2
.L3:
	ldr	r5, [fp, #-32]
	ldr	r3, [fp, #-32]
	add	r2, r3, #12
	ldr	r3, .L41+4
	ldr	r3, [r4, r3]
	mov	r2, r2, asl #3
	add	r3, r2, r3
	ldrd	r0, [r3]
	ldr	r3, .L41+4
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #176]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r6, r2
	mov	r7, r3
	ldr	r3, [fp, #-32]
	add	r2, r3, #8
	ldr	r3, .L41+4
	ldr	r3, [r4, r3]
	mov	r2, r2, asl #3
	add	r3, r2, r3
	ldrd	r0, [r3]
	ldr	r3, .L41+4
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #176]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r8, r2
	mov	r9, r3
	ldr	r3, [fp, #-32]
	add	r2, r3, #4
	ldr	r3, .L41+4
	ldr	r3, [r4, r3]
	mov	r2, r2, asl #3
	add	r3, r2, r3
	ldrd	r0, [r3]
	ldr	r3, .L41+4
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #176]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	strd	r2, [fp, #-188]
	ldr	r2, [fp, #-32]
	ldr	r3, .L41+4
	ldr	r3, [r4, r3]
	mov	r2, r2, asl #3
	add	r3, r2, r3
	ldrd	r2, [r3]
	mov	r0, r2
	mov	r1, r3
	ldrd	r2, [fp, #-44]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	ldrd	r0, [fp, #-188]
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	mvn	r1, #47
	mov	r0, r5, asl #3
	sub	ip, fp, #28
	add	r0, r0, ip
	add	r1, r0, r1
	strd	r2, [r1]
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L2:
	ldr	r3, [fp, #-32]
	cmp	r3, #3
	ble	.L3
	ldr	r3, .L41+4
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #144]
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	ldrd	r2, [fp, #-76]
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	strd	r2, [fp, #-44]
	ldr	r3, .L41+4
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #184]
	mov	r1, #0
	mov	r5, r1
	mov	r0, r2
	mov	r1, r3
	ldrd	r2, [fp, #-44]
	bl	__aeabi_dcmplt(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L4
.L5:
	mov	r3, #1
	mov	r5, r3
.L4:
	and	r3, r5, #255
	cmp	r3, #0
	beq	.L6
	ldr	r3, .L41+4
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #184]
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f(PLT)
	mov	r2, r0
	ldr	r3, .L41+8
	ldr	r3, [r4, r3]
	str	r2, [r3, #0]	@ float
	b	.L7
.L6:
	ldr	r3, .L41+4
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #192]
	mov	r1, #0
	mov	r5, r1
	mov	r0, r2
	mov	r1, r3
	ldrd	r2, [fp, #-44]
	bl	__aeabi_dcmpgt(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L8
.L9:
	mov	r3, #1
	mov	r5, r3
.L8:
	and	r3, r5, #255
	cmp	r3, #0
	beq	.L10
	ldr	r3, .L41+4
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #192]
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f(PLT)
	mov	r2, r0
	ldr	r3, .L41+8
	ldr	r3, [r4, r3]
	str	r2, [r3, #0]	@ float
	b	.L7
.L10:
	ldrd	r0, [fp, #-44]
	bl	__aeabi_d2f(PLT)
	mov	r2, r0
	ldr	r3, .L41+8
	ldr	r3, [r4, r3]
	str	r2, [r3, #0]	@ float
.L7:
	ldr	r3, .L41+4
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #152]
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	ldrd	r2, [fp, #-68]
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	strd	r2, [fp, #-44]
	ldr	r3, .L41+4
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #184]
	mov	r1, #0
	mov	r5, r1
	mov	r0, r2
	mov	r1, r3
	ldrd	r2, [fp, #-44]
	bl	__aeabi_dcmplt(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L11
.L12:
	mov	r3, #1
	mov	r5, r3
.L11:
	and	r3, r5, #255
	cmp	r3, #0
	beq	.L13
	ldr	r3, .L41+4
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #184]
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f(PLT)
	mov	r2, r0
	ldr	r3, .L41+8
	ldr	r3, [r4, r3]
	str	r2, [r3, #4]	@ float
	b	.L14
.L13:
	ldr	r3, .L41+4
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #192]
	mov	r1, #0
	mov	r5, r1
	mov	r0, r2
	mov	r1, r3
	ldrd	r2, [fp, #-44]
	bl	__aeabi_dcmpgt(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L15
.L16:
	mov	r3, #1
	mov	r5, r3
.L15:
	and	r3, r5, #255
	cmp	r3, #0
	beq	.L17
	ldr	r3, .L41+4
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #192]
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f(PLT)
	mov	r2, r0
	ldr	r3, .L41+8
	ldr	r3, [r4, r3]
	str	r2, [r3, #4]	@ float
	b	.L14
.L17:
	ldrd	r0, [fp, #-44]
	bl	__aeabi_d2f(PLT)
	mov	r2, r0
	ldr	r3, .L41+8
	ldr	r3, [r4, r3]
	str	r2, [r3, #4]	@ float
.L14:
	ldr	r3, .L41+4
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #160]
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	ldrd	r2, [fp, #-60]
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	strd	r2, [fp, #-44]
	ldr	r3, .L41+4
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #184]
	mov	r1, #0
	mov	r5, r1
	mov	r0, r2
	mov	r1, r3
	ldrd	r2, [fp, #-44]
	bl	__aeabi_dcmplt(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L18
.L19:
	mov	r3, #1
	mov	r5, r3
.L18:
	and	r3, r5, #255
	cmp	r3, #0
	beq	.L20
	ldr	r3, .L41+4
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #184]
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f(PLT)
	mov	r2, r0
	ldr	r3, .L41+8
	ldr	r3, [r4, r3]
	str	r2, [r3, #8]	@ float
	b	.L21
.L20:
	ldr	r3, .L41+4
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #192]
	mov	r1, #0
	mov	r5, r1
	mov	r0, r2
	mov	r1, r3
	ldrd	r2, [fp, #-44]
	bl	__aeabi_dcmpgt(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L22
.L23:
	mov	r3, #1
	mov	r5, r3
.L22:
	and	r3, r5, #255
	cmp	r3, #0
	beq	.L24
	ldr	r3, .L41+4
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #192]
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f(PLT)
	mov	r2, r0
	ldr	r3, .L41+8
	ldr	r3, [r4, r3]
	str	r2, [r3, #8]	@ float
	b	.L21
.L24:
	ldrd	r0, [fp, #-44]
	bl	__aeabi_d2f(PLT)
	mov	r2, r0
	ldr	r3, .L41+8
	ldr	r3, [r4, r3]
	str	r2, [r3, #8]	@ float
.L21:
	ldr	r3, .L41+4
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #168]
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	ldrd	r2, [fp, #-52]
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	strd	r2, [fp, #-44]
	ldr	r3, .L41+4
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #184]
	mov	r1, #0
	mov	r5, r1
	mov	r0, r2
	mov	r1, r3
	ldrd	r2, [fp, #-44]
	bl	__aeabi_dcmplt(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L25
.L26:
	mov	r3, #1
	mov	r5, r3
.L25:
	and	r3, r5, #255
	cmp	r3, #0
	beq	.L27
	ldr	r3, .L41+4
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #184]
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f(PLT)
	mov	r2, r0
	ldr	r3, .L41+8
	ldr	r3, [r4, r3]
	str	r2, [r3, #12]	@ float
	b	.L28
.L27:
	ldr	r3, .L41+4
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #192]
	mov	r1, #0
	mov	r5, r1
	mov	r0, r2
	mov	r1, r3
	ldrd	r2, [fp, #-44]
	bl	__aeabi_dcmpgt(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L29
.L30:
	mov	r3, #1
	mov	r5, r3
.L29:
	and	r3, r5, #255
	cmp	r3, #0
	beq	.L31
	ldr	r3, .L41+4
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #192]
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f(PLT)
	mov	r2, r0
	ldr	r3, .L41+8
	ldr	r3, [r4, r3]
	str	r2, [r3, #12]	@ float
	b	.L28
.L31:
	ldrd	r0, [fp, #-44]
	bl	__aeabi_d2f(PLT)
	mov	r2, r0
	ldr	r3, .L41+8
	ldr	r3, [r4, r3]
	str	r2, [r3, #12]	@ float
.L28:
	ldr	r3, .L41+8
	ldr	r3, [r4, r3]
	ldr	r2, [r3, #0]	@ float
	ldr	r3, .L41+12
	ldr	r3, [r4, r3]
	str	r2, [r3, #0]	@ float
	ldr	r3, .L41+8
	ldr	r3, [r4, r3]
	ldr	r2, [r3, #4]	@ float
	ldr	r3, .L41+12
	ldr	r3, [r4, r3]
	str	r2, [r3, #4]	@ float
	ldr	r3, .L41+8
	ldr	r3, [r4, r3]
	ldr	r2, [r3, #8]	@ float
	ldr	r3, .L41+12
	ldr	r3, [r4, r3]
	str	r2, [r3, #8]	@ float
	ldr	r3, .L41+8
	ldr	r3, [r4, r3]
	ldr	r2, [r3, #12]	@ float
	ldr	r3, .L41+12
	ldr	r3, [r4, r3]
	str	r2, [r3, #12]	@ float
	ldr	r3, .L41+4
	ldr	r3, [r4, r3]
	ldrb	r3, [r3, #202]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L32
	ldr	r3, .L41+4
	ldr	r3, [r4, r3]
	ldrb	r2, [r3, #200]	@ zero_extendqisi2
	ldr	r3, .L41+16
	ldr	r3, [r4, r3]
	strb	r2, [r3, #0]
	b	.L33
.L32:
	ldr	r3, .L41+4
	ldr	r3, [r4, r3]
	ldrb	r2, [r3, #201]	@ zero_extendqisi2
	ldr	r3, .L41+16
	ldr	r3, [r4, r3]
	strb	r2, [r3, #0]
.L33:
	ldr	r3, .L41+16
	ldr	r3, [r4, r3]
	ldrb	r2, [r3, #0]	@ zero_extendqisi2
	ldr	r3, .L41+12
	ldr	r3, [r4, r3]
	strb	r2, [r3, #16]
	ldr	r3, .L41+20
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #8]
	strd	r2, [fp, #-100]
	ldr	r3, .L41+24
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	mov	r1, r3
	sub	r2, fp, #100
	sub	r3, fp, #76
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	rt_UpdateStructLogVar(PLT)
	ldr	r3, .L41+28
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]	@ float
	str	r3, [fp, #-88]	@ float
	ldr	r3, .L41+28
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #4]	@ float
	str	r3, [fp, #-84]	@ float
	ldr	r3, .L41+28
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #8]	@ float
	str	r3, [fp, #-80]	@ float
	ldr	r3, .L41+20
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #8]
	strd	r2, [fp, #-108]
	ldr	r3, .L41+24
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #4]
	mov	r1, r3
	sub	r2, fp, #108
	sub	r3, fp, #88
	add	r3, r3, #4
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	rt_UpdateStructLogVar(PLT)
	ldr	r3, .L41+28
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #416]	@ float
	str	r3, [fp, #-92]	@ float
	ldr	r3, .L41+20
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #8]
	strd	r2, [fp, #-116]
	ldr	r3, .L41+24
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #8]
	mov	r1, r3
	sub	r2, fp, #116
	sub	r3, fp, #92
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	rt_UpdateStructLogVar(PLT)
	ldr	r3, .L41+20
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #8]
	strd	r2, [fp, #-124]
	ldr	r3, .L41+24
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #12]
	mov	r1, r3
	sub	r2, fp, #124
	sub	r3, fp, #88
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	rt_UpdateStructLogVar(PLT)
	ldr	r3, .L41+28
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #52]	@ float
	str	r3, [fp, #-92]	@ float
	ldr	r3, .L41+20
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #8]
	strd	r2, [fp, #-132]
	ldr	r3, .L41+24
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #16]
	mov	r1, r3
	sub	r2, fp, #132
	sub	r3, fp, #92
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	rt_UpdateStructLogVar(PLT)
	ldr	r3, .L41+28
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #56]	@ float
	str	r3, [fp, #-92]	@ float
	ldr	r3, .L41+20
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #8]
	strd	r2, [fp, #-140]
	ldr	r3, .L41+24
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #20]
	mov	r1, r3
	sub	r2, fp, #140
	sub	r3, fp, #92
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	rt_UpdateStructLogVar(PLT)
	ldr	r3, .L41+28
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #60]	@ float
	str	r3, [fp, #-92]	@ float
	ldr	r3, .L41+20
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #8]
	strd	r2, [fp, #-148]
	ldr	r3, .L41+24
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #24]
	mov	r1, r3
	sub	r2, fp, #148
	sub	r3, fp, #92
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	rt_UpdateStructLogVar(PLT)
	ldr	r3, .L41+28
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #68]	@ float
	str	r3, [fp, #-92]	@ float
	ldr	r3, .L41+20
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #8]
	strd	r2, [fp, #-156]
	ldr	r3, .L41+24
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #28]
	mov	r1, r3
	sub	r2, fp, #156
	sub	r3, fp, #92
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	rt_UpdateStructLogVar(PLT)
	ldr	r3, .L41+28
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #72]	@ float
	str	r3, [fp, #-92]	@ float
	ldr	r3, .L41+20
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #8]
	strd	r2, [fp, #-164]
	ldr	r3, .L41+24
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #32]
	mov	r1, r3
	sub	r2, fp, #164
	sub	r3, fp, #92
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	rt_UpdateStructLogVar(PLT)
	ldr	r3, .L41+28
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #76]	@ float
	str	r3, [fp, #-92]	@ float
	ldr	r3, .L41+20
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #8]
	strd	r2, [fp, #-172]
	ldr	r3, .L41+24
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #36]
	mov	r1, r3
	sub	r2, fp, #172
	sub	r3, fp, #92
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	rt_UpdateStructLogVar(PLT)
	ldr	r3, .L41+28
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #392]	@ float
	str	r3, [fp, #-92]	@ float
	ldr	r3, .L41+20
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #8]
	strd	r2, [fp, #-180]
	ldr	r3, .L41+24
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #40]
	mov	r1, r3
	sub	r2, fp, #180
	sub	r3, fp, #92
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	rt_UpdateStructLogVar(PLT)
	ldr	r3, .L41+20
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r2, [r3, #4]
	ldr	r3, .L41+20
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	add	r3, r3, #8
	mov	r0, r2
	mov	r1, r3
	bl	rt_UpdateTXYLogVars(PLT)
	ldr	r3, .L41+20
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #32]
	mov	r0, r2
	mov	r1, r3
	mov	r2, #0
	mov	r3, #-1090519040
	add	r3, r3, #15728640
	bl	__aeabi_dcmpeq(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L34
.L40:
	ldr	r3, .L41+20
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r0, [r3, #32]
	ldr	r3, .L41+20
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #8]
	bl	__aeabi_dsub(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r6, r2
	mov	r7, r3
	ldr	r3, .L41+20
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #8]
	mov	r0, r2
	mov	r1, r3
	mov	r2, #0
	mov	r3, #1015021568
	add	r3, r3, #3145728
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r1, #0
	mov	r5, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dcmpgt(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L36
.L37:
	mov	r3, #1
	mov	r5, r3
.L36:
	and	r3, r5, #255
	eor	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L34
	ldr	r3, .L41+20
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r2, .L41+32
	add	r2, r4, r2
	str	r2, [r3, #0]
.L34:
	ldr	r3, .L41+20
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r2, [r3, #16]
	add	r2, r2, #1
	str	r2, [r3, #16]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	bne	.L38
	ldr	r3, .L41+20
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r2, [r3, #20]
	add	r2, r2, #1
	str	r2, [r3, #20]
.L38:
	ldr	r3, .L41+20
	ldr	r3, [r4, r3]
	ldr	r5, [r3, #0]
	ldr	r3, .L41+20
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #16]
	mov	r0, r3
	bl	__aeabi_ui2d(PLT)
	ldr	r3, .L41+20
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #24]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r6, r2
	mov	r7, r3
	ldr	r3, .L41+20
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #20]
	mov	r0, r3
	bl	__aeabi_ui2d(PLT)
	ldr	r3, .L41+20
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #24]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	mov	r2, #0
	mov	r3, #1090519040
	add	r3, r3, #15728640
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	strd	r2, [r5, #8]
	sub	sp, fp, #28
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, fp, pc}
.L42:
	.align	2
.L41:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+8)
	.word	parrot_gettingstarted_com_new_P(GOT)
	.word	motors_outport(GOT)
	.word	parrot_gettingstarted_com_new_Y(GOT)
	.word	flag_outport(GOT)
	.word	parrot_gettingstarted_com_ne_M(GOT)
	.word	parrot_gettingstarted_com_ne_DW(GOT)
	.word	sensor_inport(GOT)
	.word	.LC0(GOTOFF)
.LFE0:
	.fnend
	.size	parrot_gettingstarted_com_new_step, .-parrot_gettingstarted_com_new_step
	.section	.rodata
	.align	2
.LC1:
	.ascii	"tout\000"
	.align	2
.LC2:
	.ascii	"\000"
	.align	2
.LC3:
	.ascii	"rt_\000"
	.align	2
.LC4:
	.ascii	"mixer_out\000"
	.align	2
.LC5:
	.ascii	"v\000"
	.align	2
.LC6:
	.ascii	"PbZ\000"
	.align	2
.LC7:
	.ascii	"u\000"
	.align	2
.LC8:
	.ascii	"a_x\000"
	.align	2
.LC9:
	.ascii	"a_y\000"
	.align	2
.LC10:
	.ascii	"a_z\000"
	.align	2
.LC11:
	.ascii	"p\000"
	.align	2
.LC12:
	.ascii	"q\000"
	.align	2
.LC13:
	.ascii	"r\000"
	.align	2
.LC14:
	.ascii	"pressure\000"
	.text
	.align	2
	.global	parrot_gettingstarted_com_new_initialize
	.type	parrot_gettingstarted_com_new_initialize, %function
parrot_gettingstarted_com_new_initialize:
	.fnstart
.LFB1:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, fp, lr}
	.save {r4, fp, lr}
.LCFI3:
	.setfp fp, sp, #8
	add	fp, sp, #8
.LCFI4:
	.pad #60
	sub	sp, sp, #60
.LCFI5:
	ldr	r4, .L66+8
.LPIC1:
	add	r4, pc, r4
	mov	r0, #8
	bl	rt_InitInfAndNaN(PLT)
	ldr	r3, .L66+80
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	mov	r0, r3
	mov	r1, #0
	mov	r2, #48
	bl	memset(PLT)
	ldr	r3, .L66+80
	ldr	r3, [r4, r3]
	ldr	r1, [r3, #0]
	mov	r2, #0
	mov	r3, #1073741824
	add	r3, r3, #5832704
	strd	r2, [r1, #32]
	ldr	r3, .L66+80
	ldr	r3, [r4, r3]
	ldr	r1, [r3, #0]
	adr	r3, .L66
	ldrd	r2, [r3]
	strd	r2, [r1, #24]
	ldr	r3, .L66+12
	add	r3, r4, r3
	mov	r2, #0
	str	r2, [r3, #68]
	ldr	r3, .L66+80
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r2, .L66+12
	add	r2, r4, r2
	str	r2, [r3, #4]
	ldr	r3, .L66+80
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #4]
	mov	r2, #0
	str	r2, [r3, #48]
	ldr	r3, .L66+80
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #4]
	mov	r2, #0
	str	r2, [r3, #4]
	ldr	r3, .L66+80
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #4]
	ldr	r2, .L66+16
	add	r2, r4, r2
	str	r2, [r3, #28]
	ldr	r3, .L66+80
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #4]
	ldr	r2, .L66+20
	add	r2, r4, r2
	str	r2, [r3, #32]
	ldr	r3, .L66+80
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #4]
	ldr	r2, .L66+20
	add	r2, r4, r2
	str	r2, [r3, #36]
	ldr	r3, .L66+80
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #4]
	ldr	r2, .L66+24
	add	r2, r4, r2
	str	r2, [r3, #24]
	ldr	r3, .L66+80
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #4]
	mov	r2, #4
	str	r2, [r3, #12]
	ldr	r3, .L66+80
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #4]
	mov	r2, #0
	str	r2, [r3, #16]
	ldr	r3, .L66+80
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #4]
	mov	r2, #1
	str	r2, [r3, #20]
	ldr	r3, .L66+80
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #4]
	ldr	r2, .L66+20
	add	r2, r4, r2
	str	r2, [r3, #40]
	ldr	r3, .L66+80
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #4]
	mov	r2, #0
	str	r2, [r3, #52]
	ldr	r3, .L66+80
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #4]
	mov	r2, #0
	str	r2, [r3, #8]
	ldr	r3, .L66+28
	ldr	r3, [r4, r3]
	ldr	r2, .L66+32	@ float
	str	r2, [r3, #0]	@ float
	ldr	r3, .L66+28
	ldr	r3, [r4, r3]
	ldr	r2, .L66+32	@ float
	str	r2, [r3, #4]	@ float
	ldr	r3, .L66+28
	ldr	r3, [r4, r3]
	ldr	r2, .L66+32	@ float
	str	r2, [r3, #8]	@ float
	ldr	r3, .L66+28
	ldr	r3, [r4, r3]
	ldr	r2, .L66+32	@ float
	str	r2, [r3, #12]	@ float
	ldr	r3, .L66+36
	ldr	r3, [r4, r3]
	mov	r2, #0
	strb	r2, [r3, #0]
	ldr	r3, .L66+76
	ldr	r3, [r4, r3]
	mov	r0, r3
	mov	r1, #0
	mov	r2, #44
	bl	memset(PLT)
	ldr	r3, .L66+40
	ldr	r3, [r4, r3]
	mov	r0, r3
	mov	r1, #0
	mov	r2, #36
	bl	memset(PLT)
	ldr	r3, .L66+44
	ldr	r3, [r4, r3]
	mov	r0, r3
	mov	r1, #0
	mov	r2, #2496
	bl	memset(PLT)
	ldr	r3, .L66+48
	ldr	r3, [r4, r3]
	mov	r0, r3
	mov	r1, #0
	mov	r2, #20
	bl	memset(PLT)
	ldr	r3, .L66+80
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	ip, [r3, #4]
	ldr	r3, .L66+80
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r0, [r3, #32]
	ldr	r3, .L66+80
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #24]
	ldr	lr, .L66+80
	ldr	lr, [r4, lr]
	ldr	lr, [lr, #0]
	strd	r0, [sp]
	strd	r2, [sp, #8]
	str	lr, [sp, #16]
	mov	r0, ip
	mov	r2, #0
	mov	r3, #0
	bl	rt_StartDataLoggingWithStartTime(PLT)
	ldr	r3, .L66+80
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	ip, [r3, #4]
	ldr	r3, .L66+80
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r0, [r3, #32]
	ldr	r3, .L66+80
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #24]
	ldr	lr, .L66+80
	ldr	lr, [r4, lr]
	ldr	lr, [lr, #0]
	strd	r0, [sp]
	strd	r2, [sp, #8]
	str	lr, [sp, #16]
	ldr	r3, .L66+52
	add	r3, r4, r3
	str	r3, [sp, #20]
	mov	r3, #1
	str	r3, [sp, #24]
	mov	r3, #0
	str	r3, [sp, #28]
	mov	r3, #1
	str	r3, [sp, #32]
	adr	r3, .L66
	ldrd	r2, [r3]
	strd	r2, [sp, #40]
	ldr	r3, .L66+56
	add	r3, r4, r3
	str	r3, [sp, #48]
	ldr	r3, .L66+60
	add	r3, r4, r3
	str	r3, [sp, #52]
	mov	r0, ip
	mov	r2, #0
	mov	r3, #0
	bl	rt_CreateStructLogVar(PLT)
	mov	r2, r0
	ldr	r3, .L66+76
	ldr	r3, [r4, r3]
	str	r2, [r3, #0]
	ldr	r3, .L66+76
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L56
.L44:
	ldr	r3, .L66+80
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	ip, [r3, #4]
	ldr	r3, .L66+80
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r0, [r3, #32]
	ldr	r3, .L66+80
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #24]
	ldr	lr, .L66+80
	ldr	lr, [r4, lr]
	ldr	lr, [lr, #0]
	strd	r0, [sp]
	strd	r2, [sp, #8]
	str	lr, [sp, #16]
	ldr	r3, .L66+64
	add	r3, r4, r3
	str	r3, [sp, #20]
	mov	r3, #1
	str	r3, [sp, #24]
	mov	r3, #0
	str	r3, [sp, #28]
	mov	r3, #1
	str	r3, [sp, #32]
	adr	r3, .L66
	ldrd	r2, [r3]
	strd	r2, [sp, #40]
	ldr	r3, .L66+68
	add	r3, r4, r3
	b	.L67
.L68:
	.align	3
.L66:
	.word	1202590843
	.word	1064598241
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+8)
	.word	rt_DataLoggingInfo.3508(GOTOFF)
	.word	.LC1(GOTOFF)
	.word	.LC2(GOTOFF)
	.word	.LC3(GOTOFF)
	.word	motors_outport(GOT)
	.word	0
	.word	flag_outport(GOT)
	.word	cmd_inport(GOT)
	.word	sensor_inport(GOT)
	.word	parrot_gettingstarted_com_new_Y(GOT)
	.word	.LC4(GOTOFF)
	.word	rt_ToWksSignalInfo.3520(GOTOFF)
	.word	rt_ToWksBlockName.3521(GOTOFF)
	.word	.LC5(GOTOFF)
	.word	rt_ToWksSignalInfo.3533(GOTOFF)
	.word	rt_ToWksBlockName.3534(GOTOFF)
	.word	parrot_gettingstarted_com_ne_DW(GOT)
	.word	parrot_gettingstarted_com_ne_M(GOT)
	.word	.LC6(GOTOFF)
.L67:
	str	r3, [sp, #48]
	ldr	r3, .L66+72
	add	r3, r4, r3
	str	r3, [sp, #52]
	mov	r0, ip
	mov	r2, #0
	mov	r3, #0
	bl	rt_CreateStructLogVar(PLT)
	mov	r2, r0
	ldr	r3, .L66+76
	ldr	r3, [r4, r3]
	str	r2, [r3, #4]
	ldr	r3, .L66+76
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L57
.L46:
	ldr	r3, .L66+80
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	ip, [r3, #4]
	ldr	r3, .L66+80
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r0, [r3, #32]
	ldr	r3, .L66+80
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #24]
	ldr	lr, .L66+80
	ldr	lr, [r4, lr]
	ldr	lr, [lr, #0]
	strd	r0, [sp]
	strd	r2, [sp, #8]
	str	lr, [sp, #16]
	ldr	r3, .L66+84
	add	r3, r4, r3
	str	r3, [sp, #20]
	mov	r3, #1
	str	r3, [sp, #24]
	mov	r3, #0
	str	r3, [sp, #28]
	mov	r3, #1
	str	r3, [sp, #32]
	adr	r3, .L69
	ldrd	r2, [r3]
	strd	r2, [sp, #40]
	ldr	r3, .L69+8
	add	r3, r4, r3
	str	r3, [sp, #48]
	ldr	r3, .L69+12
	add	r3, r4, r3
	str	r3, [sp, #52]
	mov	r0, ip
	mov	r2, #0
	mov	r3, #0
	bl	rt_CreateStructLogVar(PLT)
	mov	r2, r0
	ldr	r3, .L69+16
	ldr	r3, [r4, r3]
	str	r2, [r3, #8]
	ldr	r3, .L69+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L58
.L47:
	ldr	r3, .L69+68
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	ip, [r3, #4]
	ldr	r3, .L69+68
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r0, [r3, #32]
	ldr	r3, .L69+68
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #24]
	ldr	lr, .L69+68
	ldr	lr, [r4, lr]
	ldr	lr, [lr, #0]
	strd	r0, [sp]
	strd	r2, [sp, #8]
	str	lr, [sp, #16]
	ldr	r3, .L69+20
	add	r3, r4, r3
	str	r3, [sp, #20]
	mov	r3, #1
	str	r3, [sp, #24]
	mov	r3, #0
	str	r3, [sp, #28]
	mov	r3, #1
	str	r3, [sp, #32]
	adr	r3, .L69
	ldrd	r2, [r3]
	strd	r2, [sp, #40]
	ldr	r3, .L69+24
	add	r3, r4, r3
	str	r3, [sp, #48]
	ldr	r3, .L69+28
	add	r3, r4, r3
	str	r3, [sp, #52]
	mov	r0, ip
	mov	r2, #0
	mov	r3, #0
	bl	rt_CreateStructLogVar(PLT)
	mov	r2, r0
	ldr	r3, .L69+16
	ldr	r3, [r4, r3]
	str	r2, [r3, #12]
	ldr	r3, .L69+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L59
.L48:
	ldr	r3, .L69+68
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	ip, [r3, #4]
	ldr	r3, .L69+68
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r0, [r3, #32]
	ldr	r3, .L69+68
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #24]
	ldr	lr, .L69+68
	ldr	lr, [r4, lr]
	ldr	lr, [lr, #0]
	strd	r0, [sp]
	strd	r2, [sp, #8]
	str	lr, [sp, #16]
	ldr	r3, .L69+32
	add	r3, r4, r3
	str	r3, [sp, #20]
	mov	r3, #1
	str	r3, [sp, #24]
	mov	r3, #0
	str	r3, [sp, #28]
	mov	r3, #1
	str	r3, [sp, #32]
	adr	r3, .L69
	ldrd	r2, [r3]
	strd	r2, [sp, #40]
	ldr	r3, .L69+36
	add	r3, r4, r3
	str	r3, [sp, #48]
	ldr	r3, .L69+40
	add	r3, r4, r3
	str	r3, [sp, #52]
	mov	r0, ip
	mov	r2, #0
	mov	r3, #0
	bl	rt_CreateStructLogVar(PLT)
	mov	r2, r0
	ldr	r3, .L69+16
	ldr	r3, [r4, r3]
	str	r2, [r3, #16]
	ldr	r3, .L69+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L60
.L49:
	ldr	r3, .L69+68
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	ip, [r3, #4]
	ldr	r3, .L69+68
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r0, [r3, #32]
	ldr	r3, .L69+68
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #24]
	ldr	lr, .L69+68
	ldr	lr, [r4, lr]
	ldr	lr, [lr, #0]
	strd	r0, [sp]
	strd	r2, [sp, #8]
	str	lr, [sp, #16]
	ldr	r3, .L69+44
	add	r3, r4, r3
	str	r3, [sp, #20]
	mov	r3, #1
	str	r3, [sp, #24]
	mov	r3, #0
	str	r3, [sp, #28]
	mov	r3, #1
	str	r3, [sp, #32]
	adr	r3, .L69
	ldrd	r2, [r3]
	strd	r2, [sp, #40]
	ldr	r3, .L69+48
	add	r3, r4, r3
	str	r3, [sp, #48]
	ldr	r3, .L69+52
	add	r3, r4, r3
	str	r3, [sp, #52]
	mov	r0, ip
	mov	r2, #0
	mov	r3, #0
	bl	rt_CreateStructLogVar(PLT)
	mov	r2, r0
	ldr	r3, .L69+16
	ldr	r3, [r4, r3]
	str	r2, [r3, #20]
	ldr	r3, .L69+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L61
.L50:
	ldr	r3, .L69+68
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	ip, [r3, #4]
	ldr	r3, .L69+68
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r0, [r3, #32]
	ldr	r3, .L69+68
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #24]
	ldr	lr, .L69+68
	ldr	lr, [r4, lr]
	ldr	lr, [lr, #0]
	strd	r0, [sp]
	strd	r2, [sp, #8]
	str	lr, [sp, #16]
	ldr	r3, .L69+56
	add	r3, r4, r3
	str	r3, [sp, #20]
	mov	r3, #1
	str	r3, [sp, #24]
	mov	r3, #0
	str	r3, [sp, #28]
	mov	r3, #1
	str	r3, [sp, #32]
	adr	r3, .L69
	ldrd	r2, [r3]
	strd	r2, [sp, #40]
	ldr	r3, .L69+60
	add	r3, r4, r3
	str	r3, [sp, #48]
	ldr	r3, .L69+64
	add	r3, r4, r3
	str	r3, [sp, #52]
	mov	r0, ip
	mov	r2, #0
	mov	r3, #0
	bl	rt_CreateStructLogVar(PLT)
	mov	r2, r0
	ldr	r3, .L69+16
	ldr	r3, [r4, r3]
	str	r2, [r3, #24]
	ldr	r3, .L69+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L62
.L51:
	ldr	r3, .L69+68
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	ip, [r3, #4]
	ldr	r3, .L69+68
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r0, [r3, #32]
	ldr	r3, .L69+68
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	b	.L70
.L71:
	.align	3
.L69:
	.word	1202590843
	.word	1064598241
	.word	rt_ToWksSignalInfo.3546(GOTOFF)
	.word	rt_ToWksBlockName.3547(GOTOFF)
	.word	parrot_gettingstarted_com_ne_DW(GOT)
	.word	.LC7(GOTOFF)
	.word	rt_ToWksSignalInfo.3559(GOTOFF)
	.word	rt_ToWksBlockName.3560(GOTOFF)
	.word	.LC8(GOTOFF)
	.word	rt_ToWksSignalInfo.3572(GOTOFF)
	.word	rt_ToWksBlockName.3573(GOTOFF)
	.word	.LC9(GOTOFF)
	.word	rt_ToWksSignalInfo.3585(GOTOFF)
	.word	rt_ToWksBlockName.3586(GOTOFF)
	.word	.LC10(GOTOFF)
	.word	rt_ToWksSignalInfo.3598(GOTOFF)
	.word	rt_ToWksBlockName.3599(GOTOFF)
	.word	parrot_gettingstarted_com_ne_M(GOT)
	.word	.LC11(GOTOFF)
.L70:
	ldrd	r2, [r3, #24]
	ldr	lr, .L69+68
	ldr	lr, [r4, lr]
	ldr	lr, [lr, #0]
	strd	r0, [sp]
	strd	r2, [sp, #8]
	str	lr, [sp, #16]
	ldr	r3, .L69+72
	add	r3, r4, r3
	str	r3, [sp, #20]
	mov	r3, #1
	str	r3, [sp, #24]
	mov	r3, #0
	str	r3, [sp, #28]
	mov	r3, #1
	str	r3, [sp, #32]
	adr	r3, .L72
	ldrd	r2, [r3]
	strd	r2, [sp, #40]
	ldr	r3, .L72+8
	add	r3, r4, r3
	str	r3, [sp, #48]
	ldr	r3, .L72+12
	add	r3, r4, r3
	str	r3, [sp, #52]
	mov	r0, ip
	mov	r2, #0
	mov	r3, #0
	bl	rt_CreateStructLogVar(PLT)
	mov	r2, r0
	ldr	r3, .L72+16
	ldr	r3, [r4, r3]
	str	r2, [r3, #28]
	ldr	r3, .L72+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #28]
	cmp	r3, #0
	beq	.L63
.L52:
	ldr	r3, .L72+20
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	ip, [r3, #4]
	ldr	r3, .L72+20
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r0, [r3, #32]
	ldr	r3, .L72+20
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #24]
	ldr	lr, .L72+20
	ldr	lr, [r4, lr]
	ldr	lr, [lr, #0]
	strd	r0, [sp]
	strd	r2, [sp, #8]
	str	lr, [sp, #16]
	ldr	r3, .L72+24
	add	r3, r4, r3
	str	r3, [sp, #20]
	mov	r3, #1
	str	r3, [sp, #24]
	mov	r3, #0
	str	r3, [sp, #28]
	mov	r3, #1
	str	r3, [sp, #32]
	adr	r3, .L72
	ldrd	r2, [r3]
	strd	r2, [sp, #40]
	ldr	r3, .L72+28
	add	r3, r4, r3
	str	r3, [sp, #48]
	ldr	r3, .L72+32
	add	r3, r4, r3
	str	r3, [sp, #52]
	mov	r0, ip
	mov	r2, #0
	mov	r3, #0
	bl	rt_CreateStructLogVar(PLT)
	mov	r2, r0
	ldr	r3, .L72+16
	ldr	r3, [r4, r3]
	str	r2, [r3, #32]
	ldr	r3, .L72+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #32]
	cmp	r3, #0
	beq	.L64
.L53:
	ldr	r3, .L72+20
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	ip, [r3, #4]
	ldr	r3, .L72+20
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r0, [r3, #32]
	ldr	r3, .L72+20
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #24]
	ldr	lr, .L72+20
	ldr	lr, [r4, lr]
	ldr	lr, [lr, #0]
	strd	r0, [sp]
	strd	r2, [sp, #8]
	str	lr, [sp, #16]
	ldr	r3, .L72+36
	add	r3, r4, r3
	str	r3, [sp, #20]
	mov	r3, #1
	str	r3, [sp, #24]
	mov	r3, #0
	str	r3, [sp, #28]
	mov	r3, #1
	str	r3, [sp, #32]
	adr	r3, .L72
	ldrd	r2, [r3]
	strd	r2, [sp, #40]
	ldr	r3, .L72+40
	add	r3, r4, r3
	str	r3, [sp, #48]
	ldr	r3, .L72+44
	add	r3, r4, r3
	str	r3, [sp, #52]
	mov	r0, ip
	mov	r2, #0
	mov	r3, #0
	bl	rt_CreateStructLogVar(PLT)
	mov	r2, r0
	ldr	r3, .L72+16
	ldr	r3, [r4, r3]
	str	r2, [r3, #36]
	ldr	r3, .L72+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #36]
	cmp	r3, #0
	beq	.L65
.L54:
	ldr	r3, .L72+20
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	ip, [r3, #4]
	ldr	r3, .L72+20
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r0, [r3, #32]
	ldr	r3, .L72+20
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #24]
	ldr	lr, .L72+20
	ldr	lr, [r4, lr]
	ldr	lr, [lr, #0]
	strd	r0, [sp]
	strd	r2, [sp, #8]
	str	lr, [sp, #16]
	ldr	r3, .L72+48
	add	r3, r4, r3
	str	r3, [sp, #20]
	mov	r3, #1
	str	r3, [sp, #24]
	mov	r3, #0
	str	r3, [sp, #28]
	mov	r3, #1
	str	r3, [sp, #32]
	adr	r3, .L72
	ldrd	r2, [r3]
	strd	r2, [sp, #40]
	ldr	r3, .L72+52
	add	r3, r4, r3
	str	r3, [sp, #48]
	ldr	r3, .L72+56
	add	r3, r4, r3
	str	r3, [sp, #52]
	mov	r0, ip
	mov	r2, #0
	mov	r3, #0
	bl	rt_CreateStructLogVar(PLT)
	mov	r2, r0
	ldr	r3, .L72+16
	ldr	r3, [r4, r3]
	str	r2, [r3, #40]
	ldr	r3, .L72+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #40]
	cmp	r3, #0
	b	.L55
.L56:
	mov	r0, r0	@ nop
	b	.L55
.L57:
	mov	r0, r0	@ nop
	b	.L55
.L58:
	mov	r0, r0	@ nop
	b	.L55
.L59:
	mov	r0, r0	@ nop
	b	.L55
.L60:
	mov	r0, r0	@ nop
	b	.L55
.L61:
	mov	r0, r0	@ nop
	b	.L55
.L62:
	mov	r0, r0	@ nop
	b	.L55
.L63:
	mov	r0, r0	@ nop
	b	.L55
.L64:
	mov	r0, r0	@ nop
	b	.L55
.L65:
	mov	r0, r0	@ nop
.L55:
	sub	sp, fp, #8
	ldmfd	sp!, {r4, fp, pc}
.L73:
	.align	3
.L72:
	.word	1202590843
	.word	1064598241
	.word	rt_ToWksSignalInfo.3611(GOTOFF)
	.word	rt_ToWksBlockName.3612(GOTOFF)
	.word	parrot_gettingstarted_com_ne_DW(GOT)
	.word	parrot_gettingstarted_com_ne_M(GOT)
	.word	.LC12(GOTOFF)
	.word	rt_ToWksSignalInfo.3624(GOTOFF)
	.word	rt_ToWksBlockName.3625(GOTOFF)
	.word	.LC13(GOTOFF)
	.word	rt_ToWksSignalInfo.3637(GOTOFF)
	.word	rt_ToWksBlockName.3638(GOTOFF)
	.word	.LC14(GOTOFF)
	.word	rt_ToWksSignalInfo.3650(GOTOFF)
	.word	rt_ToWksBlockName.3651(GOTOFF)
.LFE1:
	.fnend
	.size	parrot_gettingstarted_com_new_initialize, .-parrot_gettingstarted_com_new_initialize
	.align	2
	.global	parrot_gettingstarted_com_new_terminate
	.type	parrot_gettingstarted_com_new_terminate, %function
parrot_gettingstarted_com_new_terminate:
	.fnstart
.LFB2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.save {fp}
.LCFI6:
	.setfp fp, sp, #0
	add	fp, sp, #0
.LCFI7:
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.LFE2:
	.fnend
	.size	parrot_gettingstarted_com_new_terminate, .-parrot_gettingstarted_com_new_terminate
	.local	rt_DataLoggingInfo.3508
	.comm	rt_DataLoggingInfo.3508,72,4
	.section	.data.rel.local,"aw",%progbits
	.align	2
	.type	rt_ToWksSignalInfo.3520, %object
	.size	rt_ToWksSignalInfo.3520, 76
rt_ToWksSignalInfo.3520:
	.word	1
	.word	rt_ToWksWidths.3509
	.word	rt_ToWksNumDimensions.3510
	.word	rt_ToWksDimensions.3511
	.word	rt_ToWksIsVarDims.3512
	.word	rt_ToWksCurrSigDims.3513
	.word	rt_ToWksCurrSigDimsSize.3514
	.word	rt_ToWksDataTypeIds.3515
	.word	rt_ToWksComplexSignals.3516
	.word	rt_ToWksFrameData.3517
	.word	rt_ToWksLoggingPreprocessingFcnPtrs.3518
	.word	rt_ToWksLabels.3519
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.rodata
	.align	2
	.type	rt_ToWksBlockName.3521, %object
	.size	rt_ToWksBlockName.3521, 66
rt_ToWksBlockName.3521:
	.ascii	"parrot_gettingstarted_com_new/Flight_Control_System"
	.ascii	"/To Workspace1\000"
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksSignalInfo.3533, %object
	.size	rt_ToWksSignalInfo.3533, 76
rt_ToWksSignalInfo.3533:
	.word	1
	.word	rt_ToWksWidths.3522
	.word	rt_ToWksNumDimensions.3523
	.word	rt_ToWksDimensions.3524
	.word	rt_ToWksIsVarDims.3525
	.word	rt_ToWksCurrSigDims.3526
	.word	rt_ToWksCurrSigDimsSize.3527
	.word	rt_ToWksDataTypeIds.3528
	.word	rt_ToWksComplexSignals.3529
	.word	rt_ToWksFrameData.3530
	.word	rt_ToWksLoggingPreprocessingFcnPtrs.3531
	.word	rt_ToWksLabels.3532
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.rodata
	.align	2
	.type	rt_ToWksBlockName.3534, %object
	.size	rt_ToWksBlockName.3534, 67
rt_ToWksBlockName.3534:
	.ascii	"parrot_gettingstarted_com_new/Flight_Control_System"
	.ascii	"/To Workspace10\000"
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksSignalInfo.3546, %object
	.size	rt_ToWksSignalInfo.3546, 76
rt_ToWksSignalInfo.3546:
	.word	1
	.word	rt_ToWksWidths.3535
	.word	rt_ToWksNumDimensions.3536
	.word	rt_ToWksDimensions.3537
	.word	rt_ToWksIsVarDims.3538
	.word	rt_ToWksCurrSigDims.3539
	.word	rt_ToWksCurrSigDimsSize.3540
	.word	rt_ToWksDataTypeIds.3541
	.word	rt_ToWksComplexSignals.3542
	.word	rt_ToWksFrameData.3543
	.word	rt_ToWksLoggingPreprocessingFcnPtrs.3544
	.word	rt_ToWksLabels.3545
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.rodata
	.align	2
	.type	rt_ToWksBlockName.3547, %object
	.size	rt_ToWksBlockName.3547, 67
rt_ToWksBlockName.3547:
	.ascii	"parrot_gettingstarted_com_new/Flight_Control_System"
	.ascii	"/To Workspace11\000"
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksSignalInfo.3559, %object
	.size	rt_ToWksSignalInfo.3559, 76
rt_ToWksSignalInfo.3559:
	.word	1
	.word	rt_ToWksWidths.3548
	.word	rt_ToWksNumDimensions.3549
	.word	rt_ToWksDimensions.3550
	.word	rt_ToWksIsVarDims.3551
	.word	rt_ToWksCurrSigDims.3552
	.word	rt_ToWksCurrSigDimsSize.3553
	.word	rt_ToWksDataTypeIds.3554
	.word	rt_ToWksComplexSignals.3555
	.word	rt_ToWksFrameData.3556
	.word	rt_ToWksLoggingPreprocessingFcnPtrs.3557
	.word	rt_ToWksLabels.3558
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.rodata
	.align	2
	.type	rt_ToWksBlockName.3560, %object
	.size	rt_ToWksBlockName.3560, 67
rt_ToWksBlockName.3560:
	.ascii	"parrot_gettingstarted_com_new/Flight_Control_System"
	.ascii	"/To Workspace12\000"
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksSignalInfo.3572, %object
	.size	rt_ToWksSignalInfo.3572, 76
rt_ToWksSignalInfo.3572:
	.word	1
	.word	rt_ToWksWidths.3561
	.word	rt_ToWksNumDimensions.3562
	.word	rt_ToWksDimensions.3563
	.word	rt_ToWksIsVarDims.3564
	.word	rt_ToWksCurrSigDims.3565
	.word	rt_ToWksCurrSigDimsSize.3566
	.word	rt_ToWksDataTypeIds.3567
	.word	rt_ToWksComplexSignals.3568
	.word	rt_ToWksFrameData.3569
	.word	rt_ToWksLoggingPreprocessingFcnPtrs.3570
	.word	rt_ToWksLabels.3571
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.rodata
	.align	2
	.type	rt_ToWksBlockName.3573, %object
	.size	rt_ToWksBlockName.3573, 66
rt_ToWksBlockName.3573:
	.ascii	"parrot_gettingstarted_com_new/Flight_Control_System"
	.ascii	"/To Workspace3\000"
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksSignalInfo.3585, %object
	.size	rt_ToWksSignalInfo.3585, 76
rt_ToWksSignalInfo.3585:
	.word	1
	.word	rt_ToWksWidths.3574
	.word	rt_ToWksNumDimensions.3575
	.word	rt_ToWksDimensions.3576
	.word	rt_ToWksIsVarDims.3577
	.word	rt_ToWksCurrSigDims.3578
	.word	rt_ToWksCurrSigDimsSize.3579
	.word	rt_ToWksDataTypeIds.3580
	.word	rt_ToWksComplexSignals.3581
	.word	rt_ToWksFrameData.3582
	.word	rt_ToWksLoggingPreprocessingFcnPtrs.3583
	.word	rt_ToWksLabels.3584
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.rodata
	.align	2
	.type	rt_ToWksBlockName.3586, %object
	.size	rt_ToWksBlockName.3586, 66
rt_ToWksBlockName.3586:
	.ascii	"parrot_gettingstarted_com_new/Flight_Control_System"
	.ascii	"/To Workspace4\000"
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksSignalInfo.3598, %object
	.size	rt_ToWksSignalInfo.3598, 76
rt_ToWksSignalInfo.3598:
	.word	1
	.word	rt_ToWksWidths.3587
	.word	rt_ToWksNumDimensions.3588
	.word	rt_ToWksDimensions.3589
	.word	rt_ToWksIsVarDims.3590
	.word	rt_ToWksCurrSigDims.3591
	.word	rt_ToWksCurrSigDimsSize.3592
	.word	rt_ToWksDataTypeIds.3593
	.word	rt_ToWksComplexSignals.3594
	.word	rt_ToWksFrameData.3595
	.word	rt_ToWksLoggingPreprocessingFcnPtrs.3596
	.word	rt_ToWksLabels.3597
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.rodata
	.align	2
	.type	rt_ToWksBlockName.3599, %object
	.size	rt_ToWksBlockName.3599, 66
rt_ToWksBlockName.3599:
	.ascii	"parrot_gettingstarted_com_new/Flight_Control_System"
	.ascii	"/To Workspace5\000"
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksSignalInfo.3611, %object
	.size	rt_ToWksSignalInfo.3611, 76
rt_ToWksSignalInfo.3611:
	.word	1
	.word	rt_ToWksWidths.3600
	.word	rt_ToWksNumDimensions.3601
	.word	rt_ToWksDimensions.3602
	.word	rt_ToWksIsVarDims.3603
	.word	rt_ToWksCurrSigDims.3604
	.word	rt_ToWksCurrSigDimsSize.3605
	.word	rt_ToWksDataTypeIds.3606
	.word	rt_ToWksComplexSignals.3607
	.word	rt_ToWksFrameData.3608
	.word	rt_ToWksLoggingPreprocessingFcnPtrs.3609
	.word	rt_ToWksLabels.3610
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.rodata
	.align	2
	.type	rt_ToWksBlockName.3612, %object
	.size	rt_ToWksBlockName.3612, 66
rt_ToWksBlockName.3612:
	.ascii	"parrot_gettingstarted_com_new/Flight_Control_System"
	.ascii	"/To Workspace6\000"
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksSignalInfo.3624, %object
	.size	rt_ToWksSignalInfo.3624, 76
rt_ToWksSignalInfo.3624:
	.word	1
	.word	rt_ToWksWidths.3613
	.word	rt_ToWksNumDimensions.3614
	.word	rt_ToWksDimensions.3615
	.word	rt_ToWksIsVarDims.3616
	.word	rt_ToWksCurrSigDims.3617
	.word	rt_ToWksCurrSigDimsSize.3618
	.word	rt_ToWksDataTypeIds.3619
	.word	rt_ToWksComplexSignals.3620
	.word	rt_ToWksFrameData.3621
	.word	rt_ToWksLoggingPreprocessingFcnPtrs.3622
	.word	rt_ToWksLabels.3623
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.rodata
	.align	2
	.type	rt_ToWksBlockName.3625, %object
	.size	rt_ToWksBlockName.3625, 66
rt_ToWksBlockName.3625:
	.ascii	"parrot_gettingstarted_com_new/Flight_Control_System"
	.ascii	"/To Workspace7\000"
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksSignalInfo.3637, %object
	.size	rt_ToWksSignalInfo.3637, 76
rt_ToWksSignalInfo.3637:
	.word	1
	.word	rt_ToWksWidths.3626
	.word	rt_ToWksNumDimensions.3627
	.word	rt_ToWksDimensions.3628
	.word	rt_ToWksIsVarDims.3629
	.word	rt_ToWksCurrSigDims.3630
	.word	rt_ToWksCurrSigDimsSize.3631
	.word	rt_ToWksDataTypeIds.3632
	.word	rt_ToWksComplexSignals.3633
	.word	rt_ToWksFrameData.3634
	.word	rt_ToWksLoggingPreprocessingFcnPtrs.3635
	.word	rt_ToWksLabels.3636
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.rodata
	.align	2
	.type	rt_ToWksBlockName.3638, %object
	.size	rt_ToWksBlockName.3638, 66
rt_ToWksBlockName.3638:
	.ascii	"parrot_gettingstarted_com_new/Flight_Control_System"
	.ascii	"/To Workspace8\000"
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksSignalInfo.3650, %object
	.size	rt_ToWksSignalInfo.3650, 76
rt_ToWksSignalInfo.3650:
	.word	1
	.word	rt_ToWksWidths.3639
	.word	rt_ToWksNumDimensions.3640
	.word	rt_ToWksDimensions.3641
	.word	rt_ToWksIsVarDims.3642
	.word	rt_ToWksCurrSigDims.3643
	.word	rt_ToWksCurrSigDimsSize.3644
	.word	rt_ToWksDataTypeIds.3645
	.word	rt_ToWksComplexSignals.3646
	.word	rt_ToWksFrameData.3647
	.word	rt_ToWksLoggingPreprocessingFcnPtrs.3648
	.word	rt_ToWksLabels.3649
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.rodata
	.align	2
	.type	rt_ToWksBlockName.3651, %object
	.size	rt_ToWksBlockName.3651, 66
rt_ToWksBlockName.3651:
	.ascii	"parrot_gettingstarted_com_new/Flight_Control_System"
	.ascii	"/To Workspace9\000"
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksLabels.3649, %object
	.size	rt_ToWksLabels.3649, 4
rt_ToWksLabels.3649:
	.word	.LC2
	.local	rt_ToWksLoggingPreprocessingFcnPtrs.3648
	.comm	rt_ToWksLoggingPreprocessingFcnPtrs.3648,4,4
	.local	rt_ToWksFrameData.3647
	.comm	rt_ToWksFrameData.3647,4,4
	.local	rt_ToWksComplexSignals.3646
	.comm	rt_ToWksComplexSignals.3646,4,4
	.data
	.align	2
	.type	rt_ToWksDataTypeIds.3645, %object
	.size	rt_ToWksDataTypeIds.3645, 4
rt_ToWksDataTypeIds.3645:
	.word	1
	.align	2
	.type	rt_ToWksCurrSigDimsSize.3644, %object
	.size	rt_ToWksCurrSigDimsSize.3644, 4
rt_ToWksCurrSigDimsSize.3644:
	.word	4
	.local	rt_ToWksCurrSigDims.3643
	.comm	rt_ToWksCurrSigDims.3643,4,4
	.local	rt_ToWksIsVarDims.3642
	.comm	rt_ToWksIsVarDims.3642,1,4
	.align	2
	.type	rt_ToWksDimensions.3641, %object
	.size	rt_ToWksDimensions.3641, 4
rt_ToWksDimensions.3641:
	.word	1
	.align	2
	.type	rt_ToWksNumDimensions.3640, %object
	.size	rt_ToWksNumDimensions.3640, 4
rt_ToWksNumDimensions.3640:
	.word	1
	.align	2
	.type	rt_ToWksWidths.3639, %object
	.size	rt_ToWksWidths.3639, 4
rt_ToWksWidths.3639:
	.word	1
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksLabels.3636, %object
	.size	rt_ToWksLabels.3636, 4
rt_ToWksLabels.3636:
	.word	.LC2
	.local	rt_ToWksLoggingPreprocessingFcnPtrs.3635
	.comm	rt_ToWksLoggingPreprocessingFcnPtrs.3635,4,4
	.local	rt_ToWksFrameData.3634
	.comm	rt_ToWksFrameData.3634,4,4
	.local	rt_ToWksComplexSignals.3633
	.comm	rt_ToWksComplexSignals.3633,4,4
	.data
	.align	2
	.type	rt_ToWksDataTypeIds.3632, %object
	.size	rt_ToWksDataTypeIds.3632, 4
rt_ToWksDataTypeIds.3632:
	.word	1
	.align	2
	.type	rt_ToWksCurrSigDimsSize.3631, %object
	.size	rt_ToWksCurrSigDimsSize.3631, 4
rt_ToWksCurrSigDimsSize.3631:
	.word	4
	.local	rt_ToWksCurrSigDims.3630
	.comm	rt_ToWksCurrSigDims.3630,4,4
	.local	rt_ToWksIsVarDims.3629
	.comm	rt_ToWksIsVarDims.3629,1,4
	.align	2
	.type	rt_ToWksDimensions.3628, %object
	.size	rt_ToWksDimensions.3628, 4
rt_ToWksDimensions.3628:
	.word	1
	.align	2
	.type	rt_ToWksNumDimensions.3627, %object
	.size	rt_ToWksNumDimensions.3627, 4
rt_ToWksNumDimensions.3627:
	.word	1
	.align	2
	.type	rt_ToWksWidths.3626, %object
	.size	rt_ToWksWidths.3626, 4
rt_ToWksWidths.3626:
	.word	1
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksLabels.3623, %object
	.size	rt_ToWksLabels.3623, 4
rt_ToWksLabels.3623:
	.word	.LC2
	.local	rt_ToWksLoggingPreprocessingFcnPtrs.3622
	.comm	rt_ToWksLoggingPreprocessingFcnPtrs.3622,4,4
	.local	rt_ToWksFrameData.3621
	.comm	rt_ToWksFrameData.3621,4,4
	.local	rt_ToWksComplexSignals.3620
	.comm	rt_ToWksComplexSignals.3620,4,4
	.data
	.align	2
	.type	rt_ToWksDataTypeIds.3619, %object
	.size	rt_ToWksDataTypeIds.3619, 4
rt_ToWksDataTypeIds.3619:
	.word	1
	.align	2
	.type	rt_ToWksCurrSigDimsSize.3618, %object
	.size	rt_ToWksCurrSigDimsSize.3618, 4
rt_ToWksCurrSigDimsSize.3618:
	.word	4
	.local	rt_ToWksCurrSigDims.3617
	.comm	rt_ToWksCurrSigDims.3617,4,4
	.local	rt_ToWksIsVarDims.3616
	.comm	rt_ToWksIsVarDims.3616,1,4
	.align	2
	.type	rt_ToWksDimensions.3615, %object
	.size	rt_ToWksDimensions.3615, 4
rt_ToWksDimensions.3615:
	.word	1
	.align	2
	.type	rt_ToWksNumDimensions.3614, %object
	.size	rt_ToWksNumDimensions.3614, 4
rt_ToWksNumDimensions.3614:
	.word	1
	.align	2
	.type	rt_ToWksWidths.3613, %object
	.size	rt_ToWksWidths.3613, 4
rt_ToWksWidths.3613:
	.word	1
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksLabels.3610, %object
	.size	rt_ToWksLabels.3610, 4
rt_ToWksLabels.3610:
	.word	.LC2
	.local	rt_ToWksLoggingPreprocessingFcnPtrs.3609
	.comm	rt_ToWksLoggingPreprocessingFcnPtrs.3609,4,4
	.local	rt_ToWksFrameData.3608
	.comm	rt_ToWksFrameData.3608,4,4
	.local	rt_ToWksComplexSignals.3607
	.comm	rt_ToWksComplexSignals.3607,4,4
	.data
	.align	2
	.type	rt_ToWksDataTypeIds.3606, %object
	.size	rt_ToWksDataTypeIds.3606, 4
rt_ToWksDataTypeIds.3606:
	.word	1
	.align	2
	.type	rt_ToWksCurrSigDimsSize.3605, %object
	.size	rt_ToWksCurrSigDimsSize.3605, 4
rt_ToWksCurrSigDimsSize.3605:
	.word	4
	.local	rt_ToWksCurrSigDims.3604
	.comm	rt_ToWksCurrSigDims.3604,4,4
	.local	rt_ToWksIsVarDims.3603
	.comm	rt_ToWksIsVarDims.3603,1,4
	.align	2
	.type	rt_ToWksDimensions.3602, %object
	.size	rt_ToWksDimensions.3602, 4
rt_ToWksDimensions.3602:
	.word	1
	.align	2
	.type	rt_ToWksNumDimensions.3601, %object
	.size	rt_ToWksNumDimensions.3601, 4
rt_ToWksNumDimensions.3601:
	.word	1
	.align	2
	.type	rt_ToWksWidths.3600, %object
	.size	rt_ToWksWidths.3600, 4
rt_ToWksWidths.3600:
	.word	1
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksLabels.3597, %object
	.size	rt_ToWksLabels.3597, 4
rt_ToWksLabels.3597:
	.word	.LC2
	.local	rt_ToWksLoggingPreprocessingFcnPtrs.3596
	.comm	rt_ToWksLoggingPreprocessingFcnPtrs.3596,4,4
	.local	rt_ToWksFrameData.3595
	.comm	rt_ToWksFrameData.3595,4,4
	.local	rt_ToWksComplexSignals.3594
	.comm	rt_ToWksComplexSignals.3594,4,4
	.data
	.align	2
	.type	rt_ToWksDataTypeIds.3593, %object
	.size	rt_ToWksDataTypeIds.3593, 4
rt_ToWksDataTypeIds.3593:
	.word	1
	.align	2
	.type	rt_ToWksCurrSigDimsSize.3592, %object
	.size	rt_ToWksCurrSigDimsSize.3592, 4
rt_ToWksCurrSigDimsSize.3592:
	.word	4
	.local	rt_ToWksCurrSigDims.3591
	.comm	rt_ToWksCurrSigDims.3591,4,4
	.local	rt_ToWksIsVarDims.3590
	.comm	rt_ToWksIsVarDims.3590,1,4
	.align	2
	.type	rt_ToWksDimensions.3589, %object
	.size	rt_ToWksDimensions.3589, 4
rt_ToWksDimensions.3589:
	.word	1
	.align	2
	.type	rt_ToWksNumDimensions.3588, %object
	.size	rt_ToWksNumDimensions.3588, 4
rt_ToWksNumDimensions.3588:
	.word	1
	.align	2
	.type	rt_ToWksWidths.3587, %object
	.size	rt_ToWksWidths.3587, 4
rt_ToWksWidths.3587:
	.word	1
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksLabels.3584, %object
	.size	rt_ToWksLabels.3584, 4
rt_ToWksLabels.3584:
	.word	.LC2
	.local	rt_ToWksLoggingPreprocessingFcnPtrs.3583
	.comm	rt_ToWksLoggingPreprocessingFcnPtrs.3583,4,4
	.local	rt_ToWksFrameData.3582
	.comm	rt_ToWksFrameData.3582,4,4
	.local	rt_ToWksComplexSignals.3581
	.comm	rt_ToWksComplexSignals.3581,4,4
	.data
	.align	2
	.type	rt_ToWksDataTypeIds.3580, %object
	.size	rt_ToWksDataTypeIds.3580, 4
rt_ToWksDataTypeIds.3580:
	.word	1
	.align	2
	.type	rt_ToWksCurrSigDimsSize.3579, %object
	.size	rt_ToWksCurrSigDimsSize.3579, 4
rt_ToWksCurrSigDimsSize.3579:
	.word	4
	.local	rt_ToWksCurrSigDims.3578
	.comm	rt_ToWksCurrSigDims.3578,4,4
	.local	rt_ToWksIsVarDims.3577
	.comm	rt_ToWksIsVarDims.3577,1,4
	.align	2
	.type	rt_ToWksDimensions.3576, %object
	.size	rt_ToWksDimensions.3576, 4
rt_ToWksDimensions.3576:
	.word	1
	.align	2
	.type	rt_ToWksNumDimensions.3575, %object
	.size	rt_ToWksNumDimensions.3575, 4
rt_ToWksNumDimensions.3575:
	.word	1
	.align	2
	.type	rt_ToWksWidths.3574, %object
	.size	rt_ToWksWidths.3574, 4
rt_ToWksWidths.3574:
	.word	1
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksLabels.3571, %object
	.size	rt_ToWksLabels.3571, 4
rt_ToWksLabels.3571:
	.word	.LC2
	.local	rt_ToWksLoggingPreprocessingFcnPtrs.3570
	.comm	rt_ToWksLoggingPreprocessingFcnPtrs.3570,4,4
	.local	rt_ToWksFrameData.3569
	.comm	rt_ToWksFrameData.3569,4,4
	.local	rt_ToWksComplexSignals.3568
	.comm	rt_ToWksComplexSignals.3568,4,4
	.data
	.align	2
	.type	rt_ToWksDataTypeIds.3567, %object
	.size	rt_ToWksDataTypeIds.3567, 4
rt_ToWksDataTypeIds.3567:
	.word	1
	.align	2
	.type	rt_ToWksCurrSigDimsSize.3566, %object
	.size	rt_ToWksCurrSigDimsSize.3566, 4
rt_ToWksCurrSigDimsSize.3566:
	.word	4
	.local	rt_ToWksCurrSigDims.3565
	.comm	rt_ToWksCurrSigDims.3565,4,4
	.local	rt_ToWksIsVarDims.3564
	.comm	rt_ToWksIsVarDims.3564,1,4
	.align	2
	.type	rt_ToWksDimensions.3563, %object
	.size	rt_ToWksDimensions.3563, 4
rt_ToWksDimensions.3563:
	.word	1
	.align	2
	.type	rt_ToWksNumDimensions.3562, %object
	.size	rt_ToWksNumDimensions.3562, 4
rt_ToWksNumDimensions.3562:
	.word	1
	.align	2
	.type	rt_ToWksWidths.3561, %object
	.size	rt_ToWksWidths.3561, 4
rt_ToWksWidths.3561:
	.word	1
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksLabels.3558, %object
	.size	rt_ToWksLabels.3558, 4
rt_ToWksLabels.3558:
	.word	.LC2
	.local	rt_ToWksLoggingPreprocessingFcnPtrs.3557
	.comm	rt_ToWksLoggingPreprocessingFcnPtrs.3557,4,4
	.local	rt_ToWksFrameData.3556
	.comm	rt_ToWksFrameData.3556,4,4
	.local	rt_ToWksComplexSignals.3555
	.comm	rt_ToWksComplexSignals.3555,4,4
	.data
	.align	2
	.type	rt_ToWksDataTypeIds.3554, %object
	.size	rt_ToWksDataTypeIds.3554, 4
rt_ToWksDataTypeIds.3554:
	.word	1
	.align	2
	.type	rt_ToWksCurrSigDimsSize.3553, %object
	.size	rt_ToWksCurrSigDimsSize.3553, 4
rt_ToWksCurrSigDimsSize.3553:
	.word	4
	.local	rt_ToWksCurrSigDims.3552
	.comm	rt_ToWksCurrSigDims.3552,4,4
	.local	rt_ToWksIsVarDims.3551
	.comm	rt_ToWksIsVarDims.3551,1,4
	.align	2
	.type	rt_ToWksDimensions.3550, %object
	.size	rt_ToWksDimensions.3550, 4
rt_ToWksDimensions.3550:
	.word	1
	.align	2
	.type	rt_ToWksNumDimensions.3549, %object
	.size	rt_ToWksNumDimensions.3549, 4
rt_ToWksNumDimensions.3549:
	.word	1
	.align	2
	.type	rt_ToWksWidths.3548, %object
	.size	rt_ToWksWidths.3548, 4
rt_ToWksWidths.3548:
	.word	1
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksLabels.3545, %object
	.size	rt_ToWksLabels.3545, 4
rt_ToWksLabels.3545:
	.word	.LC2
	.local	rt_ToWksLoggingPreprocessingFcnPtrs.3544
	.comm	rt_ToWksLoggingPreprocessingFcnPtrs.3544,4,4
	.local	rt_ToWksFrameData.3543
	.comm	rt_ToWksFrameData.3543,4,4
	.local	rt_ToWksComplexSignals.3542
	.comm	rt_ToWksComplexSignals.3542,4,4
	.data
	.align	2
	.type	rt_ToWksDataTypeIds.3541, %object
	.size	rt_ToWksDataTypeIds.3541, 4
rt_ToWksDataTypeIds.3541:
	.word	1
	.align	2
	.type	rt_ToWksCurrSigDimsSize.3540, %object
	.size	rt_ToWksCurrSigDimsSize.3540, 4
rt_ToWksCurrSigDimsSize.3540:
	.word	4
	.local	rt_ToWksCurrSigDims.3539
	.comm	rt_ToWksCurrSigDims.3539,4,4
	.local	rt_ToWksIsVarDims.3538
	.comm	rt_ToWksIsVarDims.3538,1,4
	.align	2
	.type	rt_ToWksDimensions.3537, %object
	.size	rt_ToWksDimensions.3537, 4
rt_ToWksDimensions.3537:
	.word	1
	.align	2
	.type	rt_ToWksNumDimensions.3536, %object
	.size	rt_ToWksNumDimensions.3536, 4
rt_ToWksNumDimensions.3536:
	.word	1
	.align	2
	.type	rt_ToWksWidths.3535, %object
	.size	rt_ToWksWidths.3535, 4
rt_ToWksWidths.3535:
	.word	1
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksLabels.3532, %object
	.size	rt_ToWksLabels.3532, 4
rt_ToWksLabels.3532:
	.word	.LC2
	.local	rt_ToWksLoggingPreprocessingFcnPtrs.3531
	.comm	rt_ToWksLoggingPreprocessingFcnPtrs.3531,4,4
	.local	rt_ToWksFrameData.3530
	.comm	rt_ToWksFrameData.3530,4,4
	.local	rt_ToWksComplexSignals.3529
	.comm	rt_ToWksComplexSignals.3529,4,4
	.data
	.align	2
	.type	rt_ToWksDataTypeIds.3528, %object
	.size	rt_ToWksDataTypeIds.3528, 4
rt_ToWksDataTypeIds.3528:
	.word	1
	.align	2
	.type	rt_ToWksCurrSigDimsSize.3527, %object
	.size	rt_ToWksCurrSigDimsSize.3527, 4
rt_ToWksCurrSigDimsSize.3527:
	.word	4
	.local	rt_ToWksCurrSigDims.3526
	.comm	rt_ToWksCurrSigDims.3526,4,4
	.local	rt_ToWksIsVarDims.3525
	.comm	rt_ToWksIsVarDims.3525,1,4
	.align	2
	.type	rt_ToWksDimensions.3524, %object
	.size	rt_ToWksDimensions.3524, 4
rt_ToWksDimensions.3524:
	.word	1
	.align	2
	.type	rt_ToWksNumDimensions.3523, %object
	.size	rt_ToWksNumDimensions.3523, 4
rt_ToWksNumDimensions.3523:
	.word	1
	.align	2
	.type	rt_ToWksWidths.3522, %object
	.size	rt_ToWksWidths.3522, 4
rt_ToWksWidths.3522:
	.word	1
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksLabels.3519, %object
	.size	rt_ToWksLabels.3519, 4
rt_ToWksLabels.3519:
	.word	.LC2
	.local	rt_ToWksLoggingPreprocessingFcnPtrs.3518
	.comm	rt_ToWksLoggingPreprocessingFcnPtrs.3518,4,4
	.local	rt_ToWksFrameData.3517
	.comm	rt_ToWksFrameData.3517,4,4
	.local	rt_ToWksComplexSignals.3516
	.comm	rt_ToWksComplexSignals.3516,4,4
	.local	rt_ToWksDataTypeIds.3515
	.comm	rt_ToWksDataTypeIds.3515,4,4
	.data
	.align	2
	.type	rt_ToWksCurrSigDimsSize.3514, %object
	.size	rt_ToWksCurrSigDimsSize.3514, 4
rt_ToWksCurrSigDimsSize.3514:
	.word	4
	.local	rt_ToWksCurrSigDims.3513
	.comm	rt_ToWksCurrSigDims.3513,4,4
	.local	rt_ToWksIsVarDims.3512
	.comm	rt_ToWksIsVarDims.3512,1,4
	.align	2
	.type	rt_ToWksDimensions.3511, %object
	.size	rt_ToWksDimensions.3511, 4
rt_ToWksDimensions.3511:
	.word	4
	.align	2
	.type	rt_ToWksNumDimensions.3510, %object
	.size	rt_ToWksNumDimensions.3510, 4
rt_ToWksNumDimensions.3510:
	.word	1
	.align	2
	.type	rt_ToWksWidths.3509, %object
	.size	rt_ToWksWidths.3509, 4
rt_ToWksWidths.3509:
	.word	4
	.ident	"GCC: (Sourcery G++ Lite 2009q3-67) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
