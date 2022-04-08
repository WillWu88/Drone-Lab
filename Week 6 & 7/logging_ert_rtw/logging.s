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
	.file	"logging.c"
	.comm	cmd_inport,36,4
	.comm	sensor_inport,2496,8
	.comm	motors_outport,16,4
	.comm	flag_outport,1,1
	.comm	logging_DW,48,4
	.comm	logging_Y,20,4
	.local	logging_M_
	.comm	logging_M_,48,8
	.global	logging_M
	.section	.data.rel.ro.local,"aw",%progbits
	.align	2
	.type	logging_M, %object
	.size	logging_M, 4
logging_M:
	.word	logging_M_
	.global	__aeabi_i2d
	.global	__aeabi_dcmplt
	.global	__aeabi_dsub
	.global	__aeabi_dcmpge
	.global	__aeabi_f2d
	.global	__aeabi_dcmpgt
	.global	__aeabi_d2f
	.global	__aeabi_dcmpeq
	.global	__aeabi_dmul
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Simulation finished\000"
	.global	__aeabi_ui2d
	.global	__aeabi_dadd
	.text
	.align	2
	.global	logging_step
	.type	logging_step, %function
logging_step:
	.fnstart
.LFB0:
	@ args = 0, pretend = 0, frame = 112
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, fp, lr}
	.save {r4, r5, r6, r7, fp, lr}
.LCFI0:
	.setfp fp, sp, #20
	add	fp, sp, #20
.LCFI1:
	.pad #112
	sub	sp, sp, #112
.LCFI2:
	ldr	r4, .L55
.LPIC0:
	add	r4, pc, r4
	ldr	r3, .L55+4
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #40]
	mov	r0, r3
	bl	__aeabi_i2d(PLT)
	ldr	r3, .L55+8
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #16]
	mov	ip, #0
	mov	r5, ip
	bl	__aeabi_dcmplt(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L2
.L3:
	mov	r3, #1
	mov	r5, r3
.L2:
	and	r3, r5, #255
	cmp	r3, #0
	beq	.L4
	ldr	r3, .L55+4
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #40]
	cmp	r3, #0
	blt	.L4
	ldr	r3, .L55+8
	ldr	r3, [r4, r3]
	ldrd	r2, [r3]
	b	.L5
.L4:
	mov	r2, #0
	mov	r3, #0
.L5:
	strd	r2, [fp, #-36]
	ldr	r3, .L55+4
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #40]
	mov	r0, r3
	bl	__aeabi_i2d(PLT)
	mov	r6, r0
	mov	r7, r1
	ldr	r3, .L55+8
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #8]
	mov	r0, r2
	mov	r1, r3
	mov	r2, #0
	mov	r3, #1069547520
	add	r3, r3, #3145728
	bl	__aeabi_dsub(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r1, #0
	mov	r5, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dcmpge(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L6
.L7:
	mov	r3, #1
	mov	r5, r3
.L6:
	and	r3, r5, #255
	cmp	r3, #0
	beq	.L8
	ldr	r3, .L55+4
	ldr	r3, [r4, r3]
	mov	r2, #0
	str	r2, [r3, #40]
	b	.L9
.L8:
	ldr	r3, .L55+4
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #40]
	add	r2, r3, #1
	ldr	r3, .L55+4
	ldr	r3, [r4, r3]
	str	r2, [r3, #40]
.L9:
	ldr	r3, .L55+4
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #44]
	mov	r0, r3
	bl	__aeabi_i2d(PLT)
	ldr	r3, .L55+8
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #48]
	mov	ip, #0
	mov	r5, ip
	bl	__aeabi_dcmplt(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L10
.L11:
	mov	r3, #1
	mov	r5, r3
.L10:
	and	r3, r5, #255
	cmp	r3, #0
	beq	.L12
	ldr	r3, .L55+4
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #44]
	cmp	r3, #0
	blt	.L12
	ldr	r3, .L55+8
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #32]
	b	.L13
.L12:
	mov	r2, #0
	mov	r3, #0
.L13:
	strd	r2, [fp, #-28]
	ldr	r3, .L55+4
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #44]
	mov	r0, r3
	bl	__aeabi_i2d(PLT)
	mov	r6, r0
	mov	r7, r1
	ldr	r3, .L55+8
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #40]
	mov	r0, r2
	mov	r1, r3
	mov	r2, #0
	mov	r3, #1069547520
	add	r3, r3, #3145728
	bl	__aeabi_dsub(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r1, #0
	mov	r5, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dcmpge(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L14
.L15:
	mov	r3, #1
	mov	r5, r3
.L14:
	and	r3, r5, #255
	cmp	r3, #0
	beq	.L16
	ldr	r3, .L55+4
	ldr	r3, [r4, r3]
	mov	r2, #0
	str	r2, [r3, #44]
	b	.L17
.L16:
	ldr	r3, .L55+4
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #44]
	add	r2, r3, #1
	ldr	r3, .L55+4
	ldr	r3, [r4, r3]
	str	r2, [r3, #44]
.L17:
	ldr	r3, .L55+8
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #64]	@ float
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r1, #0
	mov	r5, r1
	mov	r0, r2
	mov	r1, r3
	ldrd	r2, [fp, #-36]
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
	ldr	r3, .L55+8
	ldr	r3, [r4, r3]
	ldr	r2, [r3, #64]	@ float
	ldr	r3, .L55+12
	ldr	r3, [r4, r3]
	str	r2, [r3, #0]	@ float
	b	.L21
.L20:
	ldr	r3, .L55+8
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #68]	@ float
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r1, #0
	mov	r5, r1
	mov	r0, r2
	mov	r1, r3
	ldrd	r2, [fp, #-36]
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
	ldr	r3, .L55+8
	ldr	r3, [r4, r3]
	ldr	r2, [r3, #68]	@ float
	ldr	r3, .L55+12
	ldr	r3, [r4, r3]
	str	r2, [r3, #0]	@ float
	b	.L21
.L24:
	ldrd	r0, [fp, #-36]
	bl	__aeabi_d2f(PLT)
	mov	r2, r0
	ldr	r3, .L55+12
	ldr	r3, [r4, r3]
	str	r2, [r3, #0]	@ float
.L21:
	ldr	r3, .L55+12
	ldr	r3, [r4, r3]
	ldr	r2, [r3, #0]	@ float
	ldr	r3, .L55+16
	ldr	r3, [r4, r3]
	str	r2, [r3, #0]	@ float
	ldr	r3, .L55+8
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #64]	@ float
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r1, #0
	mov	r5, r1
	mov	r0, r2
	mov	r1, r3
	ldrd	r2, [fp, #-28]
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
	ldr	r3, .L55+8
	ldr	r3, [r4, r3]
	ldr	r2, [r3, #64]	@ float
	ldr	r3, .L55+12
	ldr	r3, [r4, r3]
	str	r2, [r3, #4]	@ float
	b	.L28
.L27:
	ldr	r3, .L55+8
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #68]	@ float
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r1, #0
	mov	r5, r1
	mov	r0, r2
	mov	r1, r3
	ldrd	r2, [fp, #-28]
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
	ldr	r3, .L55+8
	ldr	r3, [r4, r3]
	ldr	r2, [r3, #68]	@ float
	ldr	r3, .L55+12
	ldr	r3, [r4, r3]
	str	r2, [r3, #4]	@ float
	b	.L28
.L31:
	ldrd	r0, [fp, #-28]
	bl	__aeabi_d2f(PLT)
	mov	r2, r0
	ldr	r3, .L55+12
	ldr	r3, [r4, r3]
	str	r2, [r3, #4]	@ float
.L28:
	ldr	r3, .L55+12
	ldr	r3, [r4, r3]
	ldr	r2, [r3, #4]	@ float
	ldr	r3, .L55+16
	ldr	r3, [r4, r3]
	str	r2, [r3, #4]	@ float
	ldr	r3, .L55+8
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #64]	@ float
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r1, #0
	mov	r5, r1
	mov	r0, r2
	mov	r1, r3
	ldrd	r2, [fp, #-36]
	bl	__aeabi_dcmplt(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L32
.L33:
	mov	r3, #1
	mov	r5, r3
.L32:
	and	r3, r5, #255
	cmp	r3, #0
	beq	.L34
	ldr	r3, .L55+8
	ldr	r3, [r4, r3]
	ldr	r2, [r3, #64]	@ float
	ldr	r3, .L55+12
	ldr	r3, [r4, r3]
	str	r2, [r3, #8]	@ float
	b	.L35
.L34:
	ldr	r3, .L55+8
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #68]	@ float
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r1, #0
	mov	r5, r1
	mov	r0, r2
	mov	r1, r3
	ldrd	r2, [fp, #-36]
	bl	__aeabi_dcmpgt(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L36
.L37:
	mov	r3, #1
	mov	r5, r3
.L36:
	and	r3, r5, #255
	cmp	r3, #0
	beq	.L38
	ldr	r3, .L55+8
	ldr	r3, [r4, r3]
	ldr	r2, [r3, #68]	@ float
	ldr	r3, .L55+12
	ldr	r3, [r4, r3]
	str	r2, [r3, #8]	@ float
	b	.L35
.L38:
	ldrd	r0, [fp, #-36]
	bl	__aeabi_d2f(PLT)
	mov	r2, r0
	ldr	r3, .L55+12
	ldr	r3, [r4, r3]
	str	r2, [r3, #8]	@ float
.L35:
	ldr	r3, .L55+12
	ldr	r3, [r4, r3]
	ldr	r2, [r3, #8]	@ float
	ldr	r3, .L55+16
	ldr	r3, [r4, r3]
	str	r2, [r3, #8]	@ float
	ldr	r3, .L55+8
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #64]	@ float
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r1, #0
	mov	r5, r1
	mov	r0, r2
	mov	r1, r3
	ldrd	r2, [fp, #-28]
	bl	__aeabi_dcmplt(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L39
.L40:
	mov	r3, #1
	mov	r5, r3
.L39:
	and	r3, r5, #255
	cmp	r3, #0
	beq	.L41
	ldr	r3, .L55+8
	ldr	r3, [r4, r3]
	ldr	r2, [r3, #64]	@ float
	ldr	r3, .L55+12
	ldr	r3, [r4, r3]
	str	r2, [r3, #12]	@ float
	b	.L42
.L41:
	ldr	r3, .L55+8
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #68]	@ float
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r1, #0
	mov	r5, r1
	mov	r0, r2
	mov	r1, r3
	ldrd	r2, [fp, #-28]
	bl	__aeabi_dcmpgt(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L43
.L44:
	mov	r3, #1
	mov	r5, r3
.L43:
	and	r3, r5, #255
	cmp	r3, #0
	beq	.L45
	ldr	r3, .L55+8
	ldr	r3, [r4, r3]
	ldr	r2, [r3, #68]	@ float
	ldr	r3, .L55+12
	ldr	r3, [r4, r3]
	str	r2, [r3, #12]	@ float
	b	.L42
.L45:
	ldrd	r0, [fp, #-28]
	bl	__aeabi_d2f(PLT)
	mov	r2, r0
	ldr	r3, .L55+12
	ldr	r3, [r4, r3]
	str	r2, [r3, #12]	@ float
.L42:
	ldr	r3, .L55+12
	ldr	r3, [r4, r3]
	ldr	r2, [r3, #12]	@ float
	ldr	r3, .L55+16
	ldr	r3, [r4, r3]
	str	r2, [r3, #12]	@ float
	ldr	r3, .L55+8
	ldr	r3, [r4, r3]
	ldrb	r3, [r3, #74]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L46
	ldr	r3, .L55+8
	ldr	r3, [r4, r3]
	ldrb	r2, [r3, #72]	@ zero_extendqisi2
	ldr	r3, .L55+20
	ldr	r3, [r4, r3]
	strb	r2, [r3, #0]
	b	.L47
.L46:
	ldr	r3, .L55+8
	ldr	r3, [r4, r3]
	ldrb	r2, [r3, #73]	@ zero_extendqisi2
	ldr	r3, .L55+20
	ldr	r3, [r4, r3]
	strb	r2, [r3, #0]
.L47:
	ldr	r3, .L55+20
	ldr	r3, [r4, r3]
	ldrb	r2, [r3, #0]	@ zero_extendqisi2
	ldr	r3, .L55+16
	ldr	r3, [r4, r3]
	strb	r2, [r3, #16]
	ldr	r3, .L55+24
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #52]	@ float
	str	r3, [fp, #-52]	@ float
	ldr	r3, .L55+28
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #8]
	strd	r2, [fp, #-60]
	ldr	r3, .L55+4
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	mov	r1, r3
	sub	r2, fp, #60
	sub	r3, fp, #52
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	rt_UpdateStructLogVar(PLT)
	ldr	r3, .L55+24
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]	@ float
	str	r3, [fp, #-48]	@ float
	ldr	r3, .L55+24
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #4]	@ float
	str	r3, [fp, #-44]	@ float
	ldr	r3, .L55+24
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #8]	@ float
	str	r3, [fp, #-40]	@ float
	ldr	r3, .L55+28
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #8]
	strd	r2, [fp, #-68]
	ldr	r3, .L55+4
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #4]
	mov	r1, r3
	sub	r2, fp, #68
	sub	r3, fp, #48
	add	r3, r3, #4
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	rt_UpdateStructLogVar(PLT)
	ldr	r3, .L55+24
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #56]	@ float
	str	r3, [fp, #-52]	@ float
	ldr	r3, .L55+28
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #8]
	strd	r2, [fp, #-76]
	ldr	r3, .L55+4
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #8]
	mov	r1, r3
	sub	r2, fp, #76
	sub	r3, fp, #52
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	rt_UpdateStructLogVar(PLT)
	ldr	r3, .L55+24
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #60]	@ float
	str	r3, [fp, #-52]	@ float
	ldr	r3, .L55+28
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #8]
	strd	r2, [fp, #-84]
	ldr	r3, .L55+4
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #12]
	mov	r1, r3
	sub	r2, fp, #84
	sub	r3, fp, #52
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	rt_UpdateStructLogVar(PLT)
	ldr	r3, .L55+24
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #68]	@ float
	str	r3, [fp, #-52]	@ float
	ldr	r3, .L55+28
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #8]
	strd	r2, [fp, #-92]
	ldr	r3, .L55+4
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #16]
	mov	r1, r3
	sub	r2, fp, #92
	sub	r3, fp, #52
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	rt_UpdateStructLogVar(PLT)
	ldr	r3, .L55+24
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #72]	@ float
	str	r3, [fp, #-52]	@ float
	ldr	r3, .L55+28
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #8]
	strd	r2, [fp, #-100]
	ldr	r3, .L55+4
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #20]
	mov	r1, r3
	sub	r2, fp, #100
	sub	r3, fp, #52
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	rt_UpdateStructLogVar(PLT)
	ldr	r3, .L55+24
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #76]	@ float
	str	r3, [fp, #-52]	@ float
	ldr	r3, .L55+28
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #8]
	strd	r2, [fp, #-108]
	ldr	r3, .L55+4
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #24]
	mov	r1, r3
	sub	r2, fp, #108
	sub	r3, fp, #52
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	rt_UpdateStructLogVar(PLT)
	ldr	r3, .L55+24
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #392]	@ float
	str	r3, [fp, #-52]	@ float
	ldr	r3, .L55+28
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #8]
	strd	r2, [fp, #-116]
	ldr	r3, .L55+4
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #28]
	mov	r1, r3
	sub	r2, fp, #116
	sub	r3, fp, #52
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	rt_UpdateStructLogVar(PLT)
	ldr	r3, .L55+24
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #416]	@ float
	str	r3, [fp, #-52]	@ float
	ldr	r3, .L55+28
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #8]
	strd	r2, [fp, #-124]
	ldr	r3, .L55+4
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #32]
	mov	r1, r3
	sub	r2, fp, #124
	sub	r3, fp, #52
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	rt_UpdateStructLogVar(PLT)
	ldr	r3, .L55+28
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #8]
	strd	r2, [fp, #-132]
	ldr	r3, .L55+4
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #36]
	mov	r1, r3
	sub	r2, fp, #132
	sub	r3, fp, #48
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	rt_UpdateStructLogVar(PLT)
	ldr	r3, .L55+28
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r2, [r3, #4]
	ldr	r3, .L55+28
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	add	r3, r3, #8
	mov	r0, r2
	mov	r1, r3
	bl	rt_UpdateTXYLogVars(PLT)
	ldr	r3, .L55+28
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
	bne	.L48
.L54:
	ldr	r3, .L55+28
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r0, [r3, #32]
	ldr	r3, .L55+28
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #8]
	bl	__aeabi_dsub(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r6, r2
	mov	r7, r3
	ldr	r3, .L55+28
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
	beq	.L50
.L51:
	mov	r3, #1
	mov	r5, r3
.L50:
	and	r3, r5, #255
	eor	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L48
	ldr	r3, .L55+28
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r2, .L55+32
	add	r2, r4, r2
	str	r2, [r3, #0]
.L48:
	ldr	r3, .L55+28
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r2, [r3, #16]
	add	r2, r2, #1
	str	r2, [r3, #16]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	bne	.L52
	ldr	r3, .L55+28
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r2, [r3, #20]
	add	r2, r2, #1
	str	r2, [r3, #20]
.L52:
	ldr	r3, .L55+28
	ldr	r3, [r4, r3]
	ldr	r5, [r3, #0]
	ldr	r3, .L55+28
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #16]
	mov	r0, r3
	bl	__aeabi_ui2d(PLT)
	ldr	r3, .L55+28
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #24]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r6, r2
	mov	r7, r3
	ldr	r3, .L55+28
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #20]
	mov	r0, r3
	bl	__aeabi_ui2d(PLT)
	ldr	r3, .L55+28
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
	sub	sp, fp, #20
	ldmfd	sp!, {r4, r5, r6, r7, fp, pc}
.L56:
	.align	2
.L55:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+8)
	.word	logging_DW(GOT)
	.word	logging_P(GOT)
	.word	motors_outport(GOT)
	.word	logging_Y(GOT)
	.word	flag_outport(GOT)
	.word	sensor_inport(GOT)
	.word	logging_M(GOT)
	.word	.LC0(GOTOFF)
.LFE0:
	.fnend
	.size	logging_step, .-logging_step
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
	.ascii	"a_x\000"
	.align	2
.LC5:
	.ascii	"v\000"
	.align	2
.LC6:
	.ascii	"a_y\000"
	.align	2
.LC7:
	.ascii	"a_z\000"
	.align	2
.LC8:
	.ascii	"p\000"
	.align	2
.LC9:
	.ascii	"q\000"
	.align	2
.LC10:
	.ascii	"r\000"
	.align	2
.LC11:
	.ascii	"pressure\000"
	.align	2
.LC12:
	.ascii	"PbZ\000"
	.align	2
.LC13:
	.ascii	"u\000"
	.text
	.align	2
	.global	logging_initialize
	.type	logging_initialize, %function
logging_initialize:
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
	ldr	r4, .L80+8
.LPIC1:
	add	r4, pc, r4
	mov	r0, #8
	bl	rt_InitInfAndNaN(PLT)
	ldr	r3, .L80+80
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	mov	r0, r3
	mov	r1, #0
	mov	r2, #48
	bl	memset(PLT)
	ldr	r3, .L80+80
	ldr	r3, [r4, r3]
	ldr	r1, [r3, #0]
	mov	r2, #0
	mov	r3, #1073741824
	add	r3, r3, #5832704
	strd	r2, [r1, #32]
	ldr	r3, .L80+80
	ldr	r3, [r4, r3]
	ldr	r1, [r3, #0]
	adr	r3, .L80
	ldrd	r2, [r3]
	strd	r2, [r1, #24]
	ldr	r3, .L80+12
	add	r3, r4, r3
	mov	r2, #0
	str	r2, [r3, #68]
	ldr	r3, .L80+80
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r2, .L80+12
	add	r2, r4, r2
	str	r2, [r3, #4]
	ldr	r3, .L80+80
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #4]
	mov	r2, #0
	str	r2, [r3, #48]
	ldr	r3, .L80+80
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #4]
	mov	r2, #0
	str	r2, [r3, #4]
	ldr	r3, .L80+80
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #4]
	ldr	r2, .L80+16
	add	r2, r4, r2
	str	r2, [r3, #28]
	ldr	r3, .L80+80
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #4]
	ldr	r2, .L80+20
	add	r2, r4, r2
	str	r2, [r3, #32]
	ldr	r3, .L80+80
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #4]
	ldr	r2, .L80+20
	add	r2, r4, r2
	str	r2, [r3, #36]
	ldr	r3, .L80+80
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #4]
	ldr	r2, .L80+24
	add	r2, r4, r2
	str	r2, [r3, #24]
	ldr	r3, .L80+80
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #4]
	mov	r2, #4
	str	r2, [r3, #12]
	ldr	r3, .L80+80
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #4]
	mov	r2, #0
	str	r2, [r3, #16]
	ldr	r3, .L80+80
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #4]
	mov	r2, #1
	str	r2, [r3, #20]
	ldr	r3, .L80+80
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #4]
	ldr	r2, .L80+20
	add	r2, r4, r2
	str	r2, [r3, #40]
	ldr	r3, .L80+80
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #4]
	mov	r2, #0
	str	r2, [r3, #52]
	ldr	r3, .L80+80
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #4]
	mov	r2, #0
	str	r2, [r3, #8]
	ldr	r3, .L80+28
	ldr	r3, [r4, r3]
	ldr	r2, .L80+32	@ float
	str	r2, [r3, #0]	@ float
	ldr	r3, .L80+28
	ldr	r3, [r4, r3]
	ldr	r2, .L80+32	@ float
	str	r2, [r3, #4]	@ float
	ldr	r3, .L80+28
	ldr	r3, [r4, r3]
	ldr	r2, .L80+32	@ float
	str	r2, [r3, #8]	@ float
	ldr	r3, .L80+28
	ldr	r3, [r4, r3]
	ldr	r2, .L80+32	@ float
	str	r2, [r3, #12]	@ float
	ldr	r3, .L80+36
	ldr	r3, [r4, r3]
	mov	r2, #0
	strb	r2, [r3, #0]
	ldr	r3, .L80+76
	ldr	r3, [r4, r3]
	mov	r0, r3
	mov	r1, #0
	mov	r2, #48
	bl	memset(PLT)
	ldr	r3, .L80+40
	ldr	r3, [r4, r3]
	mov	r0, r3
	mov	r1, #0
	mov	r2, #36
	bl	memset(PLT)
	ldr	r3, .L80+44
	ldr	r3, [r4, r3]
	mov	r0, r3
	mov	r1, #0
	mov	r2, #2496
	bl	memset(PLT)
	ldr	r3, .L80+48
	ldr	r3, [r4, r3]
	mov	r0, r3
	mov	r1, #0
	mov	r2, #20
	bl	memset(PLT)
	ldr	r3, .L80+80
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	ip, [r3, #4]
	ldr	r3, .L80+80
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r0, [r3, #32]
	ldr	r3, .L80+80
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #24]
	ldr	lr, .L80+80
	ldr	lr, [r4, lr]
	ldr	lr, [lr, #0]
	strd	r0, [sp]
	strd	r2, [sp, #8]
	str	lr, [sp, #16]
	mov	r0, ip
	mov	r2, #0
	mov	r3, #0
	bl	rt_StartDataLoggingWithStartTime(PLT)
	ldr	r3, .L80+80
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	ip, [r3, #4]
	ldr	r3, .L80+80
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r0, [r3, #32]
	ldr	r3, .L80+80
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #24]
	ldr	lr, .L80+80
	ldr	lr, [r4, lr]
	ldr	lr, [lr, #0]
	strd	r0, [sp]
	strd	r2, [sp, #8]
	str	lr, [sp, #16]
	ldr	r3, .L80+52
	add	r3, r4, r3
	str	r3, [sp, #20]
	mov	r3, #1
	str	r3, [sp, #24]
	mov	r3, #0
	str	r3, [sp, #28]
	mov	r3, #1
	str	r3, [sp, #32]
	adr	r3, .L80
	ldrd	r2, [r3]
	strd	r2, [sp, #40]
	ldr	r3, .L80+56
	add	r3, r4, r3
	str	r3, [sp, #48]
	ldr	r3, .L80+60
	add	r3, r4, r3
	str	r3, [sp, #52]
	mov	r0, ip
	mov	r2, #0
	mov	r3, #0
	bl	rt_CreateStructLogVar(PLT)
	mov	r2, r0
	ldr	r3, .L80+76
	ldr	r3, [r4, r3]
	str	r2, [r3, #0]
	ldr	r3, .L80+76
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L70
.L58:
	ldr	r3, .L80+80
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	ip, [r3, #4]
	ldr	r3, .L80+80
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r0, [r3, #32]
	ldr	r3, .L80+80
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #24]
	ldr	lr, .L80+80
	ldr	lr, [r4, lr]
	ldr	lr, [lr, #0]
	strd	r0, [sp]
	strd	r2, [sp, #8]
	str	lr, [sp, #16]
	ldr	r3, .L80+64
	add	r3, r4, r3
	str	r3, [sp, #20]
	mov	r3, #1
	str	r3, [sp, #24]
	mov	r3, #0
	str	r3, [sp, #28]
	mov	r3, #1
	str	r3, [sp, #32]
	adr	r3, .L80
	ldrd	r2, [r3]
	strd	r2, [sp, #40]
	ldr	r3, .L80+68
	add	r3, r4, r3
	b	.L81
.L82:
	.align	3
.L80:
	.word	1202590843
	.word	1064598241
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+8)
	.word	rt_DataLoggingInfo.3501(GOTOFF)
	.word	.LC1(GOTOFF)
	.word	.LC2(GOTOFF)
	.word	.LC3(GOTOFF)
	.word	motors_outport(GOT)
	.word	0
	.word	flag_outport(GOT)
	.word	cmd_inport(GOT)
	.word	sensor_inport(GOT)
	.word	logging_Y(GOT)
	.word	.LC4(GOTOFF)
	.word	rt_ToWksSignalInfo.3513(GOTOFF)
	.word	rt_ToWksBlockName.3514(GOTOFF)
	.word	.LC5(GOTOFF)
	.word	rt_ToWksSignalInfo.3526(GOTOFF)
	.word	rt_ToWksBlockName.3527(GOTOFF)
	.word	logging_DW(GOT)
	.word	logging_M(GOT)
	.word	.LC6(GOTOFF)
.L81:
	str	r3, [sp, #48]
	ldr	r3, .L80+72
	add	r3, r4, r3
	str	r3, [sp, #52]
	mov	r0, ip
	mov	r2, #0
	mov	r3, #0
	bl	rt_CreateStructLogVar(PLT)
	mov	r2, r0
	ldr	r3, .L80+76
	ldr	r3, [r4, r3]
	str	r2, [r3, #4]
	ldr	r3, .L80+76
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L71
.L60:
	ldr	r3, .L80+80
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	ip, [r3, #4]
	ldr	r3, .L80+80
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r0, [r3, #32]
	ldr	r3, .L80+80
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #24]
	ldr	lr, .L80+80
	ldr	lr, [r4, lr]
	ldr	lr, [lr, #0]
	strd	r0, [sp]
	strd	r2, [sp, #8]
	str	lr, [sp, #16]
	ldr	r3, .L80+84
	add	r3, r4, r3
	str	r3, [sp, #20]
	mov	r3, #1
	str	r3, [sp, #24]
	mov	r3, #0
	str	r3, [sp, #28]
	mov	r3, #1
	str	r3, [sp, #32]
	adr	r3, .L83
	ldrd	r2, [r3]
	strd	r2, [sp, #40]
	ldr	r3, .L83+8
	add	r3, r4, r3
	str	r3, [sp, #48]
	ldr	r3, .L83+12
	add	r3, r4, r3
	str	r3, [sp, #52]
	mov	r0, ip
	mov	r2, #0
	mov	r3, #0
	bl	rt_CreateStructLogVar(PLT)
	mov	r2, r0
	ldr	r3, .L83+16
	ldr	r3, [r4, r3]
	str	r2, [r3, #8]
	ldr	r3, .L83+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L72
.L61:
	ldr	r3, .L83+68
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	ip, [r3, #4]
	ldr	r3, .L83+68
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r0, [r3, #32]
	ldr	r3, .L83+68
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #24]
	ldr	lr, .L83+68
	ldr	lr, [r4, lr]
	ldr	lr, [lr, #0]
	strd	r0, [sp]
	strd	r2, [sp, #8]
	str	lr, [sp, #16]
	ldr	r3, .L83+20
	add	r3, r4, r3
	str	r3, [sp, #20]
	mov	r3, #1
	str	r3, [sp, #24]
	mov	r3, #0
	str	r3, [sp, #28]
	mov	r3, #1
	str	r3, [sp, #32]
	adr	r3, .L83
	ldrd	r2, [r3]
	strd	r2, [sp, #40]
	ldr	r3, .L83+24
	add	r3, r4, r3
	str	r3, [sp, #48]
	ldr	r3, .L83+28
	add	r3, r4, r3
	str	r3, [sp, #52]
	mov	r0, ip
	mov	r2, #0
	mov	r3, #0
	bl	rt_CreateStructLogVar(PLT)
	mov	r2, r0
	ldr	r3, .L83+16
	ldr	r3, [r4, r3]
	str	r2, [r3, #12]
	ldr	r3, .L83+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L73
.L62:
	ldr	r3, .L83+68
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	ip, [r3, #4]
	ldr	r3, .L83+68
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r0, [r3, #32]
	ldr	r3, .L83+68
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #24]
	ldr	lr, .L83+68
	ldr	lr, [r4, lr]
	ldr	lr, [lr, #0]
	strd	r0, [sp]
	strd	r2, [sp, #8]
	str	lr, [sp, #16]
	ldr	r3, .L83+32
	add	r3, r4, r3
	str	r3, [sp, #20]
	mov	r3, #1
	str	r3, [sp, #24]
	mov	r3, #0
	str	r3, [sp, #28]
	mov	r3, #1
	str	r3, [sp, #32]
	adr	r3, .L83
	ldrd	r2, [r3]
	strd	r2, [sp, #40]
	ldr	r3, .L83+36
	add	r3, r4, r3
	str	r3, [sp, #48]
	ldr	r3, .L83+40
	add	r3, r4, r3
	str	r3, [sp, #52]
	mov	r0, ip
	mov	r2, #0
	mov	r3, #0
	bl	rt_CreateStructLogVar(PLT)
	mov	r2, r0
	ldr	r3, .L83+16
	ldr	r3, [r4, r3]
	str	r2, [r3, #16]
	ldr	r3, .L83+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L74
.L63:
	ldr	r3, .L83+68
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	ip, [r3, #4]
	ldr	r3, .L83+68
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r0, [r3, #32]
	ldr	r3, .L83+68
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #24]
	ldr	lr, .L83+68
	ldr	lr, [r4, lr]
	ldr	lr, [lr, #0]
	strd	r0, [sp]
	strd	r2, [sp, #8]
	str	lr, [sp, #16]
	ldr	r3, .L83+44
	add	r3, r4, r3
	str	r3, [sp, #20]
	mov	r3, #1
	str	r3, [sp, #24]
	mov	r3, #0
	str	r3, [sp, #28]
	mov	r3, #1
	str	r3, [sp, #32]
	adr	r3, .L83
	ldrd	r2, [r3]
	strd	r2, [sp, #40]
	ldr	r3, .L83+48
	add	r3, r4, r3
	str	r3, [sp, #48]
	ldr	r3, .L83+52
	add	r3, r4, r3
	str	r3, [sp, #52]
	mov	r0, ip
	mov	r2, #0
	mov	r3, #0
	bl	rt_CreateStructLogVar(PLT)
	mov	r2, r0
	ldr	r3, .L83+16
	ldr	r3, [r4, r3]
	str	r2, [r3, #20]
	ldr	r3, .L83+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L75
.L64:
	ldr	r3, .L83+68
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	ip, [r3, #4]
	ldr	r3, .L83+68
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r0, [r3, #32]
	ldr	r3, .L83+68
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #24]
	ldr	lr, .L83+68
	ldr	lr, [r4, lr]
	ldr	lr, [lr, #0]
	strd	r0, [sp]
	strd	r2, [sp, #8]
	str	lr, [sp, #16]
	ldr	r3, .L83+56
	add	r3, r4, r3
	str	r3, [sp, #20]
	mov	r3, #1
	str	r3, [sp, #24]
	mov	r3, #0
	str	r3, [sp, #28]
	mov	r3, #1
	str	r3, [sp, #32]
	adr	r3, .L83
	ldrd	r2, [r3]
	strd	r2, [sp, #40]
	ldr	r3, .L83+60
	add	r3, r4, r3
	str	r3, [sp, #48]
	ldr	r3, .L83+64
	add	r3, r4, r3
	str	r3, [sp, #52]
	mov	r0, ip
	mov	r2, #0
	mov	r3, #0
	bl	rt_CreateStructLogVar(PLT)
	mov	r2, r0
	ldr	r3, .L83+16
	ldr	r3, [r4, r3]
	str	r2, [r3, #24]
	ldr	r3, .L83+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L76
.L65:
	ldr	r3, .L83+68
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	ip, [r3, #4]
	ldr	r3, .L83+68
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r0, [r3, #32]
	ldr	r3, .L83+68
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	b	.L84
.L85:
	.align	3
.L83:
	.word	1202590843
	.word	1064598241
	.word	rt_ToWksSignalInfo.3539(GOTOFF)
	.word	rt_ToWksBlockName.3540(GOTOFF)
	.word	logging_DW(GOT)
	.word	.LC7(GOTOFF)
	.word	rt_ToWksSignalInfo.3552(GOTOFF)
	.word	rt_ToWksBlockName.3553(GOTOFF)
	.word	.LC8(GOTOFF)
	.word	rt_ToWksSignalInfo.3565(GOTOFF)
	.word	rt_ToWksBlockName.3566(GOTOFF)
	.word	.LC9(GOTOFF)
	.word	rt_ToWksSignalInfo.3578(GOTOFF)
	.word	rt_ToWksBlockName.3579(GOTOFF)
	.word	.LC10(GOTOFF)
	.word	rt_ToWksSignalInfo.3591(GOTOFF)
	.word	rt_ToWksBlockName.3592(GOTOFF)
	.word	logging_M(GOT)
	.word	.LC11(GOTOFF)
.L84:
	ldrd	r2, [r3, #24]
	ldr	lr, .L83+68
	ldr	lr, [r4, lr]
	ldr	lr, [lr, #0]
	strd	r0, [sp]
	strd	r2, [sp, #8]
	str	lr, [sp, #16]
	ldr	r3, .L83+72
	add	r3, r4, r3
	str	r3, [sp, #20]
	mov	r3, #1
	str	r3, [sp, #24]
	mov	r3, #0
	str	r3, [sp, #28]
	mov	r3, #1
	str	r3, [sp, #32]
	adr	r3, .L86
	ldrd	r2, [r3]
	strd	r2, [sp, #40]
	ldr	r3, .L86+8
	add	r3, r4, r3
	str	r3, [sp, #48]
	ldr	r3, .L86+12
	add	r3, r4, r3
	str	r3, [sp, #52]
	mov	r0, ip
	mov	r2, #0
	mov	r3, #0
	bl	rt_CreateStructLogVar(PLT)
	mov	r2, r0
	ldr	r3, .L86+16
	ldr	r3, [r4, r3]
	str	r2, [r3, #28]
	ldr	r3, .L86+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #28]
	cmp	r3, #0
	beq	.L77
.L66:
	ldr	r3, .L86+20
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	ip, [r3, #4]
	ldr	r3, .L86+20
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r0, [r3, #32]
	ldr	r3, .L86+20
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #24]
	ldr	lr, .L86+20
	ldr	lr, [r4, lr]
	ldr	lr, [lr, #0]
	strd	r0, [sp]
	strd	r2, [sp, #8]
	str	lr, [sp, #16]
	ldr	r3, .L86+24
	add	r3, r4, r3
	str	r3, [sp, #20]
	mov	r3, #1
	str	r3, [sp, #24]
	mov	r3, #0
	str	r3, [sp, #28]
	mov	r3, #1
	str	r3, [sp, #32]
	adr	r3, .L86
	ldrd	r2, [r3]
	strd	r2, [sp, #40]
	ldr	r3, .L86+28
	add	r3, r4, r3
	str	r3, [sp, #48]
	ldr	r3, .L86+32
	add	r3, r4, r3
	str	r3, [sp, #52]
	mov	r0, ip
	mov	r2, #0
	mov	r3, #0
	bl	rt_CreateStructLogVar(PLT)
	mov	r2, r0
	ldr	r3, .L86+16
	ldr	r3, [r4, r3]
	str	r2, [r3, #32]
	ldr	r3, .L86+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #32]
	cmp	r3, #0
	beq	.L78
.L67:
	ldr	r3, .L86+20
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	ip, [r3, #4]
	ldr	r3, .L86+20
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r0, [r3, #32]
	ldr	r3, .L86+20
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #24]
	ldr	lr, .L86+20
	ldr	lr, [r4, lr]
	ldr	lr, [lr, #0]
	strd	r0, [sp]
	strd	r2, [sp, #8]
	str	lr, [sp, #16]
	ldr	r3, .L86+36
	add	r3, r4, r3
	str	r3, [sp, #20]
	mov	r3, #1
	str	r3, [sp, #24]
	mov	r3, #0
	str	r3, [sp, #28]
	mov	r3, #1
	str	r3, [sp, #32]
	adr	r3, .L86
	ldrd	r2, [r3]
	strd	r2, [sp, #40]
	ldr	r3, .L86+40
	add	r3, r4, r3
	str	r3, [sp, #48]
	ldr	r3, .L86+44
	add	r3, r4, r3
	str	r3, [sp, #52]
	mov	r0, ip
	mov	r2, #0
	mov	r3, #0
	bl	rt_CreateStructLogVar(PLT)
	mov	r2, r0
	ldr	r3, .L86+16
	ldr	r3, [r4, r3]
	str	r2, [r3, #36]
	ldr	r3, .L86+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #36]
	cmp	r3, #0
	beq	.L79
.L68:
	ldr	r3, .L86+16
	ldr	r3, [r4, r3]
	mov	r2, #0
	str	r2, [r3, #40]
	ldr	r3, .L86+16
	ldr	r3, [r4, r3]
	ldr	r2, .L86+48
	str	r2, [r3, #44]
	b	.L69
.L70:
	mov	r0, r0	@ nop
	b	.L69
.L71:
	mov	r0, r0	@ nop
	b	.L69
.L72:
	mov	r0, r0	@ nop
	b	.L69
.L73:
	mov	r0, r0	@ nop
	b	.L69
.L74:
	mov	r0, r0	@ nop
	b	.L69
.L75:
	mov	r0, r0	@ nop
	b	.L69
.L76:
	mov	r0, r0	@ nop
	b	.L69
.L77:
	mov	r0, r0	@ nop
	b	.L69
.L78:
	mov	r0, r0	@ nop
	b	.L69
.L79:
	mov	r0, r0	@ nop
.L69:
	sub	sp, fp, #8
	ldmfd	sp!, {r4, fp, pc}
.L87:
	.align	3
.L86:
	.word	1202590843
	.word	1064598241
	.word	rt_ToWksSignalInfo.3604(GOTOFF)
	.word	rt_ToWksBlockName.3605(GOTOFF)
	.word	logging_DW(GOT)
	.word	logging_M(GOT)
	.word	.LC12(GOTOFF)
	.word	rt_ToWksSignalInfo.3617(GOTOFF)
	.word	rt_ToWksBlockName.3618(GOTOFF)
	.word	.LC13(GOTOFF)
	.word	rt_ToWksSignalInfo.3630(GOTOFF)
	.word	rt_ToWksBlockName.3631(GOTOFF)
	.word	-400
.LFE1:
	.fnend
	.size	logging_initialize, .-logging_initialize
	.align	2
	.global	logging_terminate
	.type	logging_terminate, %function
logging_terminate:
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
	.size	logging_terminate, .-logging_terminate
	.local	rt_DataLoggingInfo.3501
	.comm	rt_DataLoggingInfo.3501,72,4
	.section	.data.rel.local,"aw",%progbits
	.align	2
	.type	rt_ToWksSignalInfo.3513, %object
	.size	rt_ToWksSignalInfo.3513, 76
rt_ToWksSignalInfo.3513:
	.word	1
	.word	rt_ToWksWidths.3502
	.word	rt_ToWksNumDimensions.3503
	.word	rt_ToWksDimensions.3504
	.word	rt_ToWksIsVarDims.3505
	.word	rt_ToWksCurrSigDims.3506
	.word	rt_ToWksCurrSigDimsSize.3507
	.word	rt_ToWksDataTypeIds.3508
	.word	rt_ToWksComplexSignals.3509
	.word	rt_ToWksFrameData.3510
	.word	rt_ToWksLoggingPreprocessingFcnPtrs.3511
	.word	rt_ToWksLabels.3512
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.rodata
	.align	2
	.type	rt_ToWksBlockName.3514, %object
	.size	rt_ToWksBlockName.3514, 44
rt_ToWksBlockName.3514:
	.ascii	"logging/Flight_Control_System/To Workspace1\000"
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksSignalInfo.3526, %object
	.size	rt_ToWksSignalInfo.3526, 76
rt_ToWksSignalInfo.3526:
	.word	1
	.word	rt_ToWksWidths.3515
	.word	rt_ToWksNumDimensions.3516
	.word	rt_ToWksDimensions.3517
	.word	rt_ToWksIsVarDims.3518
	.word	rt_ToWksCurrSigDims.3519
	.word	rt_ToWksCurrSigDimsSize.3520
	.word	rt_ToWksDataTypeIds.3521
	.word	rt_ToWksComplexSignals.3522
	.word	rt_ToWksFrameData.3523
	.word	rt_ToWksLoggingPreprocessingFcnPtrs.3524
	.word	rt_ToWksLabels.3525
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.rodata
	.align	2
	.type	rt_ToWksBlockName.3527, %object
	.size	rt_ToWksBlockName.3527, 45
rt_ToWksBlockName.3527:
	.ascii	"logging/Flight_Control_System/To Workspace10\000"
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksSignalInfo.3539, %object
	.size	rt_ToWksSignalInfo.3539, 76
rt_ToWksSignalInfo.3539:
	.word	1
	.word	rt_ToWksWidths.3528
	.word	rt_ToWksNumDimensions.3529
	.word	rt_ToWksDimensions.3530
	.word	rt_ToWksIsVarDims.3531
	.word	rt_ToWksCurrSigDims.3532
	.word	rt_ToWksCurrSigDimsSize.3533
	.word	rt_ToWksDataTypeIds.3534
	.word	rt_ToWksComplexSignals.3535
	.word	rt_ToWksFrameData.3536
	.word	rt_ToWksLoggingPreprocessingFcnPtrs.3537
	.word	rt_ToWksLabels.3538
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.rodata
	.align	2
	.type	rt_ToWksBlockName.3540, %object
	.size	rt_ToWksBlockName.3540, 44
rt_ToWksBlockName.3540:
	.ascii	"logging/Flight_Control_System/To Workspace2\000"
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksSignalInfo.3552, %object
	.size	rt_ToWksSignalInfo.3552, 76
rt_ToWksSignalInfo.3552:
	.word	1
	.word	rt_ToWksWidths.3541
	.word	rt_ToWksNumDimensions.3542
	.word	rt_ToWksDimensions.3543
	.word	rt_ToWksIsVarDims.3544
	.word	rt_ToWksCurrSigDims.3545
	.word	rt_ToWksCurrSigDimsSize.3546
	.word	rt_ToWksDataTypeIds.3547
	.word	rt_ToWksComplexSignals.3548
	.word	rt_ToWksFrameData.3549
	.word	rt_ToWksLoggingPreprocessingFcnPtrs.3550
	.word	rt_ToWksLabels.3551
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.rodata
	.align	2
	.type	rt_ToWksBlockName.3553, %object
	.size	rt_ToWksBlockName.3553, 44
rt_ToWksBlockName.3553:
	.ascii	"logging/Flight_Control_System/To Workspace3\000"
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksSignalInfo.3565, %object
	.size	rt_ToWksSignalInfo.3565, 76
rt_ToWksSignalInfo.3565:
	.word	1
	.word	rt_ToWksWidths.3554
	.word	rt_ToWksNumDimensions.3555
	.word	rt_ToWksDimensions.3556
	.word	rt_ToWksIsVarDims.3557
	.word	rt_ToWksCurrSigDims.3558
	.word	rt_ToWksCurrSigDimsSize.3559
	.word	rt_ToWksDataTypeIds.3560
	.word	rt_ToWksComplexSignals.3561
	.word	rt_ToWksFrameData.3562
	.word	rt_ToWksLoggingPreprocessingFcnPtrs.3563
	.word	rt_ToWksLabels.3564
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.rodata
	.align	2
	.type	rt_ToWksBlockName.3566, %object
	.size	rt_ToWksBlockName.3566, 44
rt_ToWksBlockName.3566:
	.ascii	"logging/Flight_Control_System/To Workspace4\000"
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksSignalInfo.3578, %object
	.size	rt_ToWksSignalInfo.3578, 76
rt_ToWksSignalInfo.3578:
	.word	1
	.word	rt_ToWksWidths.3567
	.word	rt_ToWksNumDimensions.3568
	.word	rt_ToWksDimensions.3569
	.word	rt_ToWksIsVarDims.3570
	.word	rt_ToWksCurrSigDims.3571
	.word	rt_ToWksCurrSigDimsSize.3572
	.word	rt_ToWksDataTypeIds.3573
	.word	rt_ToWksComplexSignals.3574
	.word	rt_ToWksFrameData.3575
	.word	rt_ToWksLoggingPreprocessingFcnPtrs.3576
	.word	rt_ToWksLabels.3577
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.rodata
	.align	2
	.type	rt_ToWksBlockName.3579, %object
	.size	rt_ToWksBlockName.3579, 44
rt_ToWksBlockName.3579:
	.ascii	"logging/Flight_Control_System/To Workspace5\000"
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksSignalInfo.3591, %object
	.size	rt_ToWksSignalInfo.3591, 76
rt_ToWksSignalInfo.3591:
	.word	1
	.word	rt_ToWksWidths.3580
	.word	rt_ToWksNumDimensions.3581
	.word	rt_ToWksDimensions.3582
	.word	rt_ToWksIsVarDims.3583
	.word	rt_ToWksCurrSigDims.3584
	.word	rt_ToWksCurrSigDimsSize.3585
	.word	rt_ToWksDataTypeIds.3586
	.word	rt_ToWksComplexSignals.3587
	.word	rt_ToWksFrameData.3588
	.word	rt_ToWksLoggingPreprocessingFcnPtrs.3589
	.word	rt_ToWksLabels.3590
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.rodata
	.align	2
	.type	rt_ToWksBlockName.3592, %object
	.size	rt_ToWksBlockName.3592, 44
rt_ToWksBlockName.3592:
	.ascii	"logging/Flight_Control_System/To Workspace6\000"
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksSignalInfo.3604, %object
	.size	rt_ToWksSignalInfo.3604, 76
rt_ToWksSignalInfo.3604:
	.word	1
	.word	rt_ToWksWidths.3593
	.word	rt_ToWksNumDimensions.3594
	.word	rt_ToWksDimensions.3595
	.word	rt_ToWksIsVarDims.3596
	.word	rt_ToWksCurrSigDims.3597
	.word	rt_ToWksCurrSigDimsSize.3598
	.word	rt_ToWksDataTypeIds.3599
	.word	rt_ToWksComplexSignals.3600
	.word	rt_ToWksFrameData.3601
	.word	rt_ToWksLoggingPreprocessingFcnPtrs.3602
	.word	rt_ToWksLabels.3603
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.rodata
	.align	2
	.type	rt_ToWksBlockName.3605, %object
	.size	rt_ToWksBlockName.3605, 44
rt_ToWksBlockName.3605:
	.ascii	"logging/Flight_Control_System/To Workspace7\000"
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksSignalInfo.3617, %object
	.size	rt_ToWksSignalInfo.3617, 76
rt_ToWksSignalInfo.3617:
	.word	1
	.word	rt_ToWksWidths.3606
	.word	rt_ToWksNumDimensions.3607
	.word	rt_ToWksDimensions.3608
	.word	rt_ToWksIsVarDims.3609
	.word	rt_ToWksCurrSigDims.3610
	.word	rt_ToWksCurrSigDimsSize.3611
	.word	rt_ToWksDataTypeIds.3612
	.word	rt_ToWksComplexSignals.3613
	.word	rt_ToWksFrameData.3614
	.word	rt_ToWksLoggingPreprocessingFcnPtrs.3615
	.word	rt_ToWksLabels.3616
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.rodata
	.align	2
	.type	rt_ToWksBlockName.3618, %object
	.size	rt_ToWksBlockName.3618, 44
rt_ToWksBlockName.3618:
	.ascii	"logging/Flight_Control_System/To Workspace8\000"
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksSignalInfo.3630, %object
	.size	rt_ToWksSignalInfo.3630, 76
rt_ToWksSignalInfo.3630:
	.word	1
	.word	rt_ToWksWidths.3619
	.word	rt_ToWksNumDimensions.3620
	.word	rt_ToWksDimensions.3621
	.word	rt_ToWksIsVarDims.3622
	.word	rt_ToWksCurrSigDims.3623
	.word	rt_ToWksCurrSigDimsSize.3624
	.word	rt_ToWksDataTypeIds.3625
	.word	rt_ToWksComplexSignals.3626
	.word	rt_ToWksFrameData.3627
	.word	rt_ToWksLoggingPreprocessingFcnPtrs.3628
	.word	rt_ToWksLabels.3629
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.rodata
	.align	2
	.type	rt_ToWksBlockName.3631, %object
	.size	rt_ToWksBlockName.3631, 44
rt_ToWksBlockName.3631:
	.ascii	"logging/Flight_Control_System/To Workspace9\000"
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksLabels.3629, %object
	.size	rt_ToWksLabels.3629, 4
rt_ToWksLabels.3629:
	.word	.LC2
	.local	rt_ToWksLoggingPreprocessingFcnPtrs.3628
	.comm	rt_ToWksLoggingPreprocessingFcnPtrs.3628,4,4
	.local	rt_ToWksFrameData.3627
	.comm	rt_ToWksFrameData.3627,4,4
	.local	rt_ToWksComplexSignals.3626
	.comm	rt_ToWksComplexSignals.3626,4,4
	.data
	.align	2
	.type	rt_ToWksDataTypeIds.3625, %object
	.size	rt_ToWksDataTypeIds.3625, 4
rt_ToWksDataTypeIds.3625:
	.word	1
	.align	2
	.type	rt_ToWksCurrSigDimsSize.3624, %object
	.size	rt_ToWksCurrSigDimsSize.3624, 4
rt_ToWksCurrSigDimsSize.3624:
	.word	4
	.local	rt_ToWksCurrSigDims.3623
	.comm	rt_ToWksCurrSigDims.3623,4,4
	.local	rt_ToWksIsVarDims.3622
	.comm	rt_ToWksIsVarDims.3622,1,4
	.align	2
	.type	rt_ToWksDimensions.3621, %object
	.size	rt_ToWksDimensions.3621, 4
rt_ToWksDimensions.3621:
	.word	1
	.align	2
	.type	rt_ToWksNumDimensions.3620, %object
	.size	rt_ToWksNumDimensions.3620, 4
rt_ToWksNumDimensions.3620:
	.word	1
	.align	2
	.type	rt_ToWksWidths.3619, %object
	.size	rt_ToWksWidths.3619, 4
rt_ToWksWidths.3619:
	.word	1
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksLabels.3616, %object
	.size	rt_ToWksLabels.3616, 4
rt_ToWksLabels.3616:
	.word	.LC2
	.local	rt_ToWksLoggingPreprocessingFcnPtrs.3615
	.comm	rt_ToWksLoggingPreprocessingFcnPtrs.3615,4,4
	.local	rt_ToWksFrameData.3614
	.comm	rt_ToWksFrameData.3614,4,4
	.local	rt_ToWksComplexSignals.3613
	.comm	rt_ToWksComplexSignals.3613,4,4
	.data
	.align	2
	.type	rt_ToWksDataTypeIds.3612, %object
	.size	rt_ToWksDataTypeIds.3612, 4
rt_ToWksDataTypeIds.3612:
	.word	1
	.align	2
	.type	rt_ToWksCurrSigDimsSize.3611, %object
	.size	rt_ToWksCurrSigDimsSize.3611, 4
rt_ToWksCurrSigDimsSize.3611:
	.word	4
	.local	rt_ToWksCurrSigDims.3610
	.comm	rt_ToWksCurrSigDims.3610,4,4
	.local	rt_ToWksIsVarDims.3609
	.comm	rt_ToWksIsVarDims.3609,1,4
	.align	2
	.type	rt_ToWksDimensions.3608, %object
	.size	rt_ToWksDimensions.3608, 4
rt_ToWksDimensions.3608:
	.word	1
	.align	2
	.type	rt_ToWksNumDimensions.3607, %object
	.size	rt_ToWksNumDimensions.3607, 4
rt_ToWksNumDimensions.3607:
	.word	1
	.align	2
	.type	rt_ToWksWidths.3606, %object
	.size	rt_ToWksWidths.3606, 4
rt_ToWksWidths.3606:
	.word	1
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksLabels.3603, %object
	.size	rt_ToWksLabels.3603, 4
rt_ToWksLabels.3603:
	.word	.LC2
	.local	rt_ToWksLoggingPreprocessingFcnPtrs.3602
	.comm	rt_ToWksLoggingPreprocessingFcnPtrs.3602,4,4
	.local	rt_ToWksFrameData.3601
	.comm	rt_ToWksFrameData.3601,4,4
	.local	rt_ToWksComplexSignals.3600
	.comm	rt_ToWksComplexSignals.3600,4,4
	.data
	.align	2
	.type	rt_ToWksDataTypeIds.3599, %object
	.size	rt_ToWksDataTypeIds.3599, 4
rt_ToWksDataTypeIds.3599:
	.word	1
	.align	2
	.type	rt_ToWksCurrSigDimsSize.3598, %object
	.size	rt_ToWksCurrSigDimsSize.3598, 4
rt_ToWksCurrSigDimsSize.3598:
	.word	4
	.local	rt_ToWksCurrSigDims.3597
	.comm	rt_ToWksCurrSigDims.3597,4,4
	.local	rt_ToWksIsVarDims.3596
	.comm	rt_ToWksIsVarDims.3596,1,4
	.align	2
	.type	rt_ToWksDimensions.3595, %object
	.size	rt_ToWksDimensions.3595, 4
rt_ToWksDimensions.3595:
	.word	1
	.align	2
	.type	rt_ToWksNumDimensions.3594, %object
	.size	rt_ToWksNumDimensions.3594, 4
rt_ToWksNumDimensions.3594:
	.word	1
	.align	2
	.type	rt_ToWksWidths.3593, %object
	.size	rt_ToWksWidths.3593, 4
rt_ToWksWidths.3593:
	.word	1
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksLabels.3590, %object
	.size	rt_ToWksLabels.3590, 4
rt_ToWksLabels.3590:
	.word	.LC2
	.local	rt_ToWksLoggingPreprocessingFcnPtrs.3589
	.comm	rt_ToWksLoggingPreprocessingFcnPtrs.3589,4,4
	.local	rt_ToWksFrameData.3588
	.comm	rt_ToWksFrameData.3588,4,4
	.local	rt_ToWksComplexSignals.3587
	.comm	rt_ToWksComplexSignals.3587,4,4
	.data
	.align	2
	.type	rt_ToWksDataTypeIds.3586, %object
	.size	rt_ToWksDataTypeIds.3586, 4
rt_ToWksDataTypeIds.3586:
	.word	1
	.align	2
	.type	rt_ToWksCurrSigDimsSize.3585, %object
	.size	rt_ToWksCurrSigDimsSize.3585, 4
rt_ToWksCurrSigDimsSize.3585:
	.word	4
	.local	rt_ToWksCurrSigDims.3584
	.comm	rt_ToWksCurrSigDims.3584,4,4
	.local	rt_ToWksIsVarDims.3583
	.comm	rt_ToWksIsVarDims.3583,1,4
	.align	2
	.type	rt_ToWksDimensions.3582, %object
	.size	rt_ToWksDimensions.3582, 4
rt_ToWksDimensions.3582:
	.word	1
	.align	2
	.type	rt_ToWksNumDimensions.3581, %object
	.size	rt_ToWksNumDimensions.3581, 4
rt_ToWksNumDimensions.3581:
	.word	1
	.align	2
	.type	rt_ToWksWidths.3580, %object
	.size	rt_ToWksWidths.3580, 4
rt_ToWksWidths.3580:
	.word	1
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksLabels.3577, %object
	.size	rt_ToWksLabels.3577, 4
rt_ToWksLabels.3577:
	.word	.LC2
	.local	rt_ToWksLoggingPreprocessingFcnPtrs.3576
	.comm	rt_ToWksLoggingPreprocessingFcnPtrs.3576,4,4
	.local	rt_ToWksFrameData.3575
	.comm	rt_ToWksFrameData.3575,4,4
	.local	rt_ToWksComplexSignals.3574
	.comm	rt_ToWksComplexSignals.3574,4,4
	.data
	.align	2
	.type	rt_ToWksDataTypeIds.3573, %object
	.size	rt_ToWksDataTypeIds.3573, 4
rt_ToWksDataTypeIds.3573:
	.word	1
	.align	2
	.type	rt_ToWksCurrSigDimsSize.3572, %object
	.size	rt_ToWksCurrSigDimsSize.3572, 4
rt_ToWksCurrSigDimsSize.3572:
	.word	4
	.local	rt_ToWksCurrSigDims.3571
	.comm	rt_ToWksCurrSigDims.3571,4,4
	.local	rt_ToWksIsVarDims.3570
	.comm	rt_ToWksIsVarDims.3570,1,4
	.align	2
	.type	rt_ToWksDimensions.3569, %object
	.size	rt_ToWksDimensions.3569, 4
rt_ToWksDimensions.3569:
	.word	1
	.align	2
	.type	rt_ToWksNumDimensions.3568, %object
	.size	rt_ToWksNumDimensions.3568, 4
rt_ToWksNumDimensions.3568:
	.word	1
	.align	2
	.type	rt_ToWksWidths.3567, %object
	.size	rt_ToWksWidths.3567, 4
rt_ToWksWidths.3567:
	.word	1
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksLabels.3564, %object
	.size	rt_ToWksLabels.3564, 4
rt_ToWksLabels.3564:
	.word	.LC2
	.local	rt_ToWksLoggingPreprocessingFcnPtrs.3563
	.comm	rt_ToWksLoggingPreprocessingFcnPtrs.3563,4,4
	.local	rt_ToWksFrameData.3562
	.comm	rt_ToWksFrameData.3562,4,4
	.local	rt_ToWksComplexSignals.3561
	.comm	rt_ToWksComplexSignals.3561,4,4
	.data
	.align	2
	.type	rt_ToWksDataTypeIds.3560, %object
	.size	rt_ToWksDataTypeIds.3560, 4
rt_ToWksDataTypeIds.3560:
	.word	1
	.align	2
	.type	rt_ToWksCurrSigDimsSize.3559, %object
	.size	rt_ToWksCurrSigDimsSize.3559, 4
rt_ToWksCurrSigDimsSize.3559:
	.word	4
	.local	rt_ToWksCurrSigDims.3558
	.comm	rt_ToWksCurrSigDims.3558,4,4
	.local	rt_ToWksIsVarDims.3557
	.comm	rt_ToWksIsVarDims.3557,1,4
	.align	2
	.type	rt_ToWksDimensions.3556, %object
	.size	rt_ToWksDimensions.3556, 4
rt_ToWksDimensions.3556:
	.word	1
	.align	2
	.type	rt_ToWksNumDimensions.3555, %object
	.size	rt_ToWksNumDimensions.3555, 4
rt_ToWksNumDimensions.3555:
	.word	1
	.align	2
	.type	rt_ToWksWidths.3554, %object
	.size	rt_ToWksWidths.3554, 4
rt_ToWksWidths.3554:
	.word	1
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksLabels.3551, %object
	.size	rt_ToWksLabels.3551, 4
rt_ToWksLabels.3551:
	.word	.LC2
	.local	rt_ToWksLoggingPreprocessingFcnPtrs.3550
	.comm	rt_ToWksLoggingPreprocessingFcnPtrs.3550,4,4
	.local	rt_ToWksFrameData.3549
	.comm	rt_ToWksFrameData.3549,4,4
	.local	rt_ToWksComplexSignals.3548
	.comm	rt_ToWksComplexSignals.3548,4,4
	.data
	.align	2
	.type	rt_ToWksDataTypeIds.3547, %object
	.size	rt_ToWksDataTypeIds.3547, 4
rt_ToWksDataTypeIds.3547:
	.word	1
	.align	2
	.type	rt_ToWksCurrSigDimsSize.3546, %object
	.size	rt_ToWksCurrSigDimsSize.3546, 4
rt_ToWksCurrSigDimsSize.3546:
	.word	4
	.local	rt_ToWksCurrSigDims.3545
	.comm	rt_ToWksCurrSigDims.3545,4,4
	.local	rt_ToWksIsVarDims.3544
	.comm	rt_ToWksIsVarDims.3544,1,4
	.align	2
	.type	rt_ToWksDimensions.3543, %object
	.size	rt_ToWksDimensions.3543, 4
rt_ToWksDimensions.3543:
	.word	1
	.align	2
	.type	rt_ToWksNumDimensions.3542, %object
	.size	rt_ToWksNumDimensions.3542, 4
rt_ToWksNumDimensions.3542:
	.word	1
	.align	2
	.type	rt_ToWksWidths.3541, %object
	.size	rt_ToWksWidths.3541, 4
rt_ToWksWidths.3541:
	.word	1
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksLabels.3538, %object
	.size	rt_ToWksLabels.3538, 4
rt_ToWksLabels.3538:
	.word	.LC2
	.local	rt_ToWksLoggingPreprocessingFcnPtrs.3537
	.comm	rt_ToWksLoggingPreprocessingFcnPtrs.3537,4,4
	.local	rt_ToWksFrameData.3536
	.comm	rt_ToWksFrameData.3536,4,4
	.local	rt_ToWksComplexSignals.3535
	.comm	rt_ToWksComplexSignals.3535,4,4
	.data
	.align	2
	.type	rt_ToWksDataTypeIds.3534, %object
	.size	rt_ToWksDataTypeIds.3534, 4
rt_ToWksDataTypeIds.3534:
	.word	1
	.align	2
	.type	rt_ToWksCurrSigDimsSize.3533, %object
	.size	rt_ToWksCurrSigDimsSize.3533, 4
rt_ToWksCurrSigDimsSize.3533:
	.word	4
	.local	rt_ToWksCurrSigDims.3532
	.comm	rt_ToWksCurrSigDims.3532,4,4
	.local	rt_ToWksIsVarDims.3531
	.comm	rt_ToWksIsVarDims.3531,1,4
	.align	2
	.type	rt_ToWksDimensions.3530, %object
	.size	rt_ToWksDimensions.3530, 4
rt_ToWksDimensions.3530:
	.word	1
	.align	2
	.type	rt_ToWksNumDimensions.3529, %object
	.size	rt_ToWksNumDimensions.3529, 4
rt_ToWksNumDimensions.3529:
	.word	1
	.align	2
	.type	rt_ToWksWidths.3528, %object
	.size	rt_ToWksWidths.3528, 4
rt_ToWksWidths.3528:
	.word	1
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksLabels.3525, %object
	.size	rt_ToWksLabels.3525, 4
rt_ToWksLabels.3525:
	.word	.LC2
	.local	rt_ToWksLoggingPreprocessingFcnPtrs.3524
	.comm	rt_ToWksLoggingPreprocessingFcnPtrs.3524,4,4
	.local	rt_ToWksFrameData.3523
	.comm	rt_ToWksFrameData.3523,4,4
	.local	rt_ToWksComplexSignals.3522
	.comm	rt_ToWksComplexSignals.3522,4,4
	.data
	.align	2
	.type	rt_ToWksDataTypeIds.3521, %object
	.size	rt_ToWksDataTypeIds.3521, 4
rt_ToWksDataTypeIds.3521:
	.word	1
	.align	2
	.type	rt_ToWksCurrSigDimsSize.3520, %object
	.size	rt_ToWksCurrSigDimsSize.3520, 4
rt_ToWksCurrSigDimsSize.3520:
	.word	4
	.local	rt_ToWksCurrSigDims.3519
	.comm	rt_ToWksCurrSigDims.3519,4,4
	.local	rt_ToWksIsVarDims.3518
	.comm	rt_ToWksIsVarDims.3518,1,4
	.align	2
	.type	rt_ToWksDimensions.3517, %object
	.size	rt_ToWksDimensions.3517, 4
rt_ToWksDimensions.3517:
	.word	1
	.align	2
	.type	rt_ToWksNumDimensions.3516, %object
	.size	rt_ToWksNumDimensions.3516, 4
rt_ToWksNumDimensions.3516:
	.word	1
	.align	2
	.type	rt_ToWksWidths.3515, %object
	.size	rt_ToWksWidths.3515, 4
rt_ToWksWidths.3515:
	.word	1
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksLabels.3512, %object
	.size	rt_ToWksLabels.3512, 4
rt_ToWksLabels.3512:
	.word	.LC2
	.local	rt_ToWksLoggingPreprocessingFcnPtrs.3511
	.comm	rt_ToWksLoggingPreprocessingFcnPtrs.3511,4,4
	.local	rt_ToWksFrameData.3510
	.comm	rt_ToWksFrameData.3510,4,4
	.local	rt_ToWksComplexSignals.3509
	.comm	rt_ToWksComplexSignals.3509,4,4
	.data
	.align	2
	.type	rt_ToWksDataTypeIds.3508, %object
	.size	rt_ToWksDataTypeIds.3508, 4
rt_ToWksDataTypeIds.3508:
	.word	1
	.align	2
	.type	rt_ToWksCurrSigDimsSize.3507, %object
	.size	rt_ToWksCurrSigDimsSize.3507, 4
rt_ToWksCurrSigDimsSize.3507:
	.word	4
	.local	rt_ToWksCurrSigDims.3506
	.comm	rt_ToWksCurrSigDims.3506,4,4
	.local	rt_ToWksIsVarDims.3505
	.comm	rt_ToWksIsVarDims.3505,1,4
	.align	2
	.type	rt_ToWksDimensions.3504, %object
	.size	rt_ToWksDimensions.3504, 4
rt_ToWksDimensions.3504:
	.word	1
	.align	2
	.type	rt_ToWksNumDimensions.3503, %object
	.size	rt_ToWksNumDimensions.3503, 4
rt_ToWksNumDimensions.3503:
	.word	1
	.align	2
	.type	rt_ToWksWidths.3502, %object
	.size	rt_ToWksWidths.3502, 4
rt_ToWksWidths.3502:
	.word	1
	.ident	"GCC: (Sourcery G++ Lite 2009q3-67) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
