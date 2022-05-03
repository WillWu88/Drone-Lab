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
	.file	"parrot_gettingstarted.c"
	.comm	cmd_inport,36,4
	.comm	sensor_inport,2496,8
	.comm	motors_outport,16,4
	.comm	flag_outport,1,1
	.comm	parrot_gettingstarted_B,200,8
	.comm	parrot_gettingstarted_DW,48,8
	.comm	parrot_gettingstarted_Y,20,4
	.local	parrot_gettingstarted_M_
	.comm	parrot_gettingstarted_M_,48,8
	.global	parrot_gettingstarted_M
	.section	.data.rel.ro.local,"aw",%progbits
	.align	2
	.type	parrot_gettingstarted_M, %object
	.size	parrot_gettingstarted_M, 4
parrot_gettingstarted_M:
	.word	parrot_gettingstarted_M_
	.text
	.align	2
	.global	parrot__MeasurementUpdate_Start
	.type	parrot__MeasurementUpdate_Start, %function
parrot__MeasurementUpdate_Start:
	.fnstart
.LFB0:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.save {fp}
.LCFI0:
	.setfp fp, sp, #0
	add	fp, sp, #0
.LCFI1:
	.pad #12
	sub	sp, sp, #12
.LCFI2:
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r2, #0
	strb	r2, [r3, #0]
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.LFE0:
	.fnend
	.size	parrot__MeasurementUpdate_Start, .-parrot__MeasurementUpdate_Start
	.align	2
	.global	parrot_g_EnabledSubsystem_Start
	.type	parrot_g_EnabledSubsystem_Start, %function
parrot_g_EnabledSubsystem_Start:
	.fnstart
.LFB1:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.save {fp}
.LCFI3:
	.setfp fp, sp, #0
	add	fp, sp, #0
.LCFI4:
	.pad #12
	sub	sp, sp, #12
.LCFI5:
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r2, #0
	strb	r2, [r3, #0]
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.LFE1:
	.fnend
	.size	parrot_g_EnabledSubsystem_Start, .-parrot_g_EnabledSubsystem_Start
	.global	__aeabi_dmul
	.global	__aeabi_d2f
	.global	__aeabi_f2d
	.global	__aeabi_dadd
	.global	__aeabi_dsub
	.global	__aeabi_ddiv
	.global	__aeabi_fmul
	.global	__aeabi_fadd
	.global	__aeabi_fdiv
	.global	__aeabi_fsub
	.global	__aeabi_dcmpeq
	.global	__aeabi_dcmpgt
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Simulation finished\000"
	.global	__aeabi_ui2d
	.text
	.align	2
	.global	parrot_gettingstarted_step
	.type	parrot_gettingstarted_step, %function
parrot_gettingstarted_step:
	.fnstart
.LFB2:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, fp, lr}
	.save {r4, r5, r6, r7, r8, r9, fp, lr}
.LCFI6:
	.setfp fp, sp, #28
	add	fp, sp, #28
.LCFI7:
	.pad #72
	sub	sp, sp, #72
.LCFI8:
	ldr	r4, .L35
.LPIC0:
	add	r4, pc, r4
	ldr	r3, .L35+28
	ldr	r3, [r4, r3]
	ldrd	r0, [r3, #152]
	ldr	r3, .L35+28
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #144]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	strd	r2, [fp, #-84]
	ldr	r3, .L35+28
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #192]
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, .L35+32
	ldr	r1, [r4, r1]
	strd	r2, [r1, #112]
	ldr	r3, .L35+28
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #200]
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, .L35+32
	ldr	r1, [r4, r1]
	strd	r2, [r1, #120]
	ldr	r3, .L35+28
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #208]
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, .L35+32
	ldr	r1, [r4, r1]
	strd	r2, [r1, #128]
	ldr	r3, .L35+28
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #216]
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, .L35+32
	ldr	r1, [r4, r1]
	strd	r2, [r1, #136]
	mov	r3, #0
	str	r3, [fp, #-52]
	b	.L6
.L7:
	ldr	r5, [fp, #-52]
	ldr	r3, [fp, #-52]
	add	r2, r3, #4
	ldr	r3, .L35+28
	ldr	r3, [r4, r3]
	add	r2, r2, #2
	mov	r2, r2, asl #3
	add	r3, r2, r3
	ldrd	r0, [r3]
	ldr	r3, .L35+28
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #224]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r6, r2
	mov	r7, r3
	ldr	r2, [fp, #-52]
	ldr	r3, .L35+28
	ldr	r3, [r4, r3]
	add	r2, r2, #2
	mov	r2, r2, asl #3
	add	r3, r2, r3
	ldrd	r0, [r3]
	ldrd	r2, [fp, #-84]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r6, r2
	mov	r7, r3
	ldr	r3, [fp, #-52]
	add	r2, r3, #8
	ldr	r3, .L35+28
	ldr	r3, [r4, r3]
	add	r2, r2, #2
	mov	r2, r2, asl #3
	add	r3, r2, r3
	ldrd	r0, [r3]
	ldr	r3, .L35+28
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #224]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r6, r2
	mov	r7, r3
	ldr	r3, [fp, #-52]
	add	r2, r3, #12
	ldr	r3, .L35+28
	ldr	r3, [r4, r3]
	add	r2, r2, #2
	mov	r2, r2, asl #3
	add	r3, r2, r3
	ldrd	r0, [r3]
	ldr	r3, .L35+28
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #224]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-52]
	ldr	r3, .L35+32
	ldr	r3, [r4, r3]
	add	r2, r2, #14
	mov	r2, r2, asl #3
	add	r3, r2, r3
	ldrd	r2, [r3]
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f(PLT)
	mov	r2, r0
	ldr	r3, .L35+4
	ldr	r3, [r4, r3]
	str	r2, [r3, r5, asl #2]	@ float
	ldr	r2, [fp, #-52]
	ldr	r1, [fp, #-52]
	ldr	r3, .L35+4
	ldr	r3, [r4, r3]
	ldr	r1, [r3, r1, asl #2]	@ float
	ldr	r3, .L35+8
	ldr	r3, [r4, r3]
	str	r1, [r3, r2, asl #2]	@ float
	ldr	r3, [fp, #-52]
	add	r3, r3, #1
	str	r3, [fp, #-52]
.L6:
	ldr	r3, [fp, #-52]
	cmp	r3, #3
	ble	.L7
	ldr	r3, .L35+28
	ldr	r3, [r4, r3]
	ldrb	r3, [r3, #532]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L8
	ldr	r3, .L35+28
	ldr	r3, [r4, r3]
	ldrb	r2, [r3, #530]	@ zero_extendqisi2
	ldr	r3, .L35+12
	ldr	r3, [r4, r3]
	strb	r2, [r3, #0]
	b	.L9
.L8:
	ldr	r3, .L35+28
	ldr	r3, [r4, r3]
	ldrb	r2, [r3, #531]	@ zero_extendqisi2
	ldr	r3, .L35+12
	ldr	r3, [r4, r3]
	strb	r2, [r3, #0]
.L9:
	ldr	r3, .L35+12
	ldr	r3, [r4, r3]
	ldrb	r2, [r3, #0]	@ zero_extendqisi2
	ldr	r3, .L35+8
	ldr	r3, [r4, r3]
	strb	r2, [r3, #16]
	ldr	r3, .L35+36
	ldr	r3, [r4, r3]
	ldrb	r3, [r3, #32]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L10
	ldr	r3, .L35+28
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #248]
	ldr	r1, .L35+36
	ldr	r1, [r4, r1]
	strd	r2, [r1]
	ldr	r3, .L35+28
	ldr	r2, [r4, r3]
	mov	r3, #256
	add	r3, r3, r2
	ldrd	r2, [r3]
	ldr	r1, .L35+36
	ldr	r1, [r4, r1]
	strd	r2, [r1, #8]
.L10:
	ldr	r3, .L35+28
	ldr	r3, [r4, r3]
	ldrb	r3, [r3, #520]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L11
	ldr	r3, .L35+36
	ldr	r3, [r4, r3]
	mov	r2, #1
	strb	r2, [r3, #39]
	ldr	r3, .L35+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #416]	@ float
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	mov	r6, r0
	mov	r7, r1
	ldr	r3, .L35+28
	ldr	r3, [r4, r3]
	ldrd	r0, [r3, #232]
	ldr	r3, .L35+36
	ldr	r3, [r4, r3]
	ldrd	r2, [r3]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r8, r2
	mov	r9, r3
	ldr	r3, .L35+28
	ldr	r3, [r4, r3]
	ldrd	r0, [r3, #240]
	ldr	r3, .L35+36
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #8]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dsub(PLT)
	mov	r2, r0
	mov	r3, r1
	strd	r2, [fp, #-84]
	ldr	r3, .L35+28
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #464]	@ float
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	ldrd	r2, [fp, #-84]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, .L35+32
	ldr	r1, [r4, r1]
	strd	r2, [r1, #160]
	ldr	r3, .L35+28
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #468]	@ float
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	ldrd	r2, [fp, #-84]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, .L35+32
	ldr	r1, [r4, r1]
	strd	r2, [r1, #168]
	b	.L12
.L11:
	ldr	r3, .L35+36
	ldr	r3, [r4, r3]
	ldrb	r3, [r3, #39]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L12
	ldr	r3, .L35+28
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #168]
	ldr	r1, .L35+32
	ldr	r1, [r4, r1]
	strd	r2, [r1, #160]
	ldr	r3, .L35+28
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #168]
	ldr	r1, .L35+32
	ldr	r1, [r4, r1]
	strd	r2, [r1, #168]
	ldr	r3, .L35+36
	ldr	r3, [r4, r3]
	mov	r2, #0
	strb	r2, [r3, #39]
.L12:
	ldr	r3, .L35+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #60]	@ float
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	ldr	r3, .L35+28
	ldr	r2, [r4, r3]
	mov	r3, #264
	add	r3, r3, r2
	ldrd	r2, [r3]
	bl	__aeabi_dsub(PLT)
	mov	r2, r0
	mov	r3, r1
	strd	r2, [fp, #-76]
	ldr	r3, .L35+28
	ldr	r3, [r4, r3]
	ldrb	r3, [r3, #520]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L13
	ldr	r3, .L35+36
	ldr	r3, [r4, r3]
	mov	r2, #1
	strb	r2, [r3, #40]
	ldr	r3, .L35+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #416]	@ float
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	mov	r6, r0
	mov	r7, r1
	ldr	r3, .L35+28
	ldr	r3, [r4, r3]
	ldrd	r0, [r3, #232]
	ldr	r3, .L35+36
	ldr	r3, [r4, r3]
	ldrd	r2, [r3]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r8, r2
	mov	r9, r3
	ldr	r3, .L35+28
	ldr	r3, [r4, r3]
	ldrd	r0, [r3, #240]
	ldr	r3, .L35+36
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #8]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r8, r2
	mov	r9, r3
	ldr	r3, .L35+28
	ldr	r2, [r4, r3]
	mov	r3, #336
	add	r3, r3, r2
	ldrd	r2, [r3]
	mov	r0, r2
	mov	r1, r3
	ldrd	r2, [fp, #-76]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dsub(PLT)
	mov	r2, r0
	mov	r3, r1
	strd	r2, [fp, #-84]
	ldr	r3, .L35+28
	ldr	r2, [r4, r3]
	mov	r3, #320
	ldrd	r0, [r2, r3]
	ldrd	r2, [fp, #-84]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, .L35+32
	ldr	r1, [r4, r1]
	strd	r2, [r1, #176]
	ldr	r3, .L35+28
	ldr	r2, [r4, r3]
	mov	r3, #328
	ldrd	r0, [r2, r3]
	ldrd	r2, [fp, #-84]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, .L35+32
	ldr	r1, [r4, r1]
	strd	r2, [r1, #184]
	b	.L14
.L13:
	ldr	r3, .L35+36
	ldr	r3, [r4, r3]
	ldrb	r3, [r3, #40]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L14
	ldr	r3, .L35+28
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #160]
	ldr	r1, .L35+32
	ldr	r1, [r4, r1]
	strd	r2, [r1, #176]
	ldr	r3, .L35+28
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #160]
	ldr	r1, .L35+32
	ldr	r1, [r4, r1]
	strd	r2, [r1, #184]
	ldr	r3, .L35+36
	ldr	r3, [r4, r3]
	mov	r2, #0
	strb	r2, [r3, #40]
.L14:
	ldr	r3, .L35+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #56]	@ float
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	mov	r6, r0
	mov	r7, r1
	ldr	r3, .L35+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #60]	@ float
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_ddiv(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	atan(PLT)
	mov	r2, r0
	mov	r3, r1
	strd	r2, [fp, #-84]
	ldr	r3, .L35+36
	ldr	r3, [r4, r3]
	ldrb	r3, [r3, #33]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L15
	ldr	r3, .L35+28
	ldr	r2, [r4, r3]
	mov	r3, #360
	add	r3, r3, r2
	ldrd	r2, [r3]
	ldr	r1, .L35+36
	ldr	r1, [r4, r1]
	strd	r2, [r1, #16]
.L15:
	ldr	r3, .L35+28
	ldr	r3, [r4, r3]
	ldrb	r3, [r3, #522]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L16
	ldr	r3, .L35+36
	ldr	r3, [r4, r3]
	mov	r2, #1
	strb	r2, [r3, #37]
	ldrd	r6, [fp, #-84]
	ldr	r3, .L35+28
	ldr	r2, [r4, r3]
	mov	r3, #352
	ldrd	r0, [r2, r3]
	ldr	r3, .L35+36
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #16]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dsub(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L35+28
	ldr	r2, [r4, r3]
	mov	r3, #344
	add	r3, r3, r2
	ldrd	r2, [r3]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, .L35+32
	ldr	r1, [r4, r1]
	strd	r2, [r1, #144]
	b	.L17
.L16:
	ldr	r3, .L35+36
	ldr	r3, [r4, r3]
	ldrb	r3, [r3, #37]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L17
	ldr	r3, .L35+28
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #184]
	ldr	r1, .L35+32
	ldr	r1, [r4, r1]
	strd	r2, [r1, #144]
	ldr	r3, .L35+36
	ldr	r3, [r4, r3]
	mov	r2, #0
	strb	r2, [r3, #37]
.L17:
	ldr	r3, .L35+32
	ldr	r3, [r4, r3]
	ldrd	r0, [r3, #144]
	ldr	r3, .L35+36
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #16]
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f(PLT)
	mov	r3, r0
	str	r3, [fp, #-40]	@ float
	ldr	r3, .L35+28
	ldr	r3, [r4, r3]
	ldrb	r3, [r3, #522]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L18
	ldr	r3, .L35+36
	ldr	r3, [r4, r3]
	mov	r2, #1
	strb	r2, [r3, #38]
	ldrd	r6, [fp, #-84]
	ldr	r3, .L35+28
	ldr	r2, [r4, r3]
	mov	r3, #352
	ldrd	r0, [r2, r3]
	ldr	r3, .L35+36
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #16]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r8, r2
	mov	r9, r3
	ldr	r3, .L35+28
	ldr	r2, [r4, r3]
	mov	r3, #400
	ldrd	r0, [r2, r3]
	strd	r0, [fp, #-100]
	ldr	r3, .L35+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #68]	@ float
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	mov	r2, r0
	mov	r3, r1
	ldrd	r0, [fp, #-100]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dsub(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L35+28
	ldr	r2, [r4, r3]
	mov	r3, #392
	add	r3, r3, r2
	ldrd	r2, [r3]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, .L35+32
	ldr	r1, [r4, r1]
	strd	r2, [r1, #152]
	b	.L19
.L18:
	ldr	r3, .L35+36
	ldr	r3, [r4, r3]
	ldrb	r3, [r3, #38]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L19
	ldr	r3, .L35+28
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #176]
	ldr	r1, .L35+32
	ldr	r1, [r4, r1]
	strd	r2, [r1, #152]
	ldr	r3, .L35+36
	ldr	r3, [r4, r3]
	mov	r2, #0
	strb	r2, [r3, #38]
.L19:
	ldr	r3, .L35+28
	ldr	r2, [r4, r3]
	mov	r3, #376
	ldrd	r6, [r2, r3]
	ldr	r3, .L35+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #68]	@ float
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r6, r2
	mov	r7, r3
	ldr	r3, .L35+28
	ldr	r2, [r4, r3]
	mov	r3, #368
	ldrd	r0, [r2, r3]
	ldr	r3, .L35+36
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #16]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L35+32
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #152]
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, .L35+36
	ldr	r1, [r4, r1]
	strd	r2, [r1, #16]
	ldr	r3, .L35+28
	ldr	r3, [r4, r3]
	ldr	r2, [r3, #488]	@ float
	ldr	r3, .L35+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #52]	@ float
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_fmul(PLT)
	mov	r3, r0
	mov	r5, r3
	ldr	r3, .L35+16
	ldr	r3, [r4, r3]
	ldr	r2, [r3, #56]	@ float
	ldr	r3, .L35+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #56]	@ float
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_fmul(PLT)
	mov	r3, r0
	mov	r6, r3
	ldr	r3, .L35+16
	ldr	r3, [r4, r3]
	ldr	r2, [r3, #60]	@ float
	ldr	r3, .L35+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #60]	@ float
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_fmul(PLT)
	mov	r3, r0
	mov	r0, r6
	mov	r1, r3
	bl	__aeabi_fadd(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	sqrt(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f(PLT)
	mov	r3, r0
	mov	r0, r5
	mov	r1, r3
	bl	__aeabi_fdiv(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	atan(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f(PLT)
	mov	r3, r0
	str	r3, [fp, #-32]	@ float
	ldr	r3, .L35+28
	ldr	r3, [r4, r3]
	ldr	r2, [r3, #492]	@ float
	ldr	r3, .L35+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #72]	@ float
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_fmul(PLT)
	mov	r3, r0
	str	r3, [fp, #-36]	@ float
	ldr	r3, .L35+36
	ldr	r3, [r4, r3]
	ldrb	r3, [r3, #34]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L20
	ldr	r3, .L35+28
	ldr	r3, [r4, r3]
	ldr	r2, [r3, #512]	@ float
	ldr	r3, .L35+36
	ldr	r3, [r4, r3]
	str	r2, [r3, #28]	@ float
.L20:
	ldr	r3, .L35+28
	ldr	r3, [r4, r3]
	ldrb	r3, [r3, #525]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L21
	ldr	r3, .L35+36
	ldr	r3, [r4, r3]
	mov	r2, #1
	strb	r2, [r3, #36]
	ldr	r3, .L35+28
	ldr	r3, [r4, r3]
	ldr	r2, [r3, #504]	@ float
	ldr	r3, .L35+36
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #28]	@ float
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_fmul(PLT)
	mov	r3, r0
	str	r3, [fp, #-44]	@ float
	ldr	r3, .L35+28
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #508]	@ float
	mov	r0, r3
	ldr	r1, [fp, #-36]	@ float
	bl	__aeabi_fmul(PLT)
	mov	r3, r0
	mov	r0, r3
	ldr	r1, [fp, #-44]	@ float
	bl	__aeabi_fadd(PLT)
	mov	r3, r0
	ldr	r0, [fp, #-32]	@ float
	mov	r1, r3
	bl	__aeabi_fsub(PLT)
	mov	r3, r0
	mov	r5, r3
	ldr	r3, .L35+28
	ldr	r2, [r4, r3]
	mov	r3, #416
	add	r3, r3, r2
	ldrd	r2, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f(PLT)
	mov	r3, r0
	mov	r0, r5
	mov	r1, r3
	bl	__aeabi_fmul(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, .L35+32
	ldr	r3, [r4, r3]
	str	r2, [r3, #196]	@ float
	ldr	r3, .L35+36
	ldr	r3, [r4, r3]
	mov	r2, #1
	strb	r2, [r3, #35]
	ldr	r0, [fp, #-32]	@ float
	ldr	r1, [fp, #-44]	@ float
	bl	__aeabi_fsub(PLT)
	mov	r3, r0
	mov	r5, r3
	ldr	r3, .L35+28
	ldr	r2, [r4, r3]
	mov	r3, #424
	add	r3, r3, r2
	ldrd	r2, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f(PLT)
	mov	r3, r0
	mov	r0, r5
	mov	r1, r3
	bl	__aeabi_fmul(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, .L35+32
	ldr	r3, [r4, r3]
	str	r2, [r3, #192]	@ float
	b	.L22
.L36:
	.align	2
.L35:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+8)
	.word	motors_outport(GOT)
	.word	parrot_gettingstarted_Y(GOT)
	.word	flag_outport(GOT)
	.word	sensor_inport(GOT)
	.word	1065353216
	.word	0
	.word	parrot_gettingstarted_P(GOT)
	.word	parrot_gettingstarted_B(GOT)
	.word	parrot_gettingstarted_DW(GOT)
	.word	.LC0(GOTOFF)
	.word	parrot_gettingstarted_M(GOT)
.L21:
	ldr	r3, .L35+36
	ldr	r3, [r4, r3]
	ldrb	r3, [r3, #36]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L23
	ldr	r3, .L35+28
	ldr	r3, [r4, r3]
	ldr	r2, [r3, #456]	@ float
	ldr	r3, .L35+32
	ldr	r3, [r4, r3]
	str	r2, [r3, #196]	@ float
	ldr	r3, .L35+36
	ldr	r3, [r4, r3]
	mov	r2, #0
	strb	r2, [r3, #36]
.L23:
	ldr	r3, .L35+36
	ldr	r3, [r4, r3]
	ldrb	r3, [r3, #35]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L22
	ldr	r3, .L35+28
	ldr	r3, [r4, r3]
	ldr	r2, [r3, #460]	@ float
	ldr	r3, .L35+32
	ldr	r3, [r4, r3]
	str	r2, [r3, #192]	@ float
	ldr	r3, .L35+36
	ldr	r3, [r4, r3]
	mov	r2, #0
	strb	r2, [r3, #35]
.L22:
	ldr	r3, .L35+32
	ldr	r3, [r4, r3]
	ldr	r2, [r3, #192]	@ float
	ldr	r3, .L35+36
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #28]	@ float
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_fadd(PLT)
	mov	r3, r0
	str	r3, [fp, #-32]	@ float
	ldr	r0, [fp, #-40]	@ float
	bl	__aeabi_f2d(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	sin(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f(PLT)
	mov	r3, r0
	str	r3, [fp, #-44]	@ float
	ldr	r0, [fp, #-40]	@ float
	bl	__aeabi_f2d(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	cos(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f(PLT)
	mov	r3, r0
	str	r3, [fp, #-40]	@ float
	ldr	r3, .L35+32
	ldr	r3, [r4, r3]
	ldr	r2, .L35+24	@ float
	str	r2, [r3, #40]	@ float
	ldr	r3, .L35+32
	ldr	r3, [r4, r3]
	ldr	r2, [fp, #-40]	@ float
	str	r2, [r3, #52]	@ float
	ldr	r3, .L35+32
	ldr	r3, [r4, r3]
	ldr	r2, [fp, #-44]	@ float
	str	r2, [r3, #64]	@ float
	ldr	r3, .L35+32
	ldr	r3, [r4, r3]
	ldr	r2, .L35+24	@ float
	str	r2, [r3, #44]	@ float
	ldr	r3, [fp, #-44]
	eor	r2, r3, #-2147483648
	ldr	r3, .L35+32
	ldr	r3, [r4, r3]
	str	r2, [r3, #56]	@ float
	ldr	r3, .L35+32
	ldr	r3, [r4, r3]
	ldr	r2, [fp, #-40]	@ float
	str	r2, [r3, #68]	@ float
	ldr	r0, [fp, #-32]	@ float
	bl	__aeabi_f2d(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	sin(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f(PLT)
	mov	r3, r0
	str	r3, [fp, #-40]	@ float
	ldr	r0, [fp, #-32]	@ float
	bl	__aeabi_f2d(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	cos(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f(PLT)
	mov	r3, r0
	str	r3, [fp, #-32]	@ float
	ldr	r3, .L35+32
	ldr	r3, [r4, r3]
	ldr	r2, [fp, #-32]	@ float
	str	r2, [r3, #72]	@ float
	ldr	r3, .L35+32
	ldr	r3, [r4, r3]
	ldr	r2, .L35+24	@ float
	str	r2, [r3, #84]	@ float
	ldr	r3, [fp, #-40]
	eor	r2, r3, #-2147483648
	ldr	r3, .L35+32
	ldr	r3, [r4, r3]
	str	r2, [r3, #96]	@ float
	ldr	r3, .L35+32
	ldr	r3, [r4, r3]
	ldr	r2, .L35+20	@ float
	str	r2, [r3, #36]	@ float
	ldr	r3, .L35+32
	ldr	r3, [r4, r3]
	ldr	r2, .L35+24	@ float
	str	r2, [r3, #76]	@ float
	ldr	r3, .L35+32
	ldr	r3, [r4, r3]
	ldr	r2, .L35+24	@ float
	str	r2, [r3, #48]	@ float
	ldr	r3, .L35+32
	ldr	r3, [r4, r3]
	ldr	r2, .L35+20	@ float
	str	r2, [r3, #88]	@ float
	ldr	r3, .L35+32
	ldr	r3, [r4, r3]
	ldr	r2, .L35+24	@ float
	str	r2, [r3, #60]	@ float
	ldr	r3, .L35+32
	ldr	r3, [r4, r3]
	ldr	r2, .L35+24	@ float
	str	r2, [r3, #100]	@ float
	ldr	r3, .L35+32
	ldr	r3, [r4, r3]
	ldr	r2, [fp, #-40]	@ float
	str	r2, [r3, #80]	@ float
	ldr	r3, .L35+32
	ldr	r3, [r4, r3]
	ldr	r2, .L35+24	@ float
	str	r2, [r3, #92]	@ float
	ldr	r3, .L35+32
	ldr	r3, [r4, r3]
	ldr	r2, [fp, #-32]	@ float
	str	r2, [r3, #104]	@ float
	mov	r3, #0
	str	r3, [fp, #-48]
	b	.L24
.L27:
	ldr	r2, [fp, #-48]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	str	r3, [fp, #-56]
	mov	r3, #0
	str	r3, [fp, #-52]
	b	.L25
.L26:
	ldr	r2, [fp, #-52]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	str	r3, [fp, #-60]
	ldr	r2, [fp, #-56]
	ldr	r3, [fp, #-52]
	add	r5, r2, r3
	ldr	r3, [fp, #-60]
	add	r3, r3, #1
	ldr	r2, .L35+32
	ldr	r2, [r4, r2]
	add	r1, r3, #8
	mov	r3, #4
	mov	r1, r1, asl #2
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [r3, #0]	@ float
	ldr	r3, [fp, #-48]
	add	r1, r3, #3
	ldr	r3, .L35+32
	ldr	r3, [r4, r3]
	add	r1, r1, #18
	ldr	r3, [r3, r1, asl #2]	@ float
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_fmul(PLT)
	mov	r3, r0
	mov	r6, r3
	ldr	r3, [fp, #-60]
	ldr	r2, .L35+32
	ldr	r2, [r4, r2]
	add	r1, r3, #8
	mov	r3, #4
	mov	r1, r1, asl #2
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [r3, #0]	@ float
	ldr	r1, [fp, #-48]
	ldr	r3, .L35+32
	ldr	r3, [r4, r3]
	add	r1, r1, #18
	ldr	r3, [r3, r1, asl #2]	@ float
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_fmul(PLT)
	mov	r3, r0
	mov	r0, r6
	mov	r1, r3
	bl	__aeabi_fadd(PLT)
	mov	r3, r0
	mov	r6, r3
	ldr	r3, [fp, #-60]
	add	r3, r3, #2
	ldr	r2, .L35+32
	ldr	r2, [r4, r2]
	add	r1, r3, #8
	mov	r3, #4
	mov	r1, r1, asl #2
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [r3, #0]	@ float
	ldr	r3, [fp, #-48]
	add	r1, r3, #6
	ldr	r3, .L35+32
	ldr	r3, [r4, r3]
	add	r1, r1, #18
	ldr	r3, [r3, r1, asl #2]	@ float
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_fmul(PLT)
	mov	r3, r0
	mov	r0, r6
	mov	r1, r3
	bl	__aeabi_fadd(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, .L35+32
	ldr	r3, [r4, r3]
	str	r2, [r3, r5, asl #2]	@ float
	ldr	r3, [fp, #-52]
	add	r3, r3, #1
	str	r3, [fp, #-52]
.L25:
	ldr	r3, [fp, #-52]
	cmp	r3, #2
	ble	.L26
	ldr	r3, [fp, #-48]
	add	r3, r3, #1
	str	r3, [fp, #-48]
.L24:
	ldr	r3, [fp, #-48]
	cmp	r3, #2
	ble	.L27
	ldr	r3, .L35+28
	ldr	r2, [r4, r3]
	mov	r3, #440
	ldrd	r6, [r2, r3]
	ldr	r3, .L35+32
	ldr	r3, [r4, r3]
	ldrd	r0, [r3, #160]
	ldr	r3, .L35+36
	ldr	r3, [r4, r3]
	ldrd	r2, [r3]
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f(PLT)
	mov	r2, r0
	ldr	r3, .L35+32
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #8]	@ float
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_fmul(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dsub(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L35+28
	ldr	r3, [r4, r3]
	ldrd	r2, [r3]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r6, r2
	mov	r7, r3
	ldr	r3, .L35+28
	ldr	r2, [r4, r3]
	mov	r3, #448
	ldrd	r8, [r2, r3]
	ldr	r3, .L35+32
	ldr	r3, [r4, r3]
	ldrd	r0, [r3, #168]
	ldr	r3, .L35+36
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #8]
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dsub(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L35+28
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #8]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	strd	r2, [fp, #-84]
	ldr	r3, .L35+44
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #8]
	strd	r2, [fp, #-92]
	ldr	r3, .L35+36
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #24]
	mov	r1, r3
	sub	r2, fp, #92
	sub	r3, fp, #84
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	rt_UpdateStructLogVar(PLT)
	ldr	r3, .L35+36
	ldr	r3, [r4, r3]
	mov	r2, #0
	strb	r2, [r3, #32]
	ldr	r3, .L35+28
	ldr	r2, [r4, r3]
	mov	r3, #272
	ldrd	r0, [r2, r3]
	ldr	r3, .L35+36
	ldr	r3, [r4, r3]
	ldrd	r2, [r3]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r6, r2
	mov	r7, r3
	ldr	r3, .L35+36
	ldr	r3, [r4, r3]
	ldrd	r0, [r3, #8]
	ldr	r3, .L35+28
	ldr	r2, [r4, r3]
	mov	r3, #288
	add	r3, r3, r2
	ldrd	r2, [r3]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	strd	r2, [fp, #-84]
	ldr	r3, .L35+36
	ldr	r3, [r4, r3]
	ldrd	r0, [r3]
	ldr	r3, .L35+28
	ldr	r2, [r4, r3]
	mov	r3, #280
	add	r3, r3, r2
	ldrd	r2, [r3]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r6, r2
	mov	r7, r3
	ldr	r3, .L35+36
	ldr	r3, [r4, r3]
	ldrd	r0, [r3, #8]
	ldr	r3, .L35+28
	ldr	r2, [r4, r3]
	mov	r3, #296
	add	r3, r3, r2
	ldrd	r2, [r3]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	strd	r2, [fp, #-68]
	ldr	r3, .L35+28
	ldr	r2, [r4, r3]
	mov	r3, #304
	add	r3, r3, r2
	ldrd	r2, [r3]
	mov	r0, r2
	mov	r1, r3
	ldrd	r2, [fp, #-76]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	ldrd	r2, [fp, #-84]
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L35+32
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #176]
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, .L35+36
	ldr	r1, [r4, r1]
	strd	r2, [r1]
	ldr	r3, .L35+28
	ldr	r2, [r4, r3]
	mov	r3, #312
	add	r3, r3, r2
	ldrd	r2, [r3]
	mov	r0, r2
	mov	r1, r3
	ldrd	r2, [fp, #-76]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	ldrd	r2, [fp, #-68]
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L35+32
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #184]
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, .L35+36
	ldr	r1, [r4, r1]
	strd	r2, [r1, #8]
	ldr	r3, .L35+36
	ldr	r3, [r4, r3]
	mov	r2, #0
	strb	r2, [r3, #33]
	ldr	r3, .L35+36
	ldr	r3, [r4, r3]
	mov	r2, #0
	strb	r2, [r3, #34]
	ldr	r3, .L35+28
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #500]	@ float
	mov	r0, r3
	ldr	r1, [fp, #-36]	@ float
	bl	__aeabi_fmul(PLT)
	mov	r3, r0
	mov	r5, r3
	ldr	r3, .L35+28
	ldr	r3, [r4, r3]
	ldr	r2, [r3, #496]	@ float
	ldr	r3, .L35+36
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #28]	@ float
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_fmul(PLT)
	mov	r3, r0
	mov	r0, r5
	mov	r1, r3
	bl	__aeabi_fadd(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, .L35+32
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #196]	@ float
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_fadd(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, .L35+36
	ldr	r3, [r4, r3]
	str	r2, [r3, #28]	@ float
	ldr	r3, .L35+44
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r2, [r3, #4]
	ldr	r3, .L35+44
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	add	r3, r3, #8
	mov	r0, r2
	mov	r1, r3
	bl	rt_UpdateTXYLogVars(PLT)
	ldr	r3, .L35+44
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
	bne	.L28
.L34:
	ldr	r3, .L35+44
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r0, [r3, #32]
	ldr	r3, .L35+44
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #8]
	bl	__aeabi_dsub(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r6, r2
	mov	r7, r3
	ldr	r3, .L35+44
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
	beq	.L30
.L31:
	mov	r3, #1
	mov	r5, r3
.L30:
	and	r3, r5, #255
	eor	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L28
	ldr	r3, .L35+44
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r2, .L35+40
	add	r2, r4, r2
	str	r2, [r3, #0]
.L28:
	ldr	r3, .L35+44
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r2, [r3, #16]
	add	r2, r2, #1
	str	r2, [r3, #16]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	bne	.L32
	ldr	r3, .L35+44
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r2, [r3, #20]
	add	r2, r2, #1
	str	r2, [r3, #20]
.L32:
	ldr	r3, .L35+44
	ldr	r3, [r4, r3]
	ldr	r5, [r3, #0]
	ldr	r3, .L35+44
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #16]
	mov	r0, r3
	bl	__aeabi_ui2d(PLT)
	ldr	r3, .L35+44
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #24]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r6, r2
	mov	r7, r3
	ldr	r3, .L35+44
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #20]
	mov	r0, r3
	bl	__aeabi_ui2d(PLT)
	ldr	r3, .L35+44
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
.LFE2:
	.fnend
	.size	parrot_gettingstarted_step, .-parrot_gettingstarted_step
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
	.ascii	"thrust_out\000"
	.text
	.align	2
	.global	parrot_gettingstarted_initialize
	.type	parrot_gettingstarted_initialize, %function
parrot_gettingstarted_initialize:
	.fnstart
.LFB3:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, fp, lr}
	.save {r4, fp, lr}
.LCFI9:
	.setfp fp, sp, #8
	add	fp, sp, #8
.LCFI10:
	.pad #60
	sub	sp, sp, #60
.LCFI11:
	ldr	r4, .L42+8
.LPIC1:
	add	r4, pc, r4
	mov	r0, #8
	bl	rt_InitInfAndNaN(PLT)
	ldr	r3, .L42+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	mov	r0, r3
	mov	r1, #0
	mov	r2, #48
	bl	memset(PLT)
	ldr	r3, .L42+12
	ldr	r3, [r4, r3]
	ldr	r1, [r3, #0]
	mov	r2, #0
	mov	r3, #1073741824
	add	r3, r3, #5832704
	strd	r2, [r1, #32]
	ldr	r3, .L42+12
	ldr	r3, [r4, r3]
	ldr	r1, [r3, #0]
	adr	r3, .L42
	ldrd	r2, [r3]
	strd	r2, [r1, #24]
	ldr	r3, .L42+16
	add	r3, r4, r3
	mov	r2, #0
	str	r2, [r3, #68]
	ldr	r3, .L42+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r2, .L42+16
	add	r2, r4, r2
	str	r2, [r3, #4]
	ldr	r3, .L42+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #4]
	mov	r2, #0
	str	r2, [r3, #48]
	ldr	r3, .L42+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #4]
	mov	r2, #0
	str	r2, [r3, #4]
	ldr	r3, .L42+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #4]
	ldr	r2, .L42+20
	add	r2, r4, r2
	str	r2, [r3, #28]
	ldr	r3, .L42+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #4]
	ldr	r2, .L42+24
	add	r2, r4, r2
	str	r2, [r3, #32]
	ldr	r3, .L42+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #4]
	ldr	r2, .L42+24
	add	r2, r4, r2
	str	r2, [r3, #36]
	ldr	r3, .L42+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #4]
	ldr	r2, .L42+28
	add	r2, r4, r2
	str	r2, [r3, #24]
	ldr	r3, .L42+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #4]
	mov	r2, #4
	str	r2, [r3, #12]
	ldr	r3, .L42+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #4]
	mov	r2, #0
	str	r2, [r3, #16]
	ldr	r3, .L42+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #4]
	mov	r2, #1
	str	r2, [r3, #20]
	ldr	r3, .L42+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #4]
	ldr	r2, .L42+24
	add	r2, r4, r2
	str	r2, [r3, #40]
	ldr	r3, .L42+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #4]
	mov	r2, #0
	str	r2, [r3, #52]
	ldr	r3, .L42+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #4]
	mov	r2, #0
	str	r2, [r3, #8]
	ldr	r3, .L42+76
	ldr	r3, [r4, r3]
	mov	r0, r3
	mov	r1, #0
	mov	r2, #200
	bl	memset(PLT)
	ldr	r3, .L42+32
	ldr	r3, [r4, r3]
	ldr	r2, .L42+36	@ float
	str	r2, [r3, #0]	@ float
	ldr	r3, .L42+32
	ldr	r3, [r4, r3]
	ldr	r2, .L42+36	@ float
	str	r2, [r3, #4]	@ float
	ldr	r3, .L42+32
	ldr	r3, [r4, r3]
	ldr	r2, .L42+36	@ float
	str	r2, [r3, #8]	@ float
	ldr	r3, .L42+32
	ldr	r3, [r4, r3]
	ldr	r2, .L42+36	@ float
	str	r2, [r3, #12]	@ float
	ldr	r3, .L42+40
	ldr	r3, [r4, r3]
	mov	r2, #0
	strb	r2, [r3, #0]
	ldr	r3, .L42+68
	ldr	r3, [r4, r3]
	mov	r0, r3
	mov	r1, #0
	mov	r2, #48
	bl	memset(PLT)
	ldr	r3, .L42+44
	ldr	r3, [r4, r3]
	mov	r0, r3
	mov	r1, #0
	mov	r2, #36
	bl	memset(PLT)
	ldr	r3, .L42+48
	ldr	r3, [r4, r3]
	mov	r0, r3
	mov	r1, #0
	mov	r2, #2496
	bl	memset(PLT)
	ldr	r3, .L42+52
	ldr	r3, [r4, r3]
	mov	r0, r3
	mov	r1, #0
	mov	r2, #20
	bl	memset(PLT)
	ldr	r3, .L42+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	ip, [r3, #4]
	ldr	r3, .L42+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r0, [r3, #32]
	ldr	r3, .L42+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #24]
	ldr	lr, .L42+12
	ldr	lr, [r4, lr]
	ldr	lr, [lr, #0]
	strd	r0, [sp]
	strd	r2, [sp, #8]
	str	lr, [sp, #16]
	mov	r0, ip
	mov	r2, #0
	mov	r3, #0
	bl	rt_StartDataLoggingWithStartTime(PLT)
	ldr	r3, .L42+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	ip, [r3, #4]
	ldr	r3, .L42+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r0, [r3, #32]
	ldr	r3, .L42+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #24]
	ldr	lr, .L42+12
	ldr	lr, [r4, lr]
	ldr	lr, [lr, #0]
	strd	r0, [sp]
	strd	r2, [sp, #8]
	str	lr, [sp, #16]
	ldr	r3, .L42+56
	add	r3, r4, r3
	str	r3, [sp, #20]
	mov	r3, #1
	str	r3, [sp, #24]
	mov	r3, #0
	str	r3, [sp, #28]
	mov	r3, #1
	str	r3, [sp, #32]
	adr	r3, .L42
	ldrd	r2, [r3]
	strd	r2, [sp, #40]
	ldr	r3, .L42+60
	add	r3, r4, r3
	str	r3, [sp, #48]
	ldr	r3, .L42+64
	add	r3, r4, r3
	str	r3, [sp, #52]
	mov	r0, ip
	mov	r2, #0
	mov	r3, #0
	bl	rt_CreateStructLogVar(PLT)
	mov	r2, r0
	ldr	r3, .L42+68
	ldr	r3, [r4, r3]
	str	r2, [r3, #24]
	ldr	r3, .L42+68
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L41
.L38:
	ldr	r3, .L42+68
	ldr	r3, [r4, r3]
	mov	r2, #0
	strb	r2, [r3, #39]
	ldr	r3, .L42+68
	ldr	r3, [r4, r3]
	mov	r2, #0
	strb	r2, [r3, #40]
	ldr	r3, .L42+68
	ldr	r3, [r4, r3]
	mov	r2, #0
	strb	r2, [r3, #37]
	ldr	r3, .L42+68
	ldr	r3, [r4, r3]
	mov	r2, #0
	strb	r2, [r3, #38]
	ldr	r3, .L42+68
	ldr	r3, [r4, r3]
	mov	r2, #0
	strb	r2, [r3, #36]
	ldr	r3, .L42+68
	ldr	r3, [r4, r3]
	mov	r2, #0
	strb	r2, [r3, #35]
	b	.L43
.L44:
	.align	3
.L42:
	.word	1202590843
	.word	1064598241
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+8)
	.word	parrot_gettingstarted_M(GOT)
	.word	rt_DataLoggingInfo.4426(GOTOFF)
	.word	.LC1(GOTOFF)
	.word	.LC2(GOTOFF)
	.word	.LC3(GOTOFF)
	.word	motors_outport(GOT)
	.word	0
	.word	flag_outport(GOT)
	.word	cmd_inport(GOT)
	.word	sensor_inport(GOT)
	.word	parrot_gettingstarted_Y(GOT)
	.word	.LC4(GOTOFF)
	.word	rt_ToWksSignalInfo.4438(GOTOFF)
	.word	rt_ToWksBlockName.4439(GOTOFF)
	.word	parrot_gettingstarted_DW(GOT)
	.word	parrot_gettingstarted_P(GOT)
	.word	parrot_gettingstarted_B(GOT)
.L43:
	ldr	r3, .L42+68
	ldr	r3, [r4, r3]
	add	r0, r3, #44
	bl	parrot__MeasurementUpdate_Start(PLT)
	ldr	r3, .L42+68
	ldr	r3, [r4, r3]
	add	r0, r3, #43
	bl	parrot_g_EnabledSubsystem_Start(PLT)
	ldr	r3, .L42+68
	ldr	r3, [r4, r3]
	add	r0, r3, #42
	bl	parrot__MeasurementUpdate_Start(PLT)
	ldr	r3, .L42+68
	ldr	r3, [r4, r3]
	add	r0, r3, #41
	bl	parrot_g_EnabledSubsystem_Start(PLT)
	ldr	r3, .L42+68
	ldr	r3, [r4, r3]
	mov	r2, #1
	strb	r2, [r3, #32]
	ldr	r3, .L42+68
	ldr	r3, [r4, r3]
	mov	r2, #1
	strb	r2, [r3, #33]
	ldr	r3, .L42+68
	ldr	r3, [r4, r3]
	mov	r2, #1
	strb	r2, [r3, #34]
	ldr	r3, .L42+72
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #168]
	ldr	r1, .L42+76
	ldr	r1, [r4, r1]
	strd	r2, [r1, #160]
	ldr	r3, .L42+72
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #160]
	ldr	r1, .L42+76
	ldr	r1, [r4, r1]
	strd	r2, [r1, #176]
	ldr	r3, .L42+72
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #168]
	ldr	r1, .L42+76
	ldr	r1, [r4, r1]
	strd	r2, [r1, #168]
	ldr	r3, .L42+72
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #160]
	ldr	r1, .L42+76
	ldr	r1, [r4, r1]
	strd	r2, [r1, #184]
	ldr	r3, .L42+72
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #184]
	ldr	r1, .L42+76
	ldr	r1, [r4, r1]
	strd	r2, [r1, #144]
	ldr	r3, .L42+72
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #176]
	ldr	r1, .L42+76
	ldr	r1, [r4, r1]
	strd	r2, [r1, #152]
	ldr	r3, .L42+72
	ldr	r3, [r4, r3]
	ldr	r2, [r3, #456]	@ float
	ldr	r3, .L42+76
	ldr	r3, [r4, r3]
	str	r2, [r3, #196]	@ float
	ldr	r3, .L42+72
	ldr	r3, [r4, r3]
	ldr	r2, [r3, #460]	@ float
	ldr	r3, .L42+76
	ldr	r3, [r4, r3]
	str	r2, [r3, #192]	@ float
	b	.L40
.L41:
	mov	r0, r0	@ nop
.L40:
	sub	sp, fp, #8
	ldmfd	sp!, {r4, fp, pc}
.LFE3:
	.fnend
	.size	parrot_gettingstarted_initialize, .-parrot_gettingstarted_initialize
	.align	2
	.global	parrot_gettingstarted_terminate
	.type	parrot_gettingstarted_terminate, %function
parrot_gettingstarted_terminate:
	.fnstart
.LFB4:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.save {fp}
.LCFI12:
	.setfp fp, sp, #0
	add	fp, sp, #0
.LCFI13:
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.LFE4:
	.fnend
	.size	parrot_gettingstarted_terminate, .-parrot_gettingstarted_terminate
	.local	rt_DataLoggingInfo.4426
	.comm	rt_DataLoggingInfo.4426,72,4
	.section	.data.rel.local,"aw",%progbits
	.align	2
	.type	rt_ToWksSignalInfo.4438, %object
	.size	rt_ToWksSignalInfo.4438, 76
rt_ToWksSignalInfo.4438:
	.word	1
	.word	rt_ToWksWidths.4427
	.word	rt_ToWksNumDimensions.4428
	.word	rt_ToWksDimensions.4429
	.word	rt_ToWksIsVarDims.4430
	.word	rt_ToWksCurrSigDims.4431
	.word	rt_ToWksCurrSigDimsSize.4432
	.word	rt_ToWksDataTypeIds.4433
	.word	rt_ToWksComplexSignals.4434
	.word	rt_ToWksFrameData.4435
	.word	rt_ToWksLoggingPreprocessingFcnPtrs.4436
	.word	rt_ToWksLabels.4437
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.rodata
	.align	2
	.type	rt_ToWksBlockName.4439, %object
	.size	rt_ToWksBlockName.4439, 74
rt_ToWksBlockName.4439:
	.ascii	"parrot_gettingstarted/Flight_Control_System/Thrust "
	.ascii	"Regulator/To Workspace\000"
	.align	2
.LC5:
	.ascii	"Thrust\000"
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksLabels.4437, %object
	.size	rt_ToWksLabels.4437, 4
rt_ToWksLabels.4437:
	.word	.LC5
	.local	rt_ToWksLoggingPreprocessingFcnPtrs.4436
	.comm	rt_ToWksLoggingPreprocessingFcnPtrs.4436,4,4
	.local	rt_ToWksFrameData.4435
	.comm	rt_ToWksFrameData.4435,4,4
	.local	rt_ToWksComplexSignals.4434
	.comm	rt_ToWksComplexSignals.4434,4,4
	.local	rt_ToWksDataTypeIds.4433
	.comm	rt_ToWksDataTypeIds.4433,4,4
	.data
	.align	2
	.type	rt_ToWksCurrSigDimsSize.4432, %object
	.size	rt_ToWksCurrSigDimsSize.4432, 4
rt_ToWksCurrSigDimsSize.4432:
	.word	4
	.local	rt_ToWksCurrSigDims.4431
	.comm	rt_ToWksCurrSigDims.4431,4,4
	.local	rt_ToWksIsVarDims.4430
	.comm	rt_ToWksIsVarDims.4430,1,4
	.align	2
	.type	rt_ToWksDimensions.4429, %object
	.size	rt_ToWksDimensions.4429, 4
rt_ToWksDimensions.4429:
	.word	1
	.align	2
	.type	rt_ToWksNumDimensions.4428, %object
	.size	rt_ToWksNumDimensions.4428, 4
rt_ToWksNumDimensions.4428:
	.word	1
	.align	2
	.type	rt_ToWksWidths.4427, %object
	.size	rt_ToWksWidths.4427, 4
rt_ToWksWidths.4427:
	.word	1
	.ident	"GCC: (Sourcery G++ Lite 2009q3-67) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
