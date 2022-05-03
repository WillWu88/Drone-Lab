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
	.comm	parrot_gettingstarted_B,272,8
	.comm	parrot_gettingstarted_DW,96,8
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
	.global	parrot_g_MeasurementUpdate_Init
	.type	parrot_g_MeasurementUpdate_Init, %function
parrot_g_MeasurementUpdate_Init:
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
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-12]
	ldrd	r2, [r3]
	ldr	r1, [fp, #-8]
	strd	r2, [r1]
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.LFE0:
	.fnend
	.size	parrot_g_MeasurementUpdate_Init, .-parrot_g_MeasurementUpdate_Init
	.align	2
	.global	parro_MeasurementUpdate_Disable
	.type	parro_MeasurementUpdate_Disable, %function
parro_MeasurementUpdate_Disable:
	.fnstart
.LFB1:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.save {fp}
.LCFI3:
	.setfp fp, sp, #0
	add	fp, sp, #0
.LCFI4:
	.pad #20
	sub	sp, sp, #20
.LCFI5:
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-16]
	ldrd	r2, [r3]
	ldr	r1, [fp, #-8]
	strd	r2, [r1]
	ldr	r3, [fp, #-12]
	mov	r2, #0
	strb	r2, [r3, #0]
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.LFE1:
	.fnend
	.size	parro_MeasurementUpdate_Disable, .-parro_MeasurementUpdate_Disable
	.align	2
	.global	parrot__MeasurementUpdate_Start
	.type	parrot__MeasurementUpdate_Start, %function
parrot__MeasurementUpdate_Start:
	.fnstart
.LFB2:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.save {fp}
.LCFI6:
	.setfp fp, sp, #0
	add	fp, sp, #0
.LCFI7:
	.pad #12
	sub	sp, sp, #12
.LCFI8:
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r2, #0
	strb	r2, [r3, #0]
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.LFE2:
	.fnend
	.size	parrot__MeasurementUpdate_Start, .-parrot__MeasurementUpdate_Start
	.global	__aeabi_dmul
	.global	__aeabi_dadd
	.global	__aeabi_dsub
	.align	2
	.global	parrot_gettin_MeasurementUpdate
	.type	parrot_gettin_MeasurementUpdate, %function
parrot_gettin_MeasurementUpdate:
	.fnstart
.LFB3:
	@ args = 52, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, fp, lr}
	.save {r4, r5, fp, lr}
.LCFI9:
	.setfp fp, sp, #12
	add	fp, sp, #12
.LCFI10:
	.pad #16
	sub	sp, sp, #16
.LCFI11:
	mov	r1, r0
	strd	r2, [fp, #-28]
	mov	r3, r1
	strb	r3, [fp, #-13]
	ldrb	r3, [fp, #-13]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L8
	ldr	r3, [fp, #48]
	mov	r2, #1
	strb	r2, [r3, #0]
	ldrd	r0, [fp, #12]
	ldrd	r2, [fp, #20]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r4, r2
	mov	r5, r3
	ldrd	r0, [fp, #28]
	ldrd	r2, [fp, #36]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	ldrd	r0, [fp, #4]
	bl	__aeabi_dsub(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	ldrd	r2, [fp, #-28]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, [fp, #44]
	strd	r2, [r1]
	b	.L10
.L8:
	ldr	r3, [fp, #48]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L10
	ldr	r0, [fp, #44]
	ldr	r1, [fp, #48]
	ldr	r2, [fp, #52]
	bl	parro_MeasurementUpdate_Disable(PLT)
.L10:
	sub	sp, fp, #12
	ldmfd	sp!, {r4, r5, fp, pc}
.LFE3:
	.fnend
	.size	parrot_gettin_MeasurementUpdate, .-parrot_gettin_MeasurementUpdate
	.align	2
	.global	parrot_ge_EnabledSubsystem_Init
	.type	parrot_ge_EnabledSubsystem_Init, %function
parrot_ge_EnabledSubsystem_Init:
	.fnstart
.LFB4:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.save {fp}
.LCFI12:
	.setfp fp, sp, #0
	add	fp, sp, #0
.LCFI13:
	.pad #12
	sub	sp, sp, #12
.LCFI14:
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-12]
	ldrd	r2, [r3]
	ldr	r1, [fp, #-8]
	strd	r2, [r1]
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.LFE4:
	.fnend
	.size	parrot_ge_EnabledSubsystem_Init, .-parrot_ge_EnabledSubsystem_Init
	.align	2
	.global	parrot_EnabledSubsystem_Disable
	.type	parrot_EnabledSubsystem_Disable, %function
parrot_EnabledSubsystem_Disable:
	.fnstart
.LFB5:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.save {fp}
.LCFI15:
	.setfp fp, sp, #0
	add	fp, sp, #0
.LCFI16:
	.pad #20
	sub	sp, sp, #20
.LCFI17:
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-16]
	ldrd	r2, [r3]
	ldr	r1, [fp, #-8]
	strd	r2, [r1]
	ldr	r3, [fp, #-12]
	mov	r2, #0
	strb	r2, [r3, #0]
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.LFE5:
	.fnend
	.size	parrot_EnabledSubsystem_Disable, .-parrot_EnabledSubsystem_Disable
	.align	2
	.global	parrot_g_EnabledSubsystem_Start
	.type	parrot_g_EnabledSubsystem_Start, %function
parrot_g_EnabledSubsystem_Start:
	.fnstart
.LFB6:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.save {fp}
.LCFI18:
	.setfp fp, sp, #0
	add	fp, sp, #0
.LCFI19:
	.pad #12
	sub	sp, sp, #12
.LCFI20:
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r2, #0
	strb	r2, [r3, #0]
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.LFE6:
	.fnend
	.size	parrot_g_EnabledSubsystem_Start, .-parrot_g_EnabledSubsystem_Start
	.align	2
	.global	parrot_getting_EnabledSubsystem
	.type	parrot_getting_EnabledSubsystem, %function
parrot_getting_EnabledSubsystem:
	.fnstart
.LFB7:
	@ args = 36, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
.LCFI21:
	.setfp fp, sp, #4
	add	fp, sp, #4
.LCFI22:
	.pad #16
	sub	sp, sp, #16
.LCFI23:
	mov	r1, r0
	strd	r2, [fp, #-20]
	mov	r3, r1
	strb	r3, [fp, #-5]
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L18
	ldr	r3, [fp, #32]
	mov	r2, #1
	strb	r2, [r3, #0]
	ldrd	r0, [fp, #4]
	ldrd	r2, [fp, #20]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	ldrd	r0, [fp, #12]
	bl	__aeabi_dsub(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	ldrd	r2, [fp, #-20]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, [fp, #28]
	strd	r2, [r1]
	b	.L20
.L18:
	ldr	r3, [fp, #32]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L20
	ldr	r0, [fp, #28]
	ldr	r1, [fp, #32]
	ldr	r2, [fp, #36]
	bl	parrot_EnabledSubsystem_Disable(PLT)
.L20:
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.LFE7:
	.fnend
	.size	parrot_getting_EnabledSubsystem, .-parrot_getting_EnabledSubsystem
	.global	__aeabi_fdiv
	.global	__aeabi_f2d
	.global	__aeabi_d2f
	.global	__aeabi_fmul
	.align	2
	.global	parrot_gettingst_MATLABFunction
	.type	parrot_gettingst_MATLABFunction, %function
parrot_gettingst_MATLABFunction:
	.fnstart
.LFB8:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
.LCFI24:
	.setfp fp, sp, #4
	add	fp, sp, #4
.LCFI25:
	.pad #8
	sub	sp, sp, #8
.LCFI26:
	str	r0, [fp, #-8]	@ float
	str	r1, [fp, #-12]
	ldr	r0, [fp, #-8]	@ float
	ldr	r1, .L23	@ float
	bl	__aeabi_fdiv(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	log(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f(PLT)
	mov	r3, r0
	mov	r0, r3
	ldr	r1, .L23+4	@ float
	bl	__aeabi_fmul(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-12]
	str	r2, [r3, #0]	@ float
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L24:
	.align	2
.L23:
	.word	1204151936
	.word	-972824331
.LFE8:
	.fnend
	.size	parrot_gettingst_MATLABFunction, .-parrot_gettingst_MATLABFunction
	.global	__aeabi_ddiv
	.global	__aeabi_fadd
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
.LFB9:
	@ args = 0, pretend = 0, frame = 208
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, fp, lr}
	.save {r4, r5, r6, r7, r8, r9, fp, lr}
.LCFI27:
	.setfp fp, sp, #28
	add	fp, sp, #28
.LCFI28:
	.pad #264
	sub	sp, sp, #264
.LCFI29:
	ldr	r4, .L54
.LPIC0:
	add	r4, pc, r4
	mov	r3, #0
	str	r3, [fp, #-40]
	b	.L26
.L27:
	ldr	r5, [fp, #-40]
	ldr	r3, [fp, #-40]
	add	r2, r3, #4
	ldr	r3, .L54+40
	ldr	r3, [r4, r3]
	add	r2, r2, #10
	mov	r2, r2, asl #3
	add	r3, r2, r3
	ldrd	r0, [r3]
	ldr	r3, .L54+40
	ldr	r2, [r4, r3]
	mov	r3, #280
	add	r3, r3, r2
	ldrd	r2, [r3]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r6, r2
	mov	r7, r3
	ldr	r2, [fp, #-40]
	ldr	r3, .L54+40
	ldr	r3, [r4, r3]
	add	r2, r2, #10
	mov	r2, r2, asl #3
	add	r3, r2, r3
	ldrd	r0, [r3]
	ldr	r3, .L54+40
	ldr	r2, [r4, r3]
	mov	r3, #272
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
	mov	r6, r2
	mov	r7, r3
	ldr	r3, [fp, #-40]
	add	r2, r3, #8
	ldr	r3, .L54+40
	ldr	r3, [r4, r3]
	add	r2, r2, #10
	mov	r2, r2, asl #3
	add	r3, r2, r3
	ldrd	r0, [r3]
	ldr	r3, .L54+40
	ldr	r2, [r4, r3]
	mov	r3, #280
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
	mov	r6, r2
	mov	r7, r3
	ldr	r3, [fp, #-40]
	add	r2, r3, #12
	ldr	r3, .L54+40
	ldr	r3, [r4, r3]
	add	r2, r2, #10
	mov	r2, r2, asl #3
	add	r3, r2, r3
	ldrd	r0, [r3]
	ldr	r3, .L54+40
	ldr	r2, [r4, r3]
	mov	r3, #280
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
	ldr	r1, .L54+24
	ldr	r1, [r4, r1]
	add	r0, r5, #14
	mov	r0, r0, asl #3
	add	r1, r0, r1
	strd	r2, [r1]
	ldr	r3, [fp, #-40]
	add	r3, r3, #1
	str	r3, [fp, #-40]
.L26:
	ldr	r3, [fp, #-40]
	cmp	r3, #3
	ble	.L27
	ldr	r3, .L54+40
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #240]
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	ldr	r3, .L54+24
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #112]
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f(PLT)
	mov	r2, r0
	ldr	r3, .L54+4
	ldr	r3, [r4, r3]
	str	r2, [r3, #0]	@ float
	ldr	r3, .L54+40
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #248]
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	ldr	r3, .L54+24
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #120]
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f(PLT)
	mov	r2, r0
	ldr	r3, .L54+4
	ldr	r3, [r4, r3]
	str	r2, [r3, #4]	@ float
	ldr	r3, .L54+40
	ldr	r2, [r4, r3]
	mov	r3, #256
	add	r3, r3, r2
	ldrd	r2, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	ldr	r3, .L54+24
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #128]
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f(PLT)
	mov	r2, r0
	ldr	r3, .L54+4
	ldr	r3, [r4, r3]
	str	r2, [r3, #8]	@ float
	ldr	r3, .L54+40
	ldr	r2, [r4, r3]
	mov	r3, #264
	add	r3, r3, r2
	ldrd	r2, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	ldr	r3, .L54+24
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #136]
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f(PLT)
	mov	r2, r0
	ldr	r3, .L54+4
	ldr	r3, [r4, r3]
	str	r2, [r3, #12]	@ float
	ldr	r3, .L54+4
	ldr	r3, [r4, r3]
	ldr	r2, [r3, #0]	@ float
	ldr	r3, .L54+8
	ldr	r3, [r4, r3]
	str	r2, [r3, #0]	@ float
	ldr	r3, .L54+4
	ldr	r3, [r4, r3]
	ldr	r2, [r3, #4]	@ float
	ldr	r3, .L54+8
	ldr	r3, [r4, r3]
	str	r2, [r3, #4]	@ float
	ldr	r3, .L54+4
	ldr	r3, [r4, r3]
	ldr	r2, [r3, #8]	@ float
	ldr	r3, .L54+8
	ldr	r3, [r4, r3]
	str	r2, [r3, #8]	@ float
	ldr	r3, .L54+4
	ldr	r3, [r4, r3]
	ldr	r2, [r3, #12]	@ float
	ldr	r3, .L54+8
	ldr	r3, [r4, r3]
	str	r2, [r3, #12]	@ float
	ldr	r3, .L54+40
	ldr	r3, [r4, r3]
	ldrb	r3, [r3, #760]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L28
	ldr	r3, .L54+40
	ldr	r3, [r4, r3]
	ldrb	r2, [r3, #758]	@ zero_extendqisi2
	ldr	r3, .L54+12
	ldr	r3, [r4, r3]
	strb	r2, [r3, #0]
	b	.L29
.L28:
	ldr	r3, .L54+40
	ldr	r3, [r4, r3]
	ldrb	r2, [r3, #759]	@ zero_extendqisi2
	ldr	r3, .L54+12
	ldr	r3, [r4, r3]
	strb	r2, [r3, #0]
.L29:
	ldr	r3, .L54+12
	ldr	r3, [r4, r3]
	ldrb	r2, [r3, #0]	@ zero_extendqisi2
	ldr	r3, .L54+8
	ldr	r3, [r4, r3]
	strb	r2, [r3, #16]
	ldr	r3, .L54+28
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #8]
	strd	r2, [fp, #-100]
	ldr	r3, .L54+32
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #40]
	mov	r2, r3
	sub	r3, fp, #100
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L54+24
	ldr	r3, [r4, r3]
	add	r2, r3, #112
	bl	rt_UpdateStructLogVar(PLT)
	ldr	r3, .L54+32
	ldr	r3, [r4, r3]
	ldrb	r3, [r3, #80]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L30
	ldr	r3, .L54+40
	ldr	r2, [r4, r3]
	mov	r3, #304
	add	r3, r3, r2
	ldrd	r2, [r3]
	ldr	r1, .L54+32
	ldr	r1, [r4, r1]
	strd	r2, [r1]
	ldr	r3, .L54+40
	ldr	r2, [r4, r3]
	mov	r3, #312
	add	r3, r3, r2
	ldrd	r2, [r3]
	ldr	r1, .L54+32
	ldr	r1, [r4, r1]
	strd	r2, [r1, #8]
.L30:
	ldr	r3, .L54+40
	ldr	r3, [r4, r3]
	ldrb	r3, [r3, #748]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L31
	ldr	r3, .L54+32
	ldr	r3, [r4, r3]
	mov	r2, #1
	strb	r2, [r3, #87]
	ldr	r3, .L54+36
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #416]	@ float
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	mov	r6, r0
	mov	r7, r1
	ldr	r3, .L54+40
	ldr	r2, [r4, r3]
	mov	r3, #288
	ldrd	r0, [r2, r3]
	ldr	r3, .L54+32
	ldr	r3, [r4, r3]
	ldrd	r2, [r3]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r8, r2
	mov	r9, r3
	ldr	r3, .L54+40
	ldr	r2, [r4, r3]
	mov	r3, #296
	ldrd	r0, [r2, r3]
	ldr	r3, .L54+32
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
	strd	r2, [fp, #-68]
	ldr	r3, .L54+40
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #680]	@ float
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	ldrd	r2, [fp, #-68]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, .L54+24
	ldr	r1, [r4, r1]
	strd	r2, [r1, #144]
	ldr	r3, .L54+40
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #684]	@ float
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	ldrd	r2, [fp, #-68]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, .L54+24
	ldr	r1, [r4, r1]
	strd	r2, [r1, #152]
	b	.L32
.L31:
	ldr	r3, .L54+32
	ldr	r3, [r4, r3]
	ldrb	r3, [r3, #87]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L32
	ldr	r3, .L54+40
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #232]
	ldr	r1, .L54+24
	ldr	r1, [r4, r1]
	strd	r2, [r1, #144]
	ldr	r3, .L54+40
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #232]
	ldr	r1, .L54+24
	ldr	r1, [r4, r1]
	strd	r2, [r1, #152]
	ldr	r3, .L54+32
	ldr	r3, [r4, r3]
	mov	r2, #0
	strb	r2, [r3, #87]
.L32:
	ldr	r3, .L54+24
	ldr	r3, [r4, r3]
	ldrd	r0, [r3, #144]
	ldr	r3, .L54+32
	ldr	r3, [r4, r3]
	ldrd	r2, [r3]
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f(PLT)
	mov	r2, r0
	ldr	r3, .L54+24
	ldr	r3, [r4, r3]
	str	r2, [r3, #192]	@ float
	ldr	r3, .L54+24
	ldr	r3, [r4, r3]
	ldrd	r0, [r3, #152]
	ldr	r3, .L54+32
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #8]
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f(PLT)
	mov	r2, r0
	ldr	r3, .L54+24
	ldr	r3, [r4, r3]
	str	r2, [r3, #196]	@ float
	ldr	r3, .L54+36
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #60]	@ float
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	mov	r2, r0
	mov	r3, r1
	strd	r2, [fp, #-68]
	ldr	r3, .L54+36
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #56]	@ float
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	ldrd	r2, [fp, #-68]
	bl	__aeabi_ddiv(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	atan(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, .L54+24
	ldr	r1, [r4, r1]
	strd	r2, [r1, #176]
	ldr	r3, .L54+32
	ldr	r3, [r4, r3]
	ldrb	r3, [r3, #81]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L33
	ldr	r3, .L54+40
	ldr	r2, [r4, r3]
	mov	r3, #336
	add	r3, r3, r2
	ldrd	r2, [r3]
	ldr	r1, .L54+32
	ldr	r1, [r4, r1]
	strd	r2, [r1, #16]
.L33:
	ldr	r3, .L54+40
	ldr	r3, [r4, r3]
	ldrb	ip, [r3, #749]	@ zero_extendqisi2
	ldr	r3, .L54+40
	ldr	r2, [r4, r3]
	mov	r3, #320
	ldrd	r6, [r2, r3]
	ldr	r3, .L54+40
	ldr	r2, [r4, r3]
	mov	r3, #328
	ldrd	r8, [r2, r3]
	ldr	r3, .L54+24
	ldr	r3, [r4, r3]
	ldrd	r0, [r3, #176]
	ldr	r3, .L54+32
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #16]
	strd	r8, [sp]
	strd	r0, [sp, #8]
	strd	r2, [sp, #16]
	ldr	r3, .L54+24
	ldr	r3, [r4, r3]
	add	r3, r3, #256
	str	r3, [sp, #24]
	ldr	r3, .L54+32
	ldr	r3, [r4, r3]
	add	r3, r3, #93
	str	r3, [sp, #28]
	ldr	r3, .L54+40
	ldr	r3, [r4, r3]
	add	r3, r3, #800
	str	r3, [sp, #32]
	mov	r0, ip
	mov	r2, r6
	mov	r3, r7
	bl	parrot_getting_EnabledSubsystem(PLT)
	ldr	r3, .L54+24
	ldr	r2, [r4, r3]
	mov	r3, #256
	ldrd	r0, [r2, r3]
	ldr	r3, .L54+32
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #16]
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	strd	r2, [fp, #-68]
	ldrd	r2, [fp, #-68]
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f(PLT)
	mov	r3, r0
	str	r3, [fp, #-76]	@ float
	ldr	r3, .L54+36
	ldr	r3, [r4, r3]
	ldr	r2, [r3, #56]	@ float
	ldr	r3, .L54+36
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #56]	@ float
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_fmul(PLT)
	mov	r3, r0
	str	r3, [fp, #-84]	@ float
	ldr	r3, .L54+36
	ldr	r3, [r4, r3]
	ldr	r2, [r3, #60]	@ float
	ldr	r3, .L54+36
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #60]	@ float
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_fmul(PLT)
	mov	r3, r0
	str	r3, [fp, #-80]	@ float
	ldr	r3, .L54+40
	ldr	r3, [r4, r3]
	ldr	r2, [r3, #692]	@ float
	ldr	r3, .L54+36
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #52]	@ float
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_fmul(PLT)
	mov	r3, r0
	mov	r5, r3
	ldr	r2, [fp, #-84]	@ float
	ldr	r3, [fp, #-80]	@ float
	mov	r0, r2
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
	ldr	r3, .L54+32
	ldr	r3, [r4, r3]
	ldrb	r3, [r3, #82]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L34
	ldr	r3, .L54+40
	ldr	r3, [r4, r3]
	ldr	r2, [r3, #696]	@ float
	ldr	r3, .L54+32
	ldr	r3, [r4, r3]
	str	r2, [r3, #76]	@ float
.L34:
	ldr	r3, .L54+40
	ldr	r3, [r4, r3]
	ldrb	r3, [r3, #750]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L35
	ldr	r3, .L54+32
	ldr	r3, [r4, r3]
	mov	r2, #1
	strb	r2, [r3, #85]
	ldr	r3, .L54+40
	ldr	r3, [r4, r3]
	ldr	r2, [r3, #688]	@ float
	ldr	r3, .L54+32
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #76]	@ float
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_fmul(PLT)
	mov	r3, r0
	str	r3, [fp, #-80]	@ float
	ldr	r3, [fp, #-80]	@ float
	ldr	r0, [fp, #-32]	@ float
	mov	r1, r3
	bl	__aeabi_fsub(PLT)
	mov	r3, r0
	mov	r5, r3
	ldr	r3, .L54+40
	ldr	r2, [r4, r3]
	mov	r3, #344
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
	ldr	r3, .L54+24
	ldr	r3, [r4, r3]
	str	r2, [r3, #200]	@ float
	b	.L36
.L35:
	ldr	r3, .L54+32
	ldr	r3, [r4, r3]
	ldrb	r3, [r3, #85]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L36
	ldr	r3, .L54+40
	ldr	r3, [r4, r3]
	ldr	r2, [r3, #676]	@ float
	ldr	r3, .L54+24
	ldr	r3, [r4, r3]
	str	r2, [r3, #200]	@ float
	ldr	r3, .L54+32
	ldr	r3, [r4, r3]
	mov	r2, #0
	strb	r2, [r3, #85]
.L36:
	ldr	r3, .L54+24
	ldr	r3, [r4, r3]
	ldr	r2, [r3, #200]	@ float
	ldr	r3, .L54+32
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #76]	@ float
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_fadd(PLT)
	mov	r3, r0
	str	r3, [fp, #-72]	@ float
	ldr	r3, [fp, #-76]	@ float
	mov	r0, r3
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
	str	r3, [fp, #-84]	@ float
	ldr	r3, [fp, #-76]	@ float
	mov	r0, r3
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
	str	r3, [fp, #-80]	@ float
	ldr	r3, .L54+24
	ldr	r3, [r4, r3]
	ldr	r2, .L54+16	@ float
	str	r2, [r3, #40]	@ float
	ldr	r2, [fp, #-80]	@ float
	ldr	r3, .L54+24
	ldr	r3, [r4, r3]
	str	r2, [r3, #52]	@ float
	ldr	r2, [fp, #-84]	@ float
	ldr	r3, .L54+24
	ldr	r3, [r4, r3]
	str	r2, [r3, #64]	@ float
	ldr	r3, .L54+24
	ldr	r3, [r4, r3]
	ldr	r2, .L54+16	@ float
	str	r2, [r3, #44]	@ float
	ldr	r3, [fp, #-84]	@ float
	eor	r2, r3, #-2147483648
	ldr	r3, .L54+24
	ldr	r3, [r4, r3]
	str	r2, [r3, #56]	@ float
	ldr	r2, [fp, #-80]	@ float
	ldr	r3, .L54+24
	ldr	r3, [r4, r3]
	str	r2, [r3, #68]	@ float
	ldr	r3, [fp, #-72]	@ float
	mov	r0, r3
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
	str	r3, [fp, #-84]	@ float
	ldr	r3, [fp, #-72]	@ float
	mov	r0, r3
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
	str	r3, [fp, #-80]	@ float
	ldr	r2, [fp, #-80]	@ float
	ldr	r3, .L54+24
	ldr	r3, [r4, r3]
	str	r2, [r3, #72]	@ float
	ldr	r3, .L54+24
	ldr	r3, [r4, r3]
	ldr	r2, .L54+16	@ float
	str	r2, [r3, #84]	@ float
	ldr	r3, [fp, #-84]	@ float
	eor	r2, r3, #-2147483648
	ldr	r3, .L54+24
	ldr	r3, [r4, r3]
	str	r2, [r3, #96]	@ float
	ldr	r3, .L54+24
	ldr	r3, [r4, r3]
	ldr	r2, .L54+20	@ float
	str	r2, [r3, #36]	@ float
	ldr	r3, .L54+24
	ldr	r3, [r4, r3]
	ldr	r2, .L54+16	@ float
	str	r2, [r3, #76]	@ float
	ldr	r3, .L54+24
	ldr	r3, [r4, r3]
	ldr	r2, .L54+16	@ float
	str	r2, [r3, #48]	@ float
	ldr	r3, .L54+24
	ldr	r3, [r4, r3]
	ldr	r2, .L54+20	@ float
	str	r2, [r3, #88]	@ float
	ldr	r3, .L54+24
	ldr	r3, [r4, r3]
	ldr	r2, .L54+16	@ float
	str	r2, [r3, #60]	@ float
	ldr	r3, .L54+24
	ldr	r3, [r4, r3]
	ldr	r2, .L54+16	@ float
	str	r2, [r3, #100]	@ float
	ldr	r2, [fp, #-84]	@ float
	ldr	r3, .L54+24
	ldr	r3, [r4, r3]
	str	r2, [r3, #80]	@ float
	ldr	r3, .L54+24
	ldr	r3, [r4, r3]
	ldr	r2, .L54+16	@ float
	str	r2, [r3, #92]	@ float
	ldr	r2, [fp, #-80]	@ float
	ldr	r3, .L54+24
	ldr	r3, [r4, r3]
	str	r2, [r3, #104]	@ float
	mov	r3, #0
	str	r3, [fp, #-40]
	b	.L37
.L40:
	ldr	r2, [fp, #-40]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	str	r3, [fp, #-48]
	mov	r3, #0
	str	r3, [fp, #-44]
	b	.L38
.L55:
	.align	2
.L54:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+8)
	.word	motors_outport(GOT)
	.word	parrot_gettingstarted_Y(GOT)
	.word	flag_outport(GOT)
	.word	0
	.word	1065353216
	.word	parrot_gettingstarted_B(GOT)
	.word	parrot_gettingstarted_M(GOT)
	.word	parrot_gettingstarted_DW(GOT)
	.word	sensor_inport(GOT)
	.word	parrot_gettingstarted_P(GOT)
.L39:
	ldr	r2, [fp, #-44]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-52]
	ldr	r2, .L54+24
	ldr	r2, [r4, r2]
	add	r1, r3, #8
	mov	r3, #4
	mov	r1, r1, asl #2
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [r3, #0]	@ float
	ldr	r1, [fp, #-40]
	ldr	r3, .L54+24
	ldr	r3, [r4, r3]
	add	r1, r1, #18
	ldr	r3, [r3, r1, asl #2]	@ float
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_fmul(PLT)
	mov	r3, r0
	str	r3, [fp, #-84]	@ float
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r5, r2, r3
	ldr	r3, [fp, #-52]
	add	r3, r3, #1
	ldr	r2, .L54+24
	ldr	r2, [r4, r2]
	add	r1, r3, #8
	mov	r3, #4
	mov	r1, r1, asl #2
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [r3, #0]	@ float
	ldr	r3, [fp, #-40]
	add	r1, r3, #3
	ldr	r3, .L54+24
	ldr	r3, [r4, r3]
	add	r1, r1, #18
	ldr	r3, [r3, r1, asl #2]	@ float
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_fmul(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-84]	@ float
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_fadd(PLT)
	mov	r3, r0
	mov	r6, r3
	ldr	r3, [fp, #-52]
	add	r3, r3, #2
	ldr	r2, .L54+24
	ldr	r2, [r4, r2]
	add	r1, r3, #8
	mov	r3, #4
	mov	r1, r1, asl #2
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [r3, #0]	@ float
	ldr	r3, [fp, #-40]
	add	r1, r3, #6
	ldr	r3, .L54+24
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
	ldr	r3, .L54+24
	ldr	r3, [r4, r3]
	str	r2, [r3, r5, asl #2]	@ float
	ldr	r3, [fp, #-44]
	add	r3, r3, #1
	str	r3, [fp, #-44]
.L38:
	ldr	r3, [fp, #-44]
	cmp	r3, #2
	ble	.L39
	ldr	r3, [fp, #-40]
	add	r3, r3, #1
	str	r3, [fp, #-40]
.L37:
	ldr	r3, [fp, #-40]
	cmp	r3, #2
	ble	.L40
	ldr	r3, .L54+24
	ldr	r3, [r4, r3]
	ldr	r2, [r3, #192]	@ float
	ldr	r3, .L54+24
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #8]	@ float
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_fmul(PLT)
	mov	r3, r0
	str	r3, [fp, #-88]	@ float
	ldr	r3, .L54+28
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #8]
	strd	r2, [fp, #-108]
	ldr	r3, .L54+32
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #44]
	mov	r1, r3
	sub	r2, fp, #108
	sub	r3, fp, #88
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	rt_UpdateStructLogVar(PLT)
	ldr	r3, .L54+28
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #8]
	strd	r2, [fp, #-116]
	ldr	r3, .L54+32
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #48]
	mov	r1, r3
	ldr	r3, .L54+24
	ldr	r3, [r4, r3]
	add	r3, r3, #196
	sub	r2, fp, #116
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	rt_UpdateStructLogVar(PLT)
	ldr	r3, .L54+36
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #60]	@ float
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	mov	r2, r0
	mov	r3, r1
	strd	r2, [fp, #-68]
	ldrd	r0, [fp, #-68]
	ldr	r3, .L54+40
	ldr	r2, [r4, r3]
	mov	r3, #352
	add	r3, r3, r2
	ldrd	r2, [r3]
	bl	__aeabi_dsub(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, .L54+24
	ldr	r1, [r4, r1]
	strd	r2, [r1, #184]
	ldr	r3, .L54+40
	ldr	r3, [r4, r3]
	ldrb	r3, [r3, #748]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L41
	ldr	r3, .L54+32
	ldr	r3, [r4, r3]
	mov	r2, #1
	strb	r2, [r3, #88]
	ldr	r3, .L54+36
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #416]	@ float
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	mov	r6, r0
	mov	r7, r1
	ldr	r3, .L54+40
	ldr	r2, [r4, r3]
	mov	r3, #288
	ldrd	r0, [r2, r3]
	ldr	r3, .L54+32
	ldr	r3, [r4, r3]
	ldrd	r2, [r3]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r8, r2
	mov	r9, r3
	ldr	r3, .L54+40
	ldr	r2, [r4, r3]
	mov	r3, #296
	ldrd	r0, [r2, r3]
	ldr	r3, .L54+32
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
	ldr	r3, .L54+40
	ldr	r2, [r4, r3]
	mov	r3, #424
	ldrd	r0, [r2, r3]
	ldr	r3, .L54+24
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #184]
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
	strd	r2, [fp, #-68]
	ldr	r3, .L54+40
	ldr	r2, [r4, r3]
	mov	r3, #408
	ldrd	r0, [r2, r3]
	ldrd	r2, [fp, #-68]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, .L54+24
	ldr	r1, [r4, r1]
	strd	r2, [r1, #160]
	ldr	r3, .L54+40
	ldr	r2, [r4, r3]
	mov	r3, #416
	ldrd	r0, [r2, r3]
	ldrd	r2, [fp, #-68]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, .L54+24
	ldr	r1, [r4, r1]
	strd	r2, [r1, #168]
	b	.L42
.L41:
	ldr	r3, .L54+32
	ldr	r3, [r4, r3]
	ldrb	r3, [r3, #88]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L42
	ldr	r3, .L54+40
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #224]
	ldr	r1, .L54+24
	ldr	r1, [r4, r1]
	strd	r2, [r1, #160]
	ldr	r3, .L54+40
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #224]
	ldr	r1, .L54+24
	ldr	r1, [r4, r1]
	strd	r2, [r1, #168]
	ldr	r3, .L54+32
	ldr	r3, [r4, r3]
	mov	r2, #0
	strb	r2, [r3, #88]
.L42:
	ldr	r3, .L54+28
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #8]
	strd	r2, [fp, #-124]
	ldr	r3, .L54+32
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #52]
	mov	r1, r3
	sub	r2, fp, #124
	sub	r3, fp, #76
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	rt_UpdateStructLogVar(PLT)
	ldr	r3, .L54+40
	ldr	r2, [r4, r3]
	mov	r3, #432
	ldrd	r0, [r2, r3]
	ldr	r3, .L54+32
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #16]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	strd	r2, [fp, #-68]
	ldr	r3, .L54+40
	ldr	r3, [r4, r3]
	ldrb	r5, [r3, #749]	@ zero_extendqisi2
	ldr	r3, .L54+40
	ldr	r2, [r4, r3]
	mov	r3, #456
	ldrd	r6, [r2, r3]
	ldr	r3, .L54+24
	ldr	r3, [r4, r3]
	ldrd	r0, [r3, #176]
	strd	r0, [fp, #-220]
	ldr	r3, .L54+40
	ldr	r2, [r4, r3]
	mov	r3, #328
	ldrd	r0, [r2, r3]
	strd	r0, [fp, #-212]
	ldr	r3, .L54+32
	ldr	r3, [r4, r3]
	ldrd	r0, [r3, #16]
	strd	r0, [fp, #-204]
	ldr	r3, .L54+40
	ldr	r2, [r4, r3]
	mov	r3, #464
	ldrd	r8, [r2, r3]
	ldr	r3, .L54+36
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #68]	@ float
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	mov	r2, r0
	mov	r3, r1
	ldrd	r0, [fp, #-220]
	strd	r0, [sp]
	ldrd	r0, [fp, #-212]
	strd	r0, [sp, #8]
	ldrd	r0, [fp, #-204]
	strd	r0, [sp, #16]
	strd	r8, [sp, #24]
	strd	r2, [sp, #32]
	ldr	r3, .L54+24
	ldr	r3, [r4, r3]
	add	r3, r3, #264
	str	r3, [sp, #40]
	ldr	r3, .L54+32
	ldr	r3, [r4, r3]
	add	r3, r3, #94
	str	r3, [sp, #44]
	ldr	r3, .L54+40
	ldr	r3, [r4, r3]
	add	r3, r3, #808
	str	r3, [sp, #48]
	mov	r0, r5
	mov	r2, r6
	mov	r3, r7
	bl	parrot_gettin_MeasurementUpdate(PLT)
	ldr	r3, .L54+40
	ldr	r2, [r4, r3]
	mov	r3, #440
	ldrd	r6, [r2, r3]
	ldr	r3, .L54+36
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
	mov	r0, r2
	mov	r1, r3
	ldrd	r2, [fp, #-68]
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L54+24
	ldr	r2, [r4, r3]
	mov	r3, #264
	add	r3, r3, r2
	ldrd	r2, [r3]
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, .L54+32
	ldr	r1, [r4, r1]
	strd	r2, [r1, #16]
	ldr	r3, .L54+28
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #8]
	strd	r2, [fp, #-132]
	ldr	r3, .L54+32
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #56]
	mov	r1, r3
	sub	r2, fp, #132
	sub	r3, fp, #72
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	rt_UpdateStructLogVar(PLT)
	ldr	r3, .L54+40
	ldr	r3, [r4, r3]
	ldr	r2, [r3, #716]	@ float
	ldr	r3, .L54+36
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #72]	@ float
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_fmul(PLT)
	mov	r3, r0
	str	r3, [fp, #-36]	@ float
	ldr	r3, .L54+40
	ldr	r3, [r4, r3]
	ldr	r2, [r3, #720]	@ float
	ldr	r3, .L54+32
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #76]	@ float
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_fmul(PLT)
	mov	r3, r0
	str	r3, [fp, #-80]	@ float
	ldr	r3, .L54+40
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #724]	@ float
	mov	r0, r3
	ldr	r1, [fp, #-36]	@ float
	bl	__aeabi_fmul(PLT)
	mov	r3, r0
	str	r3, [fp, #-84]	@ float
	ldr	r3, .L54+40
	ldr	r3, [r4, r3]
	ldrb	r3, [r3, #750]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L43
	ldr	r3, .L54+32
	ldr	r3, [r4, r3]
	mov	r2, #1
	strb	r2, [r3, #86]
	ldr	r3, .L54+40
	ldr	r3, [r4, r3]
	ldr	r2, [r3, #688]	@ float
	ldr	r3, .L54+32
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #76]	@ float
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_fmul(PLT)
	mov	r3, r0
	mov	r5, r3
	ldr	r3, .L54+40
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #728]	@ float
	mov	r0, r3
	ldr	r1, [fp, #-36]	@ float
	bl	__aeabi_fmul(PLT)
	mov	r3, r0
	mov	r0, r5
	mov	r1, r3
	bl	__aeabi_fadd(PLT)
	mov	r3, r0
	ldr	r0, [fp, #-32]	@ float
	mov	r1, r3
	bl	__aeabi_fsub(PLT)
	mov	r3, r0
	mov	r5, r3
	ldr	r3, .L54+40
	ldr	r2, [r4, r3]
	mov	r3, #480
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
	ldr	r3, .L54+24
	ldr	r3, [r4, r3]
	str	r2, [r3, #204]	@ float
	b	.L44
.L43:
	ldr	r3, .L54+32
	ldr	r3, [r4, r3]
	ldrb	r3, [r3, #86]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L44
	ldr	r3, .L54+40
	ldr	r3, [r4, r3]
	ldr	r2, [r3, #672]	@ float
	ldr	r3, .L54+24
	ldr	r3, [r4, r3]
	str	r2, [r3, #204]	@ float
	ldr	r3, .L54+32
	ldr	r3, [r4, r3]
	mov	r2, #0
	strb	r2, [r3, #86]
.L44:
	ldr	r2, [fp, #-84]	@ float
	ldr	r3, [fp, #-80]	@ float
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_fadd(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, .L54+24
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #204]	@ float
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_fadd(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, .L54+32
	ldr	r3, [r4, r3]
	str	r2, [r3, #76]	@ float
	ldr	r3, .L54+36
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #392]	@ float
	mov	r0, r3
	ldr	r3, .L54+24
	ldr	r3, [r4, r3]
	add	r1, r3, #248
	bl	parrot_gettingst_MATLABFunction(PLT)
	ldr	r3, .L54+24
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #248]	@ float
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	ldr	r3, .L54+40
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #216]
	bl	__aeabi_dsub(PLT)
	mov	r2, r0
	mov	r3, r1
	strd	r2, [fp, #-68]
	ldr	r3, .L54+40
	ldr	r3, [r4, r3]
	ldrd	r0, [r3, #208]
	ldrd	r2, [fp, #-68]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r6, r2
	mov	r7, r3
	ldr	r3, .L54+36
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]	@ float
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, .L54+24
	ldr	r1, [r4, r1]
	strd	r2, [r1, #176]
	ldr	r3, .L54+32
	ldr	r3, [r4, r3]
	ldrb	r3, [r3, #83]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L45
	ldr	r3, .L54+40
	ldr	r2, [r4, r3]
	mov	r3, #496
	add	r3, r3, r2
	ldrd	r2, [r3]
	ldr	r1, .L54+32
	ldr	r1, [r4, r1]
	strd	r2, [r1, #24]
.L45:
	ldr	r3, .L54+40
	ldr	r3, [r4, r3]
	ldrb	r5, [r3, #754]	@ zero_extendqisi2
	ldr	r3, .L54+40
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #732]	@ float
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	mov	r6, r0
	mov	r7, r1
	ldr	r3, .L54+40
	ldr	r2, [r4, r3]
	mov	r3, #488
	ldrd	r8, [r2, r3]
	ldr	r3, .L54+24
	ldr	r3, [r4, r3]
	ldrd	r0, [r3, #176]
	ldr	r3, .L54+32
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #24]
	strd	r8, [sp]
	strd	r0, [sp, #8]
	strd	r2, [sp, #16]
	ldr	r3, .L54+24
	ldr	r3, [r4, r3]
	add	r3, r3, #232
	str	r3, [sp, #24]
	ldr	r3, .L54+32
	ldr	r3, [r4, r3]
	add	r3, r3, #91
	str	r3, [sp, #28]
	ldr	r3, .L54+40
	ldr	r3, [r4, r3]
	add	r3, r3, #784
	str	r3, [sp, #32]
	mov	r0, r5
	mov	r2, r6
	mov	r3, r7
	bl	parrot_getting_EnabledSubsystem(PLT)
	ldr	r3, .L54+24
	ldr	r3, [r4, r3]
	ldrd	r0, [r3, #232]
	ldr	r3, .L54+32
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #24]
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	strd	r2, [fp, #-68]
	ldrd	r2, [fp, #-68]
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f(PLT)
	mov	r3, r0
	str	r3, [fp, #-80]	@ float
	ldr	r3, .L54+28
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #8]
	strd	r2, [fp, #-140]
	ldr	r3, .L54+32
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #60]
	mov	r1, r3
	sub	r2, fp, #140
	sub	r3, fp, #80
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	rt_UpdateStructLogVar(PLT)
	ldr	r3, .L54+40
	ldr	r3, [r4, r3]
	ldr	r2, [r3, #736]	@ float
	ldr	r3, [fp, #-72]	@ float
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_fmul(PLT)
	mov	r3, r0
	str	r3, [fp, #-84]	@ float
	ldr	r3, .L54+40
	ldr	r2, [r4, r3]
	mov	r3, #504
	ldrd	r0, [r2, r3]
	ldr	r3, .L54+32
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #24]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	strd	r2, [fp, #-68]
	ldr	r3, .L54+40
	ldr	r3, [r4, r3]
	ldrb	r5, [r3, #754]	@ zero_extendqisi2
	ldr	r3, .L54+40
	ldr	r2, [r4, r3]
	mov	r3, #520
	ldrd	r6, [r2, r3]
	ldr	r3, .L54+24
	ldr	r3, [r4, r3]
	ldrd	r0, [r3, #176]
	strd	r0, [fp, #-196]
	ldr	r3, .L54+40
	ldr	r2, [r4, r3]
	mov	r3, #488
	ldrd	r0, [r2, r3]
	strd	r0, [fp, #-188]
	ldr	r3, .L54+32
	ldr	r3, [r4, r3]
	ldrd	r0, [r3, #24]
	strd	r0, [fp, #-180]
	ldr	r3, .L54+40
	ldr	r2, [r4, r3]
	mov	r3, #528
	ldrd	r8, [r2, r3]
	ldr	r3, .L54+36
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #52]	@ float
	ldr	r2, [fp, #-84]	@ float
	mov	r0, r3
	mov	r1, r2
	bl	__aeabi_fadd(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	mov	r2, r0
	mov	r3, r1
	ldrd	r0, [fp, #-196]
	strd	r0, [sp]
	ldrd	r0, [fp, #-188]
	strd	r0, [sp, #8]
	ldrd	r0, [fp, #-180]
	strd	r0, [sp, #16]
	strd	r8, [sp, #24]
	strd	r2, [sp, #32]
	ldr	r3, .L54+24
	ldr	r3, [r4, r3]
	add	r3, r3, #240
	str	r3, [sp, #40]
	ldr	r3, .L54+32
	ldr	r3, [r4, r3]
	add	r3, r3, #92
	str	r3, [sp, #44]
	ldr	r3, .L54+40
	ldr	r3, [r4, r3]
	add	r3, r3, #792
	str	r3, [sp, #48]
	mov	r0, r5
	mov	r2, r6
	mov	r3, r7
	bl	parrot_gettin_MeasurementUpdate(PLT)
	ldr	r3, .L54+36
	ldr	r3, [r4, r3]
	ldr	r2, [r3, #52]	@ float
	ldr	r3, [fp, #-84]	@ float
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_fadd(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	ldr	r3, .L54+40
	ldr	r2, [r4, r3]
	mov	r3, #512
	add	r3, r3, r2
	ldrd	r2, [r3]
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
	ldr	r3, .L54+24
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #240]
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, .L54+32
	ldr	r1, [r4, r1]
	strd	r2, [r1, #24]
	ldr	r3, .L54+36
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #392]	@ float
	mov	r0, r3
	ldr	r3, .L54+24
	ldr	r3, [r4, r3]
	add	r1, r3, #224
	bl	parrot_gettingst_MATLABFunction(PLT)
	ldr	r3, .L54+24
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #224]	@ float
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	ldr	r3, .L54+40
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #216]
	bl	__aeabi_dsub(PLT)
	mov	r2, r0
	mov	r3, r1
	strd	r2, [fp, #-68]
	ldr	r3, .L54+40
	ldr	r3, [r4, r3]
	ldrd	r0, [r3, #208]
	ldrd	r2, [fp, #-68]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r6, r2
	mov	r7, r3
	ldr	r3, .L54+36
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #4]	@ float
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, .L54+24
	ldr	r1, [r4, r1]
	strd	r2, [r1, #176]
	ldr	r3, .L54+32
	ldr	r3, [r4, r3]
	ldrb	r3, [r3, #84]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L46
	ldr	r3, .L54+40
	ldr	r2, [r4, r3]
	mov	r3, #552
	add	r3, r3, r2
	ldrd	r2, [r3]
	ldr	r1, .L54+32
	ldr	r1, [r4, r1]
	strd	r2, [r1, #32]
.L46:
	ldr	r3, .L54+40
	ldr	r3, [r4, r3]
	ldrb	ip, [r3, #756]	@ zero_extendqisi2
	ldr	r3, .L54+40
	ldr	r2, [r4, r3]
	mov	r3, #536
	ldrd	r6, [r2, r3]
	ldr	r3, .L54+40
	ldr	r2, [r4, r3]
	mov	r3, #544
	ldrd	r8, [r2, r3]
	ldr	r3, .L54+24
	ldr	r3, [r4, r3]
	ldrd	r0, [r3, #176]
	ldr	r3, .L54+32
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #32]
	strd	r8, [sp]
	strd	r0, [sp, #8]
	strd	r2, [sp, #16]
	ldr	r3, .L54+24
	ldr	r3, [r4, r3]
	add	r3, r3, #208
	str	r3, [sp, #24]
	ldr	r3, .L54+32
	ldr	r3, [r4, r3]
	add	r3, r3, #89
	str	r3, [sp, #28]
	ldr	r3, .L54+40
	ldr	r3, [r4, r3]
	add	r3, r3, #768
	str	r3, [sp, #32]
	mov	r0, ip
	mov	r2, r6
	mov	r3, r7
	bl	parrot_getting_EnabledSubsystem(PLT)
	ldr	r3, .L54+24
	ldr	r3, [r4, r3]
	ldrd	r0, [r3, #208]
	ldr	r3, .L54+32
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #32]
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	strd	r2, [fp, #-68]
	ldrd	r2, [fp, #-68]
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f(PLT)
	mov	r3, r0
	str	r3, [fp, #-84]	@ float
	ldr	r3, .L54+28
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #8]
	strd	r2, [fp, #-148]
	ldr	r3, .L54+32
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #64]
	mov	r1, r3
	sub	r2, fp, #148
	sub	r3, fp, #84
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	rt_UpdateStructLogVar(PLT)
	ldr	r3, .L54+36
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #56]	@ float
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	mov	r2, r0
	mov	r3, r1
	strd	r2, [fp, #-68]
	ldr	r3, .L54+40
	ldr	r3, [r4, r3]
	ldr	r2, [r3, #744]	@ float
	ldr	r3, [fp, #-76]	@ float
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_fmul(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	ldrd	r2, [fp, #-68]
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	strd	r2, [fp, #-60]
	ldr	r3, .L56
	ldr	r2, [r4, r3]
	mov	r3, #560
	ldrd	r0, [r2, r3]
	ldr	r3, .L56+4
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #32]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	strd	r2, [fp, #-68]
	ldr	r3, .L56
	ldr	r3, [r4, r3]
	ldrb	ip, [r3, #756]	@ zero_extendqisi2
	ldr	r3, .L56
	ldr	r2, [r4, r3]
	mov	r3, #584
	ldrd	r6, [r2, r3]
	ldr	r3, .L56+8
	ldr	r3, [r4, r3]
	ldrd	r0, [r3, #176]
	strd	r0, [fp, #-172]
	ldr	r3, .L56
	ldr	r2, [r4, r3]
	mov	r3, #544
	ldrd	r8, [r2, r3]
	ldr	r3, .L56+4
	ldr	r3, [r4, r3]
	ldrd	r0, [r3, #32]
	strd	r0, [fp, #-236]
	ldr	r3, .L56
	ldr	r2, [r4, r3]
	mov	r3, #592
	ldrd	r0, [r2, r3]
	strd	r0, [fp, #-228]
	ldrd	r2, [fp, #-172]
	strd	r2, [sp]
	strd	r8, [sp, #8]
	ldrd	r0, [fp, #-236]
	strd	r0, [sp, #16]
	ldrd	r2, [fp, #-228]
	strd	r2, [sp, #24]
	ldrd	r2, [fp, #-60]
	strd	r2, [sp, #32]
	ldr	r3, .L56+8
	ldr	r3, [r4, r3]
	add	r3, r3, #216
	str	r3, [sp, #40]
	ldr	r3, .L56+4
	ldr	r3, [r4, r3]
	add	r3, r3, #90
	str	r3, [sp, #44]
	ldr	r3, .L56
	ldr	r3, [r4, r3]
	add	r3, r3, #776
	str	r3, [sp, #48]
	mov	r0, ip
	mov	r2, r6
	mov	r3, r7
	bl	parrot_gettin_MeasurementUpdate(PLT)
	ldr	r3, .L56
	ldr	r2, [r4, r3]
	mov	r3, #568
	add	r3, r3, r2
	ldrd	r2, [r3]
	mov	r0, r2
	mov	r1, r3
	ldrd	r2, [fp, #-60]
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
	ldr	r3, .L56+8
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #216]
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, .L56+4
	ldr	r1, [r4, r1]
	strd	r2, [r1, #32]
	ldr	r3, .L56
	ldr	r2, [r4, r3]
	mov	r3, #608
	ldrd	r6, [r2, r3]
	ldr	r3, .L56+8
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #196]	@ float
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dsub(PLT)
	mov	r2, r0
	mov	r3, r1
	strd	r2, [fp, #-68]
	ldr	r3, .L56
	ldr	r2, [r4, r3]
	mov	r3, #600
	ldrd	r6, [r2, r3]
	ldr	r3, [fp, #-88]	@ float
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
	ldr	r3, .L56
	ldr	r3, [r4, r3]
	ldrd	r2, [r3]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r6, r2
	mov	r7, r3
	ldr	r3, .L56
	ldr	r3, [r4, r3]
	ldrd	r0, [r3, #8]
	ldrd	r2, [fp, #-68]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	strd	r2, [fp, #-68]
	ldrd	r2, [fp, #-68]
	ldr	r1, .L56+8
	ldr	r1, [r4, r1]
	strd	r2, [r1, #112]
	ldr	r3, .L56
	ldr	r2, [r4, r3]
	mov	r3, #616
	ldrd	r6, [r2, r3]
	ldr	r3, [fp, #-84]	@ float
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
	ldr	r3, .L56
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #56]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r6, r2
	mov	r7, r3
	ldr	r3, .L56
	ldr	r2, [r4, r3]
	mov	r3, #624
	ldrd	r8, [r2, r3]
	ldr	r3, [fp, #-76]	@ float
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
	ldr	r3, .L56
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #64]
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
	ldr	r3, .L56
	ldr	r2, [r4, r3]
	mov	r3, #632
	ldrd	r8, [r2, r3]
	ldr	r3, .L56+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #68]	@ float
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
	ldr	r3, .L56
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #72]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, .L56+8
	ldr	r1, [r4, r1]
	strd	r2, [r1, #120]
	ldr	r3, .L56
	ldr	r2, [r4, r3]
	mov	r3, #640
	ldrd	r6, [r2, r3]
	ldr	r3, [fp, #-80]	@ float
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
	ldr	r3, .L56
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #32]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r6, r2
	mov	r7, r3
	ldr	r3, .L56
	ldr	r2, [r4, r3]
	mov	r3, #648
	ldrd	r8, [r2, r3]
	ldr	r3, [fp, #-72]	@ float
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
	ldr	r3, .L56
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #40]
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
	ldr	r3, .L56
	ldr	r2, [r4, r3]
	mov	r3, #656
	ldrd	r8, [r2, r3]
	ldr	r3, .L56+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #72]	@ float
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
	ldr	r3, .L56
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #48]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, .L56+8
	ldr	r1, [r4, r1]
	strd	r2, [r1, #128]
	ldr	r3, .L56
	ldr	r2, [r4, r3]
	mov	r3, #664
	ldrd	r6, [r2, r3]
	ldr	r3, .L56+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #76]	@ float
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
	ldr	r3, .L56
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #16]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, .L56+8
	ldr	r1, [r4, r1]
	strd	r2, [r1, #136]
	ldr	r3, .L56+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #8]
	strd	r2, [fp, #-156]
	ldr	r3, .L56+4
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #68]
	mov	r2, r3
	sub	r3, fp, #156
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L56+8
	ldr	r3, [r4, r3]
	add	r2, r3, #112
	bl	rt_UpdateStructLogVar(PLT)
	ldr	r3, .L56+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #8]
	strd	r2, [fp, #-164]
	ldr	r3, .L56+4
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #72]
	mov	r1, r3
	sub	r2, fp, #164
	sub	r3, fp, #68
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	rt_UpdateStructLogVar(PLT)
	ldr	r3, .L56+4
	ldr	r3, [r4, r3]
	mov	r2, #0
	strb	r2, [r3, #80]
	ldr	r3, .L56
	ldr	r2, [r4, r3]
	mov	r3, #360
	ldrd	r0, [r2, r3]
	ldr	r3, .L56+4
	ldr	r3, [r4, r3]
	ldrd	r2, [r3]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r6, r2
	mov	r7, r3
	ldr	r3, .L56+4
	ldr	r3, [r4, r3]
	ldrd	r0, [r3, #8]
	ldr	r3, .L56
	ldr	r2, [r4, r3]
	mov	r3, #376
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
	ldr	r3, .L56+4
	ldr	r3, [r4, r3]
	ldrd	r0, [r3]
	ldr	r3, .L56
	ldr	r2, [r4, r3]
	mov	r3, #368
	add	r3, r3, r2
	ldrd	r2, [r3]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r6, r2
	mov	r7, r3
	ldr	r3, .L56+4
	ldr	r3, [r4, r3]
	ldrd	r0, [r3, #8]
	ldr	r3, .L56
	ldr	r2, [r4, r3]
	mov	r3, #384
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
	ldr	r1, .L56+8
	ldr	r1, [r4, r1]
	strd	r2, [r1, #176]
	ldr	r3, .L56
	ldr	r2, [r4, r3]
	mov	r3, #392
	ldrd	r0, [r2, r3]
	ldr	r3, .L56+8
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #184]
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
	ldr	r3, .L56+8
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #160]
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, .L56+4
	ldr	r1, [r4, r1]
	strd	r2, [r1]
	ldr	r3, .L56
	ldr	r2, [r4, r3]
	mov	r3, #400
	ldrd	r0, [r2, r3]
	ldr	r3, .L56+8
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #184]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L56+8
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #176]
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L56+8
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #168]
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, .L56+4
	ldr	r1, [r4, r1]
	strd	r2, [r1, #8]
	ldr	r3, .L56+4
	ldr	r3, [r4, r3]
	mov	r2, #0
	strb	r2, [r3, #81]
	ldr	r3, .L56+4
	ldr	r3, [r4, r3]
	mov	r2, #0
	strb	r2, [r3, #82]
	ldr	r3, .L56+4
	ldr	r3, [r4, r3]
	mov	r2, #0
	strb	r2, [r3, #83]
	ldr	r3, .L56+4
	ldr	r3, [r4, r3]
	mov	r2, #0
	strb	r2, [r3, #84]
	ldr	r3, .L56+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r2, [r3, #4]
	ldr	r3, .L56+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	add	r3, r3, #8
	mov	r0, r2
	mov	r1, r3
	bl	rt_UpdateTXYLogVars(PLT)
	ldr	r3, .L56+16
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
	bne	.L47
.L53:
	ldr	r3, .L56+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r0, [r3, #32]
	ldr	r3, .L56+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #8]
	bl	__aeabi_dsub(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r6, r2
	mov	r7, r3
	ldr	r3, .L56+16
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
	beq	.L49
.L50:
	mov	r3, #1
	mov	r5, r3
.L49:
	and	r3, r5, #255
	eor	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L47
	ldr	r3, .L56+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r2, .L56+20
	add	r2, r4, r2
	str	r2, [r3, #0]
.L47:
	ldr	r3, .L56+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r2, [r3, #16]
	add	r2, r2, #1
	str	r2, [r3, #16]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	bne	.L51
	ldr	r3, .L56+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r2, [r3, #20]
	add	r2, r2, #1
	str	r2, [r3, #20]
.L51:
	ldr	r3, .L56+16
	ldr	r3, [r4, r3]
	ldr	r5, [r3, #0]
	ldr	r3, .L56+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #16]
	mov	r0, r3
	bl	__aeabi_ui2d(PLT)
	ldr	r3, .L56+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #24]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r6, r2
	mov	r7, r3
	ldr	r3, .L56+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #20]
	mov	r0, r3
	bl	__aeabi_ui2d(PLT)
	ldr	r3, .L56+16
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
.L57:
	.align	2
.L56:
	.word	parrot_gettingstarted_P(GOT)
	.word	parrot_gettingstarted_DW(GOT)
	.word	parrot_gettingstarted_B(GOT)
	.word	sensor_inport(GOT)
	.word	parrot_gettingstarted_M(GOT)
	.word	.LC0(GOTOFF)
.LFE9:
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
	.ascii	"mixer_out\000"
	.align	2
.LC5:
	.ascii	"alt_est\000"
	.align	2
.LC6:
	.ascii	"w_est\000"
	.align	2
.LC7:
	.ascii	"phi_est\000"
	.align	2
.LC8:
	.ascii	"theta_est\000"
	.align	2
.LC9:
	.ascii	"u_est\000"
	.align	2
.LC10:
	.ascii	"v_est\000"
	.align	2
.LC11:
	.ascii	"test_mixer\000"
	.align	2
.LC12:
	.ascii	"thrust_out\000"
	.text
	.align	2
	.global	parrot_gettingstarted_initialize
	.type	parrot_gettingstarted_initialize, %function
parrot_gettingstarted_initialize:
	.fnstart
.LFB10:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, fp, lr}
	.save {r4, fp, lr}
.LCFI30:
	.setfp fp, sp, #8
	add	fp, sp, #8
.LCFI31:
	.pad #60
	sub	sp, sp, #60
.LCFI32:
	ldr	r4, .L79+8
.LPIC1:
	add	r4, pc, r4
	mov	r0, #8
	bl	rt_InitInfAndNaN(PLT)
	ldr	r3, .L79+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	mov	r0, r3
	mov	r1, #0
	mov	r2, #48
	bl	memset(PLT)
	ldr	r3, .L79+12
	ldr	r3, [r4, r3]
	ldr	r1, [r3, #0]
	mov	r2, #0
	mov	r3, #1073741824
	add	r3, r3, #5832704
	strd	r2, [r1, #32]
	ldr	r3, .L79+12
	ldr	r3, [r4, r3]
	ldr	r1, [r3, #0]
	adr	r3, .L79
	ldrd	r2, [r3]
	strd	r2, [r1, #24]
	ldr	r3, .L79+16
	add	r3, r4, r3
	mov	r2, #0
	str	r2, [r3, #68]
	ldr	r3, .L79+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r2, .L79+16
	add	r2, r4, r2
	str	r2, [r3, #4]
	ldr	r3, .L79+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #4]
	mov	r2, #0
	str	r2, [r3, #48]
	ldr	r3, .L79+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #4]
	mov	r2, #0
	str	r2, [r3, #4]
	ldr	r3, .L79+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #4]
	ldr	r2, .L79+20
	add	r2, r4, r2
	str	r2, [r3, #28]
	ldr	r3, .L79+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #4]
	ldr	r2, .L79+24
	add	r2, r4, r2
	str	r2, [r3, #32]
	ldr	r3, .L79+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #4]
	ldr	r2, .L79+24
	add	r2, r4, r2
	str	r2, [r3, #36]
	ldr	r3, .L79+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #4]
	ldr	r2, .L79+28
	add	r2, r4, r2
	str	r2, [r3, #24]
	ldr	r3, .L79+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #4]
	mov	r2, #4
	str	r2, [r3, #12]
	ldr	r3, .L79+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #4]
	mov	r2, #0
	str	r2, [r3, #16]
	ldr	r3, .L79+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #4]
	mov	r2, #1
	str	r2, [r3, #20]
	ldr	r3, .L79+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #4]
	ldr	r2, .L79+24
	add	r2, r4, r2
	str	r2, [r3, #40]
	ldr	r3, .L79+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #4]
	mov	r2, #0
	str	r2, [r3, #52]
	ldr	r3, .L79+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #4]
	mov	r2, #0
	str	r2, [r3, #8]
	ldr	r3, .L79+32
	ldr	r3, [r4, r3]
	mov	r0, r3
	mov	r1, #0
	mov	r2, #272
	bl	memset(PLT)
	ldr	r3, .L79+36
	ldr	r3, [r4, r3]
	ldr	r2, .L79+40	@ float
	str	r2, [r3, #0]	@ float
	ldr	r3, .L79+36
	ldr	r3, [r4, r3]
	ldr	r2, .L79+40	@ float
	str	r2, [r3, #4]	@ float
	ldr	r3, .L79+36
	ldr	r3, [r4, r3]
	ldr	r2, .L79+40	@ float
	str	r2, [r3, #8]	@ float
	ldr	r3, .L79+36
	ldr	r3, [r4, r3]
	ldr	r2, .L79+40	@ float
	str	r2, [r3, #12]	@ float
	ldr	r3, .L79+44
	ldr	r3, [r4, r3]
	mov	r2, #0
	strb	r2, [r3, #0]
	ldr	r3, .L79+48
	ldr	r3, [r4, r3]
	mov	r0, r3
	mov	r1, #0
	mov	r2, #96
	bl	memset(PLT)
	ldr	r3, .L79+52
	ldr	r3, [r4, r3]
	mov	r0, r3
	mov	r1, #0
	mov	r2, #36
	bl	memset(PLT)
	ldr	r3, .L79+56
	ldr	r3, [r4, r3]
	mov	r0, r3
	mov	r1, #0
	mov	r2, #2496
	bl	memset(PLT)
	ldr	r3, .L79+60
	ldr	r3, [r4, r3]
	mov	r0, r3
	mov	r1, #0
	mov	r2, #20
	bl	memset(PLT)
	ldr	r3, .L79+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	ip, [r3, #4]
	ldr	r3, .L79+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r0, [r3, #32]
	ldr	r3, .L79+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #24]
	ldr	lr, .L79+12
	ldr	lr, [r4, lr]
	ldr	lr, [lr, #0]
	strd	r0, [sp]
	strd	r2, [sp, #8]
	str	lr, [sp, #16]
	mov	r0, ip
	mov	r2, #0
	mov	r3, #0
	bl	rt_StartDataLoggingWithStartTime(PLT)
	ldr	r3, .L79+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	ip, [r3, #4]
	ldr	r3, .L79+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r0, [r3, #32]
	ldr	r3, .L79+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #24]
	ldr	lr, .L79+12
	ldr	lr, [r4, lr]
	ldr	lr, [lr, #0]
	strd	r0, [sp]
	strd	r2, [sp, #8]
	str	lr, [sp, #16]
	ldr	r3, .L79+64
	add	r3, r4, r3
	str	r3, [sp, #20]
	mov	r3, #1
	str	r3, [sp, #24]
	mov	r3, #0
	str	r3, [sp, #28]
	mov	r3, #1
	str	r3, [sp, #32]
	adr	r3, .L79
	ldrd	r2, [r3]
	strd	r2, [sp, #40]
	ldr	r3, .L79+68
	add	r3, r4, r3
	str	r3, [sp, #48]
	ldr	r3, .L79+72
	add	r3, r4, r3
	str	r3, [sp, #52]
	mov	r0, ip
	mov	r2, #0
	mov	r3, #0
	bl	rt_CreateStructLogVar(PLT)
	mov	r2, r0
	ldr	r3, .L79+48
	ldr	r3, [r4, r3]
	str	r2, [r3, #40]
	ldr	r3, .L79+48
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #40]
	cmp	r3, #0
	beq	.L70
.L59:
	ldr	r3, .L79+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	ip, [r3, #4]
	ldr	r3, .L79+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r0, [r3, #32]
	ldr	r3, .L79+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #24]
	ldr	lr, .L79+12
	ldr	lr, [r4, lr]
	ldr	lr, [lr, #0]
	strd	r0, [sp]
	strd	r2, [sp, #8]
	str	lr, [sp, #16]
	ldr	r3, .L79+76
	add	r3, r4, r3
	str	r3, [sp, #20]
	mov	r3, #1
	str	r3, [sp, #24]
	mov	r3, #0
	str	r3, [sp, #28]
	mov	r3, #1
	str	r3, [sp, #32]
	b	.L80
.L81:
	.align	3
.L79:
	.word	1202590843
	.word	1064598241
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+8)
	.word	parrot_gettingstarted_M(GOT)
	.word	rt_DataLoggingInfo.4828(GOTOFF)
	.word	.LC1(GOTOFF)
	.word	.LC2(GOTOFF)
	.word	.LC3(GOTOFF)
	.word	parrot_gettingstarted_B(GOT)
	.word	motors_outport(GOT)
	.word	0
	.word	flag_outport(GOT)
	.word	parrot_gettingstarted_DW(GOT)
	.word	cmd_inport(GOT)
	.word	sensor_inport(GOT)
	.word	parrot_gettingstarted_Y(GOT)
	.word	.LC4(GOTOFF)
	.word	rt_ToWksSignalInfo.4840(GOTOFF)
	.word	rt_ToWksBlockName.4841(GOTOFF)
	.word	.LC5(GOTOFF)
.L80:
	adr	r3, .L82
	ldrd	r2, [r3]
	strd	r2, [sp, #40]
	ldr	r3, .L82+8
	add	r3, r4, r3
	str	r3, [sp, #48]
	ldr	r3, .L82+12
	add	r3, r4, r3
	str	r3, [sp, #52]
	mov	r0, ip
	mov	r2, #0
	mov	r3, #0
	bl	rt_CreateStructLogVar(PLT)
	mov	r2, r0
	ldr	r3, .L82+16
	ldr	r3, [r4, r3]
	str	r2, [r3, #44]
	ldr	r3, .L82+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L71
.L61:
	ldr	r3, .L82+68
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	ip, [r3, #4]
	ldr	r3, .L82+68
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r0, [r3, #32]
	ldr	r3, .L82+68
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #24]
	ldr	lr, .L82+68
	ldr	lr, [r4, lr]
	ldr	lr, [lr, #0]
	strd	r0, [sp]
	strd	r2, [sp, #8]
	str	lr, [sp, #16]
	ldr	r3, .L82+20
	add	r3, r4, r3
	str	r3, [sp, #20]
	mov	r3, #1
	str	r3, [sp, #24]
	mov	r3, #0
	str	r3, [sp, #28]
	mov	r3, #1
	str	r3, [sp, #32]
	adr	r3, .L82
	ldrd	r2, [r3]
	strd	r2, [sp, #40]
	ldr	r3, .L82+24
	add	r3, r4, r3
	str	r3, [sp, #48]
	ldr	r3, .L82+28
	add	r3, r4, r3
	str	r3, [sp, #52]
	mov	r0, ip
	mov	r2, #0
	mov	r3, #0
	bl	rt_CreateStructLogVar(PLT)
	mov	r2, r0
	ldr	r3, .L82+16
	ldr	r3, [r4, r3]
	str	r2, [r3, #48]
	ldr	r3, .L82+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	.L72
.L62:
	ldr	r3, .L82+68
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	ip, [r3, #4]
	ldr	r3, .L82+68
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r0, [r3, #32]
	ldr	r3, .L82+68
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #24]
	ldr	lr, .L82+68
	ldr	lr, [r4, lr]
	ldr	lr, [lr, #0]
	strd	r0, [sp]
	strd	r2, [sp, #8]
	str	lr, [sp, #16]
	ldr	r3, .L82+32
	add	r3, r4, r3
	str	r3, [sp, #20]
	mov	r3, #1
	str	r3, [sp, #24]
	mov	r3, #0
	str	r3, [sp, #28]
	mov	r3, #1
	str	r3, [sp, #32]
	adr	r3, .L82
	ldrd	r2, [r3]
	strd	r2, [sp, #40]
	ldr	r3, .L82+36
	add	r3, r4, r3
	str	r3, [sp, #48]
	ldr	r3, .L82+40
	add	r3, r4, r3
	str	r3, [sp, #52]
	mov	r0, ip
	mov	r2, #0
	mov	r3, #0
	bl	rt_CreateStructLogVar(PLT)
	mov	r2, r0
	ldr	r3, .L82+16
	ldr	r3, [r4, r3]
	str	r2, [r3, #52]
	ldr	r3, .L82+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #52]
	cmp	r3, #0
	beq	.L73
.L63:
	ldr	r3, .L82+68
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	ip, [r3, #4]
	ldr	r3, .L82+68
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r0, [r3, #32]
	ldr	r3, .L82+68
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #24]
	ldr	lr, .L82+68
	ldr	lr, [r4, lr]
	ldr	lr, [lr, #0]
	strd	r0, [sp]
	strd	r2, [sp, #8]
	str	lr, [sp, #16]
	ldr	r3, .L82+44
	add	r3, r4, r3
	str	r3, [sp, #20]
	mov	r3, #1
	str	r3, [sp, #24]
	mov	r3, #0
	str	r3, [sp, #28]
	mov	r3, #1
	str	r3, [sp, #32]
	adr	r3, .L82
	ldrd	r2, [r3]
	strd	r2, [sp, #40]
	ldr	r3, .L82+48
	add	r3, r4, r3
	str	r3, [sp, #48]
	ldr	r3, .L82+52
	add	r3, r4, r3
	str	r3, [sp, #52]
	mov	r0, ip
	mov	r2, #0
	mov	r3, #0
	bl	rt_CreateStructLogVar(PLT)
	mov	r2, r0
	ldr	r3, .L82+16
	ldr	r3, [r4, r3]
	str	r2, [r3, #56]
	ldr	r3, .L82+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #56]
	cmp	r3, #0
	beq	.L74
.L64:
	ldr	r3, .L82+68
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	ip, [r3, #4]
	ldr	r3, .L82+68
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r0, [r3, #32]
	ldr	r3, .L82+68
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #24]
	ldr	lr, .L82+68
	ldr	lr, [r4, lr]
	ldr	lr, [lr, #0]
	strd	r0, [sp]
	strd	r2, [sp, #8]
	str	lr, [sp, #16]
	ldr	r3, .L82+56
	add	r3, r4, r3
	str	r3, [sp, #20]
	mov	r3, #1
	str	r3, [sp, #24]
	mov	r3, #0
	str	r3, [sp, #28]
	mov	r3, #1
	str	r3, [sp, #32]
	adr	r3, .L82
	ldrd	r2, [r3]
	strd	r2, [sp, #40]
	ldr	r3, .L82+60
	add	r3, r4, r3
	str	r3, [sp, #48]
	ldr	r3, .L82+64
	add	r3, r4, r3
	str	r3, [sp, #52]
	mov	r0, ip
	mov	r2, #0
	mov	r3, #0
	bl	rt_CreateStructLogVar(PLT)
	mov	r2, r0
	ldr	r3, .L82+16
	ldr	r3, [r4, r3]
	str	r2, [r3, #60]
	ldr	r3, .L82+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #60]
	cmp	r3, #0
	beq	.L75
.L65:
	ldr	r3, .L82+68
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	ip, [r3, #4]
	ldr	r3, .L82+68
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r0, [r3, #32]
	ldr	r3, .L82+68
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	b	.L83
.L84:
	.align	3
.L82:
	.word	1202590843
	.word	1064598241
	.word	rt_ToWksSignalInfo.4853(GOTOFF)
	.word	rt_ToWksBlockName.4854(GOTOFF)
	.word	parrot_gettingstarted_DW(GOT)
	.word	.LC6(GOTOFF)
	.word	rt_ToWksSignalInfo.4866(GOTOFF)
	.word	rt_ToWksBlockName.4867(GOTOFF)
	.word	.LC7(GOTOFF)
	.word	rt_ToWksSignalInfo.4879(GOTOFF)
	.word	rt_ToWksBlockName.4880(GOTOFF)
	.word	.LC8(GOTOFF)
	.word	rt_ToWksSignalInfo.4892(GOTOFF)
	.word	rt_ToWksBlockName.4893(GOTOFF)
	.word	.LC9(GOTOFF)
	.word	rt_ToWksSignalInfo.4905(GOTOFF)
	.word	rt_ToWksBlockName.4906(GOTOFF)
	.word	parrot_gettingstarted_M(GOT)
	.word	.LC10(GOTOFF)
.L83:
	ldrd	r2, [r3, #24]
	ldr	lr, .L82+68
	ldr	lr, [r4, lr]
	ldr	lr, [lr, #0]
	strd	r0, [sp]
	strd	r2, [sp, #8]
	str	lr, [sp, #16]
	ldr	r3, .L82+72
	add	r3, r4, r3
	str	r3, [sp, #20]
	mov	r3, #1
	str	r3, [sp, #24]
	mov	r3, #0
	str	r3, [sp, #28]
	mov	r3, #1
	str	r3, [sp, #32]
	adr	r3, .L85
	ldrd	r2, [r3]
	strd	r2, [sp, #40]
	ldr	r3, .L85+8
	add	r3, r4, r3
	str	r3, [sp, #48]
	ldr	r3, .L85+12
	add	r3, r4, r3
	str	r3, [sp, #52]
	mov	r0, ip
	mov	r2, #0
	mov	r3, #0
	bl	rt_CreateStructLogVar(PLT)
	mov	r2, r0
	ldr	r3, .L85+16
	ldr	r3, [r4, r3]
	str	r2, [r3, #64]
	ldr	r3, .L85+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #64]
	cmp	r3, #0
	beq	.L76
.L66:
	ldr	r3, .L85+20
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	ip, [r3, #4]
	ldr	r3, .L85+20
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r0, [r3, #32]
	ldr	r3, .L85+20
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #24]
	ldr	lr, .L85+20
	ldr	lr, [r4, lr]
	ldr	lr, [lr, #0]
	strd	r0, [sp]
	strd	r2, [sp, #8]
	str	lr, [sp, #16]
	ldr	r3, .L85+24
	add	r3, r4, r3
	str	r3, [sp, #20]
	mov	r3, #1
	str	r3, [sp, #24]
	mov	r3, #0
	str	r3, [sp, #28]
	mov	r3, #1
	str	r3, [sp, #32]
	adr	r3, .L85
	ldrd	r2, [r3]
	strd	r2, [sp, #40]
	ldr	r3, .L85+28
	add	r3, r4, r3
	str	r3, [sp, #48]
	ldr	r3, .L85+32
	add	r3, r4, r3
	str	r3, [sp, #52]
	mov	r0, ip
	mov	r2, #0
	mov	r3, #0
	bl	rt_CreateStructLogVar(PLT)
	mov	r2, r0
	ldr	r3, .L85+16
	ldr	r3, [r4, r3]
	str	r2, [r3, #68]
	ldr	r3, .L85+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #68]
	cmp	r3, #0
	beq	.L77
.L67:
	ldr	r3, .L85+20
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	ip, [r3, #4]
	ldr	r3, .L85+20
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r0, [r3, #32]
	ldr	r3, .L85+20
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #24]
	ldr	lr, .L85+20
	ldr	lr, [r4, lr]
	ldr	lr, [lr, #0]
	strd	r0, [sp]
	strd	r2, [sp, #8]
	str	lr, [sp, #16]
	ldr	r3, .L85+36
	add	r3, r4, r3
	str	r3, [sp, #20]
	mov	r3, #1
	str	r3, [sp, #24]
	mov	r3, #0
	str	r3, [sp, #28]
	mov	r3, #1
	str	r3, [sp, #32]
	adr	r3, .L85
	ldrd	r2, [r3]
	strd	r2, [sp, #40]
	ldr	r3, .L85+40
	add	r3, r4, r3
	str	r3, [sp, #48]
	ldr	r3, .L85+44
	add	r3, r4, r3
	str	r3, [sp, #52]
	mov	r0, ip
	mov	r2, #0
	mov	r3, #0
	bl	rt_CreateStructLogVar(PLT)
	mov	r2, r0
	ldr	r3, .L85+16
	ldr	r3, [r4, r3]
	str	r2, [r3, #72]
	ldr	r3, .L85+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #72]
	cmp	r3, #0
	beq	.L78
.L68:
	ldr	r3, .L85+16
	ldr	r3, [r4, r3]
	mov	r2, #0
	strb	r2, [r3, #87]
	ldr	r3, .L85+16
	ldr	r3, [r4, r3]
	add	r0, r3, #93
	bl	parrot_g_EnabledSubsystem_Start(PLT)
	ldr	r3, .L85+16
	ldr	r3, [r4, r3]
	mov	r2, #0
	strb	r2, [r3, #85]
	ldr	r3, .L85+16
	ldr	r3, [r4, r3]
	mov	r2, #0
	strb	r2, [r3, #88]
	ldr	r3, .L85+16
	ldr	r3, [r4, r3]
	add	r0, r3, #94
	bl	parrot__MeasurementUpdate_Start(PLT)
	ldr	r3, .L85+16
	ldr	r3, [r4, r3]
	mov	r2, #0
	strb	r2, [r3, #86]
	ldr	r3, .L85+16
	ldr	r3, [r4, r3]
	add	r0, r3, #91
	bl	parrot_g_EnabledSubsystem_Start(PLT)
	ldr	r3, .L85+16
	ldr	r3, [r4, r3]
	add	r0, r3, #92
	bl	parrot__MeasurementUpdate_Start(PLT)
	ldr	r3, .L85+16
	ldr	r3, [r4, r3]
	add	r0, r3, #89
	bl	parrot_g_EnabledSubsystem_Start(PLT)
	ldr	r3, .L85+16
	ldr	r3, [r4, r3]
	add	r0, r3, #90
	bl	parrot__MeasurementUpdate_Start(PLT)
	ldr	r3, .L85+16
	ldr	r3, [r4, r3]
	mov	r2, #1
	strb	r2, [r3, #80]
	ldr	r3, .L85+16
	ldr	r3, [r4, r3]
	mov	r2, #1
	strb	r2, [r3, #81]
	ldr	r3, .L85+16
	ldr	r3, [r4, r3]
	mov	r2, #1
	strb	r2, [r3, #82]
	ldr	r3, .L85+16
	ldr	r3, [r4, r3]
	mov	r2, #1
	strb	r2, [r3, #83]
	ldr	r3, .L85+16
	ldr	r3, [r4, r3]
	mov	r2, #1
	strb	r2, [r3, #84]
	ldr	r3, .L85+52
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #232]
	ldr	r1, .L85+48
	ldr	r1, [r4, r1]
	strd	r2, [r1, #144]
	ldr	r3, .L85+52
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #232]
	ldr	r1, .L85+48
	ldr	r1, [r4, r1]
	strd	r2, [r1, #152]
	ldr	r3, .L85+48
	ldr	r3, [r4, r3]
	add	r0, r3, #256
	ldr	r3, .L85+52
	ldr	r3, [r4, r3]
	add	r1, r3, #800
	bl	parrot_ge_EnabledSubsystem_Init(PLT)
	ldr	r3, .L85+52
	ldr	r3, [r4, r3]
	ldr	r2, [r3, #676]	@ float
	ldr	r3, .L85+48
	ldr	r3, [r4, r3]
	str	r2, [r3, #200]	@ float
	ldr	r3, .L85+52
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #224]
	ldr	r1, .L85+48
	ldr	r1, [r4, r1]
	strd	r2, [r1, #160]
	ldr	r3, .L85+52
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #224]
	ldr	r1, .L85+48
	ldr	r1, [r4, r1]
	strd	r2, [r1, #168]
	ldr	r3, .L85+48
	ldr	r3, [r4, r3]
	add	r0, r3, #264
	ldr	r3, .L85+52
	ldr	r3, [r4, r3]
	add	r1, r3, #808
	bl	parrot_g_MeasurementUpdate_Init(PLT)
	b	.L86
.L87:
	.align	3
.L85:
	.word	1202590843
	.word	1064598241
	.word	rt_ToWksSignalInfo.4918(GOTOFF)
	.word	rt_ToWksBlockName.4919(GOTOFF)
	.word	parrot_gettingstarted_DW(GOT)
	.word	parrot_gettingstarted_M(GOT)
	.word	.LC11(GOTOFF)
	.word	rt_ToWksSignalInfo.4931(GOTOFF)
	.word	rt_ToWksBlockName.4932(GOTOFF)
	.word	.LC12(GOTOFF)
	.word	rt_ToWksSignalInfo.4944(GOTOFF)
	.word	rt_ToWksBlockName.4945(GOTOFF)
	.word	parrot_gettingstarted_B(GOT)
	.word	parrot_gettingstarted_P(GOT)
.L86:
	ldr	r3, .L85+52
	ldr	r3, [r4, r3]
	ldr	r2, [r3, #672]	@ float
	ldr	r3, .L85+48
	ldr	r3, [r4, r3]
	str	r2, [r3, #204]	@ float
	ldr	r3, .L85+48
	ldr	r3, [r4, r3]
	add	r0, r3, #232
	ldr	r3, .L85+52
	ldr	r3, [r4, r3]
	add	r1, r3, #784
	bl	parrot_ge_EnabledSubsystem_Init(PLT)
	ldr	r3, .L85+48
	ldr	r3, [r4, r3]
	add	r0, r3, #240
	ldr	r3, .L85+52
	ldr	r3, [r4, r3]
	add	r1, r3, #792
	bl	parrot_g_MeasurementUpdate_Init(PLT)
	ldr	r3, .L85+48
	ldr	r3, [r4, r3]
	add	r0, r3, #208
	ldr	r3, .L85+52
	ldr	r3, [r4, r3]
	add	r1, r3, #768
	bl	parrot_ge_EnabledSubsystem_Init(PLT)
	ldr	r3, .L85+48
	ldr	r3, [r4, r3]
	add	r0, r3, #216
	ldr	r3, .L85+52
	ldr	r3, [r4, r3]
	add	r1, r3, #776
	bl	parrot_g_MeasurementUpdate_Init(PLT)
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
.L69:
	sub	sp, fp, #8
	ldmfd	sp!, {r4, fp, pc}
.LFE10:
	.fnend
	.size	parrot_gettingstarted_initialize, .-parrot_gettingstarted_initialize
	.align	2
	.global	parrot_gettingstarted_terminate
	.type	parrot_gettingstarted_terminate, %function
parrot_gettingstarted_terminate:
	.fnstart
.LFB11:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.save {fp}
.LCFI33:
	.setfp fp, sp, #0
	add	fp, sp, #0
.LCFI34:
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.LFE11:
	.fnend
	.size	parrot_gettingstarted_terminate, .-parrot_gettingstarted_terminate
	.local	rt_DataLoggingInfo.4828
	.comm	rt_DataLoggingInfo.4828,72,4
	.section	.data.rel.local,"aw",%progbits
	.align	2
	.type	rt_ToWksSignalInfo.4840, %object
	.size	rt_ToWksSignalInfo.4840, 76
rt_ToWksSignalInfo.4840:
	.word	1
	.word	rt_ToWksWidths.4829
	.word	rt_ToWksNumDimensions.4830
	.word	rt_ToWksDimensions.4831
	.word	rt_ToWksIsVarDims.4832
	.word	rt_ToWksCurrSigDims.4833
	.word	rt_ToWksCurrSigDimsSize.4834
	.word	rt_ToWksDataTypeIds.4835
	.word	rt_ToWksComplexSignals.4836
	.word	rt_ToWksFrameData.4837
	.word	rt_ToWksLoggingPreprocessingFcnPtrs.4838
	.word	rt_ToWksLabels.4839
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.rodata
	.align	2
	.type	rt_ToWksBlockName.4841, %object
	.size	rt_ToWksBlockName.4841, 58
rt_ToWksBlockName.4841:
	.ascii	"parrot_gettingstarted/Flight_Control_System/To Work"
	.ascii	"space1\000"
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksSignalInfo.4853, %object
	.size	rt_ToWksSignalInfo.4853, 76
rt_ToWksSignalInfo.4853:
	.word	1
	.word	rt_ToWksWidths.4842
	.word	rt_ToWksNumDimensions.4843
	.word	rt_ToWksDimensions.4844
	.word	rt_ToWksIsVarDims.4845
	.word	rt_ToWksCurrSigDims.4846
	.word	rt_ToWksCurrSigDimsSize.4847
	.word	rt_ToWksDataTypeIds.4848
	.word	rt_ToWksComplexSignals.4849
	.word	rt_ToWksFrameData.4850
	.word	rt_ToWksLoggingPreprocessingFcnPtrs.4851
	.word	rt_ToWksLabels.4852
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.rodata
	.align	2
	.type	rt_ToWksBlockName.4854, %object
	.size	rt_ToWksBlockName.4854, 57
rt_ToWksBlockName.4854:
	.ascii	"parrot_gettingstarted/Flight_Control_System/To Work"
	.ascii	"space\000"
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksSignalInfo.4866, %object
	.size	rt_ToWksSignalInfo.4866, 76
rt_ToWksSignalInfo.4866:
	.word	1
	.word	rt_ToWksWidths.4855
	.word	rt_ToWksNumDimensions.4856
	.word	rt_ToWksDimensions.4857
	.word	rt_ToWksIsVarDims.4858
	.word	rt_ToWksCurrSigDims.4859
	.word	rt_ToWksCurrSigDimsSize.4860
	.word	rt_ToWksDataTypeIds.4861
	.word	rt_ToWksComplexSignals.4862
	.word	rt_ToWksFrameData.4863
	.word	rt_ToWksLoggingPreprocessingFcnPtrs.4864
	.word	rt_ToWksLabels.4865
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.rodata
	.align	2
	.type	rt_ToWksBlockName.4867, %object
	.size	rt_ToWksBlockName.4867, 110
rt_ToWksBlockName.4867:
	.ascii	"parrot_gettingstarted/Flight_Control_System/Kalman "
	.ascii	"Filter: Altitude and Vertical Speed Estimate/To Wor"
	.ascii	"kspace1\000"
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksSignalInfo.4879, %object
	.size	rt_ToWksSignalInfo.4879, 76
rt_ToWksSignalInfo.4879:
	.word	1
	.word	rt_ToWksWidths.4868
	.word	rt_ToWksNumDimensions.4869
	.word	rt_ToWksDimensions.4870
	.word	rt_ToWksIsVarDims.4871
	.word	rt_ToWksCurrSigDims.4872
	.word	rt_ToWksCurrSigDimsSize.4873
	.word	rt_ToWksDataTypeIds.4874
	.word	rt_ToWksComplexSignals.4875
	.word	rt_ToWksFrameData.4876
	.word	rt_ToWksLoggingPreprocessingFcnPtrs.4877
	.word	rt_ToWksLabels.4878
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.rodata
	.align	2
	.type	rt_ToWksBlockName.4880, %object
	.size	rt_ToWksBlockName.4880, 76
rt_ToWksBlockName.4880:
	.ascii	"parrot_gettingstarted/Flight_Control_System/Kalman "
	.ascii	"Filter: Phi/To Workspace\000"
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksSignalInfo.4892, %object
	.size	rt_ToWksSignalInfo.4892, 76
rt_ToWksSignalInfo.4892:
	.word	1
	.word	rt_ToWksWidths.4881
	.word	rt_ToWksNumDimensions.4882
	.word	rt_ToWksDimensions.4883
	.word	rt_ToWksIsVarDims.4884
	.word	rt_ToWksCurrSigDims.4885
	.word	rt_ToWksCurrSigDimsSize.4886
	.word	rt_ToWksDataTypeIds.4887
	.word	rt_ToWksComplexSignals.4888
	.word	rt_ToWksFrameData.4889
	.word	rt_ToWksLoggingPreprocessingFcnPtrs.4890
	.word	rt_ToWksLabels.4891
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.rodata
	.align	2
	.type	rt_ToWksBlockName.4893, %object
	.size	rt_ToWksBlockName.4893, 78
rt_ToWksBlockName.4893:
	.ascii	"parrot_gettingstarted/Flight_Control_System/Kalman "
	.ascii	"Filter: Theta/To Workspace\000"
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksSignalInfo.4905, %object
	.size	rt_ToWksSignalInfo.4905, 76
rt_ToWksSignalInfo.4905:
	.word	1
	.word	rt_ToWksWidths.4894
	.word	rt_ToWksNumDimensions.4895
	.word	rt_ToWksDimensions.4896
	.word	rt_ToWksIsVarDims.4897
	.word	rt_ToWksCurrSigDims.4898
	.word	rt_ToWksCurrSigDimsSize.4899
	.word	rt_ToWksDataTypeIds.4900
	.word	rt_ToWksComplexSignals.4901
	.word	rt_ToWksFrameData.4902
	.word	rt_ToWksLoggingPreprocessingFcnPtrs.4903
	.word	rt_ToWksLabels.4904
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.rodata
	.align	2
	.type	rt_ToWksBlockName.4906, %object
	.size	rt_ToWksBlockName.4906, 74
rt_ToWksBlockName.4906:
	.ascii	"parrot_gettingstarted/Flight_Control_System/Kalman "
	.ascii	"Filter: U/To Workspace\000"
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksSignalInfo.4918, %object
	.size	rt_ToWksSignalInfo.4918, 76
rt_ToWksSignalInfo.4918:
	.word	1
	.word	rt_ToWksWidths.4907
	.word	rt_ToWksNumDimensions.4908
	.word	rt_ToWksDimensions.4909
	.word	rt_ToWksIsVarDims.4910
	.word	rt_ToWksCurrSigDims.4911
	.word	rt_ToWksCurrSigDimsSize.4912
	.word	rt_ToWksDataTypeIds.4913
	.word	rt_ToWksComplexSignals.4914
	.word	rt_ToWksFrameData.4915
	.word	rt_ToWksLoggingPreprocessingFcnPtrs.4916
	.word	rt_ToWksLabels.4917
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.rodata
	.align	2
	.type	rt_ToWksBlockName.4919, %object
	.size	rt_ToWksBlockName.4919, 78
rt_ToWksBlockName.4919:
	.ascii	"parrot_gettingstarted/Flight_Control_System/Kalman "
	.ascii	"Filter: V_est/To Workspace\000"
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksSignalInfo.4931, %object
	.size	rt_ToWksSignalInfo.4931, 76
rt_ToWksSignalInfo.4931:
	.word	1
	.word	rt_ToWksWidths.4920
	.word	rt_ToWksNumDimensions.4921
	.word	rt_ToWksDimensions.4922
	.word	rt_ToWksIsVarDims.4923
	.word	rt_ToWksCurrSigDims.4924
	.word	rt_ToWksCurrSigDimsSize.4925
	.word	rt_ToWksDataTypeIds.4926
	.word	rt_ToWksComplexSignals.4927
	.word	rt_ToWksFrameData.4928
	.word	rt_ToWksLoggingPreprocessingFcnPtrs.4929
	.word	rt_ToWksLabels.4930
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.rodata
	.align	2
	.type	rt_ToWksBlockName.4932, %object
	.size	rt_ToWksBlockName.4932, 58
rt_ToWksBlockName.4932:
	.ascii	"parrot_gettingstarted/Flight_Control_System/To Work"
	.ascii	"space2\000"
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksSignalInfo.4944, %object
	.size	rt_ToWksSignalInfo.4944, 76
rt_ToWksSignalInfo.4944:
	.word	1
	.word	rt_ToWksWidths.4933
	.word	rt_ToWksNumDimensions.4934
	.word	rt_ToWksDimensions.4935
	.word	rt_ToWksIsVarDims.4936
	.word	rt_ToWksCurrSigDims.4937
	.word	rt_ToWksCurrSigDimsSize.4938
	.word	rt_ToWksDataTypeIds.4939
	.word	rt_ToWksComplexSignals.4940
	.word	rt_ToWksFrameData.4941
	.word	rt_ToWksLoggingPreprocessingFcnPtrs.4942
	.word	rt_ToWksLabels.4943
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.rodata
	.align	2
	.type	rt_ToWksBlockName.4945, %object
	.size	rt_ToWksBlockName.4945, 74
rt_ToWksBlockName.4945:
	.ascii	"parrot_gettingstarted/Flight_Control_System/Thrust "
	.ascii	"Regulator/To Workspace\000"
	.align	2
.LC13:
	.ascii	"Thrust\000"
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksLabels.4943, %object
	.size	rt_ToWksLabels.4943, 4
rt_ToWksLabels.4943:
	.word	.LC13
	.local	rt_ToWksLoggingPreprocessingFcnPtrs.4942
	.comm	rt_ToWksLoggingPreprocessingFcnPtrs.4942,4,4
	.local	rt_ToWksFrameData.4941
	.comm	rt_ToWksFrameData.4941,4,4
	.local	rt_ToWksComplexSignals.4940
	.comm	rt_ToWksComplexSignals.4940,4,4
	.local	rt_ToWksDataTypeIds.4939
	.comm	rt_ToWksDataTypeIds.4939,4,4
	.data
	.align	2
	.type	rt_ToWksCurrSigDimsSize.4938, %object
	.size	rt_ToWksCurrSigDimsSize.4938, 4
rt_ToWksCurrSigDimsSize.4938:
	.word	4
	.local	rt_ToWksCurrSigDims.4937
	.comm	rt_ToWksCurrSigDims.4937,4,4
	.local	rt_ToWksIsVarDims.4936
	.comm	rt_ToWksIsVarDims.4936,1,4
	.align	2
	.type	rt_ToWksDimensions.4935, %object
	.size	rt_ToWksDimensions.4935, 4
rt_ToWksDimensions.4935:
	.word	1
	.align	2
	.type	rt_ToWksNumDimensions.4934, %object
	.size	rt_ToWksNumDimensions.4934, 4
rt_ToWksNumDimensions.4934:
	.word	1
	.align	2
	.type	rt_ToWksWidths.4933, %object
	.size	rt_ToWksWidths.4933, 4
rt_ToWksWidths.4933:
	.word	1
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksLabels.4930, %object
	.size	rt_ToWksLabels.4930, 4
rt_ToWksLabels.4930:
	.word	.LC2
	.local	rt_ToWksLoggingPreprocessingFcnPtrs.4929
	.comm	rt_ToWksLoggingPreprocessingFcnPtrs.4929,4,4
	.local	rt_ToWksFrameData.4928
	.comm	rt_ToWksFrameData.4928,4,4
	.local	rt_ToWksComplexSignals.4927
	.comm	rt_ToWksComplexSignals.4927,4,4
	.local	rt_ToWksDataTypeIds.4926
	.comm	rt_ToWksDataTypeIds.4926,4,4
	.data
	.align	2
	.type	rt_ToWksCurrSigDimsSize.4925, %object
	.size	rt_ToWksCurrSigDimsSize.4925, 4
rt_ToWksCurrSigDimsSize.4925:
	.word	4
	.local	rt_ToWksCurrSigDims.4924
	.comm	rt_ToWksCurrSigDims.4924,4,4
	.local	rt_ToWksIsVarDims.4923
	.comm	rt_ToWksIsVarDims.4923,1,4
	.align	2
	.type	rt_ToWksDimensions.4922, %object
	.size	rt_ToWksDimensions.4922, 4
rt_ToWksDimensions.4922:
	.word	4
	.align	2
	.type	rt_ToWksNumDimensions.4921, %object
	.size	rt_ToWksNumDimensions.4921, 4
rt_ToWksNumDimensions.4921:
	.word	1
	.align	2
	.type	rt_ToWksWidths.4920, %object
	.size	rt_ToWksWidths.4920, 4
rt_ToWksWidths.4920:
	.word	4
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksLabels.4917, %object
	.size	rt_ToWksLabels.4917, 4
rt_ToWksLabels.4917:
	.word	.LC2
	.local	rt_ToWksLoggingPreprocessingFcnPtrs.4916
	.comm	rt_ToWksLoggingPreprocessingFcnPtrs.4916,4,4
	.local	rt_ToWksFrameData.4915
	.comm	rt_ToWksFrameData.4915,4,4
	.local	rt_ToWksComplexSignals.4914
	.comm	rt_ToWksComplexSignals.4914,4,4
	.data
	.align	2
	.type	rt_ToWksDataTypeIds.4913, %object
	.size	rt_ToWksDataTypeIds.4913, 4
rt_ToWksDataTypeIds.4913:
	.word	1
	.align	2
	.type	rt_ToWksCurrSigDimsSize.4912, %object
	.size	rt_ToWksCurrSigDimsSize.4912, 4
rt_ToWksCurrSigDimsSize.4912:
	.word	4
	.local	rt_ToWksCurrSigDims.4911
	.comm	rt_ToWksCurrSigDims.4911,4,4
	.local	rt_ToWksIsVarDims.4910
	.comm	rt_ToWksIsVarDims.4910,1,4
	.align	2
	.type	rt_ToWksDimensions.4909, %object
	.size	rt_ToWksDimensions.4909, 4
rt_ToWksDimensions.4909:
	.word	1
	.align	2
	.type	rt_ToWksNumDimensions.4908, %object
	.size	rt_ToWksNumDimensions.4908, 4
rt_ToWksNumDimensions.4908:
	.word	1
	.align	2
	.type	rt_ToWksWidths.4907, %object
	.size	rt_ToWksWidths.4907, 4
rt_ToWksWidths.4907:
	.word	1
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksLabels.4904, %object
	.size	rt_ToWksLabels.4904, 4
rt_ToWksLabels.4904:
	.word	.LC2
	.local	rt_ToWksLoggingPreprocessingFcnPtrs.4903
	.comm	rt_ToWksLoggingPreprocessingFcnPtrs.4903,4,4
	.local	rt_ToWksFrameData.4902
	.comm	rt_ToWksFrameData.4902,4,4
	.local	rt_ToWksComplexSignals.4901
	.comm	rt_ToWksComplexSignals.4901,4,4
	.data
	.align	2
	.type	rt_ToWksDataTypeIds.4900, %object
	.size	rt_ToWksDataTypeIds.4900, 4
rt_ToWksDataTypeIds.4900:
	.word	1
	.align	2
	.type	rt_ToWksCurrSigDimsSize.4899, %object
	.size	rt_ToWksCurrSigDimsSize.4899, 4
rt_ToWksCurrSigDimsSize.4899:
	.word	4
	.local	rt_ToWksCurrSigDims.4898
	.comm	rt_ToWksCurrSigDims.4898,4,4
	.local	rt_ToWksIsVarDims.4897
	.comm	rt_ToWksIsVarDims.4897,1,4
	.align	2
	.type	rt_ToWksDimensions.4896, %object
	.size	rt_ToWksDimensions.4896, 4
rt_ToWksDimensions.4896:
	.word	1
	.align	2
	.type	rt_ToWksNumDimensions.4895, %object
	.size	rt_ToWksNumDimensions.4895, 4
rt_ToWksNumDimensions.4895:
	.word	1
	.align	2
	.type	rt_ToWksWidths.4894, %object
	.size	rt_ToWksWidths.4894, 4
rt_ToWksWidths.4894:
	.word	1
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksLabels.4891, %object
	.size	rt_ToWksLabels.4891, 4
rt_ToWksLabels.4891:
	.word	.LC2
	.local	rt_ToWksLoggingPreprocessingFcnPtrs.4890
	.comm	rt_ToWksLoggingPreprocessingFcnPtrs.4890,4,4
	.local	rt_ToWksFrameData.4889
	.comm	rt_ToWksFrameData.4889,4,4
	.local	rt_ToWksComplexSignals.4888
	.comm	rt_ToWksComplexSignals.4888,4,4
	.data
	.align	2
	.type	rt_ToWksDataTypeIds.4887, %object
	.size	rt_ToWksDataTypeIds.4887, 4
rt_ToWksDataTypeIds.4887:
	.word	1
	.align	2
	.type	rt_ToWksCurrSigDimsSize.4886, %object
	.size	rt_ToWksCurrSigDimsSize.4886, 4
rt_ToWksCurrSigDimsSize.4886:
	.word	4
	.local	rt_ToWksCurrSigDims.4885
	.comm	rt_ToWksCurrSigDims.4885,4,4
	.local	rt_ToWksIsVarDims.4884
	.comm	rt_ToWksIsVarDims.4884,1,4
	.align	2
	.type	rt_ToWksDimensions.4883, %object
	.size	rt_ToWksDimensions.4883, 4
rt_ToWksDimensions.4883:
	.word	1
	.align	2
	.type	rt_ToWksNumDimensions.4882, %object
	.size	rt_ToWksNumDimensions.4882, 4
rt_ToWksNumDimensions.4882:
	.word	1
	.align	2
	.type	rt_ToWksWidths.4881, %object
	.size	rt_ToWksWidths.4881, 4
rt_ToWksWidths.4881:
	.word	1
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksLabels.4878, %object
	.size	rt_ToWksLabels.4878, 4
rt_ToWksLabels.4878:
	.word	.LC2
	.local	rt_ToWksLoggingPreprocessingFcnPtrs.4877
	.comm	rt_ToWksLoggingPreprocessingFcnPtrs.4877,4,4
	.local	rt_ToWksFrameData.4876
	.comm	rt_ToWksFrameData.4876,4,4
	.local	rt_ToWksComplexSignals.4875
	.comm	rt_ToWksComplexSignals.4875,4,4
	.data
	.align	2
	.type	rt_ToWksDataTypeIds.4874, %object
	.size	rt_ToWksDataTypeIds.4874, 4
rt_ToWksDataTypeIds.4874:
	.word	1
	.align	2
	.type	rt_ToWksCurrSigDimsSize.4873, %object
	.size	rt_ToWksCurrSigDimsSize.4873, 4
rt_ToWksCurrSigDimsSize.4873:
	.word	4
	.local	rt_ToWksCurrSigDims.4872
	.comm	rt_ToWksCurrSigDims.4872,4,4
	.local	rt_ToWksIsVarDims.4871
	.comm	rt_ToWksIsVarDims.4871,1,4
	.align	2
	.type	rt_ToWksDimensions.4870, %object
	.size	rt_ToWksDimensions.4870, 4
rt_ToWksDimensions.4870:
	.word	1
	.align	2
	.type	rt_ToWksNumDimensions.4869, %object
	.size	rt_ToWksNumDimensions.4869, 4
rt_ToWksNumDimensions.4869:
	.word	1
	.align	2
	.type	rt_ToWksWidths.4868, %object
	.size	rt_ToWksWidths.4868, 4
rt_ToWksWidths.4868:
	.word	1
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksLabels.4865, %object
	.size	rt_ToWksLabels.4865, 4
rt_ToWksLabels.4865:
	.word	.LC2
	.local	rt_ToWksLoggingPreprocessingFcnPtrs.4864
	.comm	rt_ToWksLoggingPreprocessingFcnPtrs.4864,4,4
	.local	rt_ToWksFrameData.4863
	.comm	rt_ToWksFrameData.4863,4,4
	.local	rt_ToWksComplexSignals.4862
	.comm	rt_ToWksComplexSignals.4862,4,4
	.data
	.align	2
	.type	rt_ToWksDataTypeIds.4861, %object
	.size	rt_ToWksDataTypeIds.4861, 4
rt_ToWksDataTypeIds.4861:
	.word	1
	.align	2
	.type	rt_ToWksCurrSigDimsSize.4860, %object
	.size	rt_ToWksCurrSigDimsSize.4860, 4
rt_ToWksCurrSigDimsSize.4860:
	.word	4
	.local	rt_ToWksCurrSigDims.4859
	.comm	rt_ToWksCurrSigDims.4859,4,4
	.local	rt_ToWksIsVarDims.4858
	.comm	rt_ToWksIsVarDims.4858,1,4
	.align	2
	.type	rt_ToWksDimensions.4857, %object
	.size	rt_ToWksDimensions.4857, 4
rt_ToWksDimensions.4857:
	.word	1
	.align	2
	.type	rt_ToWksNumDimensions.4856, %object
	.size	rt_ToWksNumDimensions.4856, 4
rt_ToWksNumDimensions.4856:
	.word	1
	.align	2
	.type	rt_ToWksWidths.4855, %object
	.size	rt_ToWksWidths.4855, 4
rt_ToWksWidths.4855:
	.word	1
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksLabels.4852, %object
	.size	rt_ToWksLabels.4852, 4
rt_ToWksLabels.4852:
	.word	.LC2
	.local	rt_ToWksLoggingPreprocessingFcnPtrs.4851
	.comm	rt_ToWksLoggingPreprocessingFcnPtrs.4851,4,4
	.local	rt_ToWksFrameData.4850
	.comm	rt_ToWksFrameData.4850,4,4
	.local	rt_ToWksComplexSignals.4849
	.comm	rt_ToWksComplexSignals.4849,4,4
	.data
	.align	2
	.type	rt_ToWksDataTypeIds.4848, %object
	.size	rt_ToWksDataTypeIds.4848, 4
rt_ToWksDataTypeIds.4848:
	.word	1
	.align	2
	.type	rt_ToWksCurrSigDimsSize.4847, %object
	.size	rt_ToWksCurrSigDimsSize.4847, 4
rt_ToWksCurrSigDimsSize.4847:
	.word	4
	.local	rt_ToWksCurrSigDims.4846
	.comm	rt_ToWksCurrSigDims.4846,4,4
	.local	rt_ToWksIsVarDims.4845
	.comm	rt_ToWksIsVarDims.4845,1,4
	.align	2
	.type	rt_ToWksDimensions.4844, %object
	.size	rt_ToWksDimensions.4844, 4
rt_ToWksDimensions.4844:
	.word	1
	.align	2
	.type	rt_ToWksNumDimensions.4843, %object
	.size	rt_ToWksNumDimensions.4843, 4
rt_ToWksNumDimensions.4843:
	.word	1
	.align	2
	.type	rt_ToWksWidths.4842, %object
	.size	rt_ToWksWidths.4842, 4
rt_ToWksWidths.4842:
	.word	1
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksLabels.4839, %object
	.size	rt_ToWksLabels.4839, 4
rt_ToWksLabels.4839:
	.word	.LC2
	.local	rt_ToWksLoggingPreprocessingFcnPtrs.4838
	.comm	rt_ToWksLoggingPreprocessingFcnPtrs.4838,4,4
	.local	rt_ToWksFrameData.4837
	.comm	rt_ToWksFrameData.4837,4,4
	.local	rt_ToWksComplexSignals.4836
	.comm	rt_ToWksComplexSignals.4836,4,4
	.local	rt_ToWksDataTypeIds.4835
	.comm	rt_ToWksDataTypeIds.4835,4,4
	.data
	.align	2
	.type	rt_ToWksCurrSigDimsSize.4834, %object
	.size	rt_ToWksCurrSigDimsSize.4834, 4
rt_ToWksCurrSigDimsSize.4834:
	.word	4
	.local	rt_ToWksCurrSigDims.4833
	.comm	rt_ToWksCurrSigDims.4833,4,4
	.local	rt_ToWksIsVarDims.4832
	.comm	rt_ToWksIsVarDims.4832,1,4
	.align	2
	.type	rt_ToWksDimensions.4831, %object
	.size	rt_ToWksDimensions.4831, 4
rt_ToWksDimensions.4831:
	.word	4
	.align	2
	.type	rt_ToWksNumDimensions.4830, %object
	.size	rt_ToWksNumDimensions.4830, 4
rt_ToWksNumDimensions.4830:
	.word	1
	.align	2
	.type	rt_ToWksWidths.4829, %object
	.size	rt_ToWksWidths.4829, 4
rt_ToWksWidths.4829:
	.word	4
	.ident	"GCC: (Sourcery G++ Lite 2009q3-67) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
