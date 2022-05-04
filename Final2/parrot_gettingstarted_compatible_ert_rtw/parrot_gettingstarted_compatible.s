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
	.file	"parrot_gettingstarted_compatible.c"
	.comm	cmd_inport,36,4
	.comm	sensor_inport,2496,8
	.comm	motors_outport,16,4
	.comm	flag_outport,1,1
	.comm	parrot_gettingstarted_compati_B,360,8
	.comm	parrot_gettingstarted_compat_DW,96,8
	.comm	parrot_gettingstarted_compati_Y,20,4
	.local	parrot_gettingstarted_compat_M_
	.comm	parrot_gettingstarted_compat_M_,48,8
	.global	parrot_gettingstarted_compat_M
	.section	.data.rel.ro.local,"aw",%progbits
	.align	2
	.type	parrot_gettingstarted_compat_M, %object
	.size	parrot_gettingstarted_compat_M, 4
parrot_gettingstarted_compat_M:
	.word	parrot_gettingstarted_compat_M_
	.text
	.align	2
	.global	parrot_ge_EnabledSubsystem_Init
	.type	parrot_ge_EnabledSubsystem_Init, %function
parrot_ge_EnabledSubsystem_Init:
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
	ldr	r3, [fp, #-12]
	ldrd	r2, [r3]
	ldr	r1, [fp, #-8]
	strd	r2, [r1, #8]
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.LFE0:
	.fnend
	.size	parrot_ge_EnabledSubsystem_Init, .-parrot_ge_EnabledSubsystem_Init
	.align	2
	.global	parrot_EnabledSubsystem_Disable
	.type	parrot_EnabledSubsystem_Disable, %function
parrot_EnabledSubsystem_Disable:
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
	ldr	r3, [fp, #-16]
	ldrd	r2, [r3]
	ldr	r1, [fp, #-8]
	strd	r2, [r1, #8]
	ldr	r3, [fp, #-12]
	mov	r2, #0
	strb	r2, [r3, #0]
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.LFE1:
	.fnend
	.size	parrot_EnabledSubsystem_Disable, .-parrot_EnabledSubsystem_Disable
	.align	2
	.global	parrot_g_EnabledSubsystem_Start
	.type	parrot_g_EnabledSubsystem_Start, %function
parrot_g_EnabledSubsystem_Start:
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
	.size	parrot_g_EnabledSubsystem_Start, .-parrot_g_EnabledSubsystem_Start
	.global	__aeabi_dmul
	.global	__aeabi_dadd
	.global	__aeabi_dsub
	.align	2
	.global	parrot_getting_EnabledSubsystem
	.type	parrot_getting_EnabledSubsystem, %function
parrot_getting_EnabledSubsystem:
	.fnstart
.LFB3:
	@ args = 24, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, fp, lr}
	.save {r4, r5, fp, lr}
.LCFI9:
	.setfp fp, sp, #12
	add	fp, sp, #12
.LCFI10:
	.pad #24
	sub	sp, sp, #24
.LCFI11:
	mov	r3, r0
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	strb	r3, [fp, #-21]
	ldrb	r3, [fp, #-21]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L8
	ldr	r3, [fp, #20]
	mov	r2, #1
	strb	r2, [r3, #0]
	ldr	r3, [fp, #-32]
	ldrd	r0, [r3]
	ldr	r3, [fp, #12]
	ldrd	r2, [r3]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r4, r2
	mov	r5, r3
	ldr	r3, [fp, #-32]
	add	r3, r3, #8
	ldrd	r0, [r3]
	ldr	r3, [fp, #12]
	add	r3, r3, #8
	ldrd	r2, [r3]
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
	strd	r2, [fp, #-20]
	ldr	r3, [fp, #-28]
	ldrd	r2, [r3]
	mov	r0, r2
	mov	r1, r3
	ldrd	r2, [fp, #-20]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, [fp, #16]
	strd	r2, [r1]
	ldr	r3, [fp, #-28]
	add	r3, r3, #8
	ldrd	r2, [r3]
	mov	r0, r2
	mov	r1, r3
	ldrd	r2, [fp, #-20]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, [fp, #16]
	strd	r2, [r1, #8]
	b	.L10
.L8:
	ldr	r3, [fp, #20]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L10
	ldr	r0, [fp, #16]
	ldr	r1, [fp, #20]
	ldr	r2, [fp, #24]
	bl	parrot_EnabledSubsystem_Disable(PLT)
.L10:
	sub	sp, fp, #12
	ldmfd	sp!, {r4, r5, fp, pc}
.LFE3:
	.fnend
	.size	parrot_getting_EnabledSubsystem, .-parrot_getting_EnabledSubsystem
	.align	2
	.global	parrot_g_MeasurementUpdate_Init
	.type	parrot_g_MeasurementUpdate_Init, %function
parrot_g_MeasurementUpdate_Init:
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
	ldr	r3, [fp, #-12]
	ldrd	r2, [r3]
	ldr	r1, [fp, #-8]
	strd	r2, [r1, #8]
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.LFE4:
	.fnend
	.size	parrot_g_MeasurementUpdate_Init, .-parrot_g_MeasurementUpdate_Init
	.align	2
	.global	parro_MeasurementUpdate_Disable
	.type	parro_MeasurementUpdate_Disable, %function
parro_MeasurementUpdate_Disable:
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
	ldr	r3, [fp, #-16]
	ldrd	r2, [r3]
	ldr	r1, [fp, #-8]
	strd	r2, [r1, #8]
	ldr	r3, [fp, #-12]
	mov	r2, #0
	strb	r2, [r3, #0]
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.LFE5:
	.fnend
	.size	parro_MeasurementUpdate_Disable, .-parro_MeasurementUpdate_Disable
	.align	2
	.global	parrot__MeasurementUpdate_Start
	.type	parrot__MeasurementUpdate_Start, %function
parrot__MeasurementUpdate_Start:
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
	.size	parrot__MeasurementUpdate_Start, .-parrot__MeasurementUpdate_Start
	.align	2
	.global	parrot_gettin_MeasurementUpdate
	.type	parrot_gettin_MeasurementUpdate, %function
parrot_gettin_MeasurementUpdate:
	.fnstart
.LFB7:
	@ args = 28, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, fp, lr}
	.save {r4, r5, r6, r7, fp, lr}
.LCFI21:
	.setfp fp, sp, #20
	add	fp, sp, #20
.LCFI22:
	.pad #24
	sub	sp, sp, #24
.LCFI23:
	str	r1, [fp, #-36]
	strd	r2, [fp, #-44]
	mov	r3, r0
	strb	r3, [fp, #-29]
	ldrb	r3, [fp, #-29]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L18
	ldr	r3, [fp, #24]
	mov	r2, #1
	strb	r2, [r3, #0]
	ldr	r3, [fp, #4]
	ldrd	r0, [r3]
	ldr	r3, [fp, #8]
	ldrd	r2, [r3]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r4, r2
	mov	r5, r3
	ldr	r3, [fp, #4]
	add	r3, r3, #8
	ldrd	r0, [r3]
	ldr	r3, [fp, #8]
	add	r3, r3, #8
	ldrd	r2, [r3]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r4, r2
	mov	r5, r3
	ldr	r3, [fp, #12]
	ldrd	r0, [r3]
	ldr	r3, [fp, #16]
	ldrd	r2, [r3]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r6, r2
	mov	r7, r3
	ldr	r3, [fp, #12]
	add	r3, r3, #8
	ldrd	r0, [r3]
	ldr	r3, [fp, #16]
	add	r3, r3, #8
	ldrd	r2, [r3]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	ldrd	r0, [fp, #-44]
	bl	__aeabi_dsub(PLT)
	mov	r2, r0
	mov	r3, r1
	strd	r2, [fp, #-28]
	ldr	r3, [fp, #-36]
	ldrd	r2, [r3]
	mov	r0, r2
	mov	r1, r3
	ldrd	r2, [fp, #-28]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, [fp, #20]
	strd	r2, [r1]
	ldr	r3, [fp, #-36]
	add	r3, r3, #8
	ldrd	r2, [r3]
	mov	r0, r2
	mov	r1, r3
	ldrd	r2, [fp, #-28]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, [fp, #20]
	strd	r2, [r1, #8]
	b	.L20
.L18:
	ldr	r3, [fp, #24]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L20
	ldr	r0, [fp, #20]
	ldr	r1, [fp, #24]
	ldr	r2, [fp, #28]
	bl	parro_MeasurementUpdate_Disable(PLT)
.L20:
	sub	sp, fp, #20
	ldmfd	sp!, {r4, r5, r6, r7, fp, pc}
.LFE7:
	.fnend
	.size	parrot_gettin_MeasurementUpdate, .-parrot_gettin_MeasurementUpdate
	.global	__aeabi_fdiv
	.global	__aeabi_f2d
	.global	__aeabi_d2f
	.global	__aeabi_fmul
	.align	2
	.global	parrot_gettings_MATLABFunction1
	.type	parrot_gettings_MATLABFunction1, %function
parrot_gettings_MATLABFunction1:
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
	.size	parrot_gettings_MATLABFunction1, .-parrot_gettings_MATLABFunction1
	.global	__aeabi_ddiv
	.global	__aeabi_fadd
	.global	__aeabi_dcmplt
	.global	__aeabi_dcmpgt
	.global	__aeabi_dcmpeq
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Simulation finished\000"
	.global	__aeabi_ui2d
	.text
	.align	2
	.global	parrot_gettingstarted_compatible_step
	.type	parrot_gettingstarted_compatible_step, %function
parrot_gettingstarted_compatible_step:
	.fnstart
.LFB9:
	@ args = 0, pretend = 0, frame = 128
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, fp, lr}
	.save {r4, r5, r6, r7, r8, r9, fp, lr}
.LCFI27:
	.setfp fp, sp, #28
	add	fp, sp, #28
.LCFI28:
	.pad #160
	sub	sp, sp, #160
.LCFI29:
	ldr	r4, .L74
.LPIC0:
	add	r4, pc, r4
	ldr	r3, .L74+24
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #728]	@ float
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, .L74+20
	ldr	r1, [r4, r1]
	strd	r2, [r1, #192]
	ldr	r3, .L74+24
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #732]	@ float
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, .L74+20
	ldr	r1, [r4, r1]
	strd	r2, [r1, #200]
	ldr	r3, .L74+12
	ldr	r3, [r4, r3]
	ldrb	r3, [r3, #84]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L26
	ldr	r3, .L74+24
	ldr	r2, [r4, r3]
	mov	r3, #288
	add	r3, r3, r2
	ldrd	r2, [r3]
	ldr	r1, .L74+12
	ldr	r1, [r4, r1]
	strd	r2, [r1]
	ldr	r3, .L74+24
	ldr	r2, [r4, r3]
	mov	r3, #296
	add	r3, r3, r2
	ldrd	r2, [r3]
	ldr	r1, .L74+12
	ldr	r1, [r4, r1]
	strd	r2, [r1, #8]
.L26:
	ldr	r3, .L74+24
	ldr	r3, [r4, r3]
	ldrb	r5, [r3, #804]	@ zero_extendqisi2
	ldr	r3, .L74+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #416]	@ float
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	mov	r2, r0
	mov	r3, r1
	strd	r2, [sp]
	ldr	r3, .L74+12
	ldr	r3, [r4, r3]
	str	r3, [sp, #8]
	ldr	r3, .L74+20
	ldr	r3, [r4, r3]
	add	r3, r3, #344
	str	r3, [sp, #12]
	ldr	r3, .L74+12
	ldr	r3, [r4, r3]
	add	r3, r3, #92
	str	r3, [sp, #16]
	ldr	r3, .L74+24
	ldr	r3, [r4, r3]
	add	r3, r3, #848
	str	r3, [sp, #20]
	mov	r0, r5
	ldr	r3, .L74+20
	ldr	r3, [r4, r3]
	add	r1, r3, #192
	ldr	r3, .L74+24
	ldr	r3, [r4, r3]
	add	r2, r3, #272
	bl	parrot_getting_EnabledSubsystem(PLT)
	ldr	r3, .L74+20
	ldr	r2, [r4, r3]
	mov	r3, #344
	ldrd	r0, [r2, r3]
	ldr	r3, .L74+12
	ldr	r3, [r4, r3]
	ldrd	r2, [r3]
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, .L74+20
	ldr	r1, [r4, r1]
	strd	r2, [r1, #192]
	ldr	r3, .L74+20
	ldr	r2, [r4, r3]
	mov	r3, #352
	ldrd	r0, [r2, r3]
	ldr	r3, .L74+12
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #8]
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, .L74+20
	ldr	r1, [r4, r1]
	strd	r2, [r1, #200]
	ldr	r3, .L74+20
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #192]
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f(PLT)
	mov	r2, r0
	ldr	r3, .L74+20
	ldr	r3, [r4, r3]
	str	r2, [r3, #256]	@ float
	ldr	r3, .L74+20
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #200]
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f(PLT)
	mov	r2, r0
	ldr	r3, .L74+20
	ldr	r3, [r4, r3]
	str	r2, [r3, #260]	@ float
	ldr	r3, .L74+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #60]	@ float
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, .L74+20
	ldr	r1, [r4, r1]
	strd	r2, [r1, #232]
	ldr	r3, .L74+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #56]	@ float
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	ldr	r3, .L74+20
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #232]
	bl	__aeabi_ddiv(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	atan(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, .L74+20
	ldr	r1, [r4, r1]
	strd	r2, [r1, #240]
	ldr	r3, .L74+24
	ldr	r3, [r4, r3]
	ldr	r2, [r3, #736]	@ float
	ldr	r3, .L74+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #52]	@ float
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_fmul(PLT)
	mov	r3, r0
	mov	r5, r3
	ldr	r3, .L74+16
	ldr	r3, [r4, r3]
	ldr	r2, [r3, #56]	@ float
	ldr	r3, .L74+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #56]	@ float
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_fmul(PLT)
	mov	r3, r0
	mov	r8, r3
	ldr	r3, .L74+16
	ldr	r3, [r4, r3]
	ldr	r2, [r3, #60]	@ float
	ldr	r3, .L74+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #60]	@ float
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_fmul(PLT)
	mov	r3, r0
	mov	r0, r8
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
	ldr	r3, .L74+20
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #240]
	mov	r0, r2
	mov	r1, r3
	bl	sin(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, .L74+20
	ldr	r1, [r4, r1]
	strd	r2, [r1, #248]
	ldr	r3, .L74+20
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #240]
	mov	r0, r2
	mov	r1, r3
	bl	cos(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, .L74+20
	ldr	r1, [r4, r1]
	strd	r2, [r1, #232]
	ldr	r3, .L74+20
	ldr	r1, [r4, r3]
	mov	r2, #0
	mov	r3, #0
	strd	r2, [r1, #8]
	ldr	r3, .L74+20
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #232]
	ldr	r1, .L74+20
	ldr	r1, [r4, r1]
	strd	r2, [r1, #32]
	ldr	r3, .L74+20
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #248]
	ldr	r1, .L74+20
	ldr	r1, [r4, r1]
	strd	r2, [r1, #56]
	ldr	r3, .L74+20
	ldr	r1, [r4, r3]
	mov	r2, #0
	mov	r3, #0
	strd	r2, [r1, #16]
	ldr	r3, .L74+20
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #248]
	mov	r6, r2
	eor	r7, r3, #-2147483648
	ldr	r3, .L74+20
	ldr	r3, [r4, r3]
	strd	r6, [r3, #40]
	ldr	r3, .L74+20
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #232]
	ldr	r1, .L74+20
	ldr	r1, [r4, r1]
	strd	r2, [r1, #64]
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
	str	r3, [fp, #-80]	@ float
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
	str	r3, [fp, #-36]	@ float
	ldr	r3, .L74+20
	ldr	r3, [r4, r3]
	ldr	r2, [fp, #-36]	@ float
	str	r2, [r3, #108]	@ float
	ldr	r3, .L74+20
	ldr	r3, [r4, r3]
	ldr	r2, .L74+4	@ float
	str	r2, [r3, #120]	@ float
	ldr	r3, [fp, #-80]	@ float
	eor	r2, r3, #-2147483648
	ldr	r3, .L74+20
	ldr	r3, [r4, r3]
	str	r2, [r3, #132]	@ float
	ldr	r3, .L74+20
	ldr	r1, [r4, r3]
	mov	r2, #0
	mov	r3, #1069547520
	add	r3, r3, #3145728
	strd	r2, [r1]
	ldr	r3, .L74+20
	ldr	r3, [r4, r3]
	ldr	r2, .L74+4	@ float
	str	r2, [r3, #112]	@ float
	ldr	r3, .L74+20
	ldr	r1, [r4, r3]
	mov	r2, #0
	mov	r3, #0
	strd	r2, [r1, #24]
	ldr	r3, .L74+20
	ldr	r3, [r4, r3]
	ldr	r2, .L74+8	@ float
	str	r2, [r3, #124]	@ float
	ldr	r3, .L74+20
	ldr	r1, [r4, r3]
	mov	r2, #0
	mov	r3, #0
	strd	r2, [r1, #48]
	ldr	r3, .L74+20
	ldr	r3, [r4, r3]
	ldr	r2, .L74+4	@ float
	str	r2, [r3, #136]	@ float
	ldr	r2, [fp, #-80]	@ float
	ldr	r3, .L74+20
	ldr	r3, [r4, r3]
	str	r2, [r3, #116]	@ float
	ldr	r3, .L74+20
	ldr	r3, [r4, r3]
	ldr	r2, .L74+4	@ float
	str	r2, [r3, #128]	@ float
	ldr	r3, .L74+20
	ldr	r3, [r4, r3]
	ldr	r2, [fp, #-36]	@ float
	str	r2, [r3, #140]	@ float
	mov	r3, #0
	str	r3, [fp, #-40]
	b	.L27
.L30:
	ldr	r2, [fp, #-40]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	str	r3, [fp, #-48]
	mov	r3, #0
	str	r3, [fp, #-44]
	b	.L28
.L75:
	.align	2
.L74:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+8)
	.word	0
	.word	1065353216
	.word	parrot_gettingstarted_compat_DW(GOT)
	.word	sensor_inport(GOT)
	.word	parrot_gettingstarted_compati_B(GOT)
	.word	parrot_gettingstarted_compati_P(GOT)
	.word	motors_outport(GOT)
.L29:
	ldr	r2, [fp, #-44]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	str	r3, [fp, #-52]
	ldr	r2, [fp, #-52]
	ldr	r3, .L74+20
	ldr	r3, [r4, r3]
	mov	r2, r2, asl #3
	add	r3, r2, r3
	ldrd	r2, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f(PLT)
	mov	r2, r0
	ldr	r3, [fp, #-40]
	ldr	r1, .L74+20
	ldr	r1, [r4, r1]
	add	r0, r3, #26
	mov	r3, #4
	mov	r0, r0, asl #2
	add	r1, r0, r1
	add	r3, r1, r3
	ldr	r3, [r3, #0]	@ float
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_fmul(PLT)
	mov	r3, r0
	str	r3, [fp, #-80]	@ float
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r5, r2, r3
	ldr	r3, [fp, #-52]
	add	r2, r3, #1
	ldr	r3, .L74+20
	ldr	r3, [r4, r3]
	mov	r2, r2, asl #3
	add	r3, r2, r3
	ldrd	r2, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f(PLT)
	mov	r2, r0
	ldr	r3, [fp, #-40]
	add	r3, r3, #3
	ldr	r1, .L74+20
	ldr	r1, [r4, r1]
	add	r0, r3, #26
	mov	r3, #4
	mov	r0, r0, asl #2
	add	r1, r0, r1
	add	r3, r1, r3
	ldr	r3, [r3, #0]	@ float
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_fmul(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-80]	@ float
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_fadd(PLT)
	mov	r3, r0
	mov	r6, r3
	ldr	r3, [fp, #-52]
	add	r2, r3, #2
	ldr	r3, .L74+20
	ldr	r3, [r4, r3]
	mov	r2, r2, asl #3
	add	r3, r2, r3
	ldrd	r2, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f(PLT)
	mov	r2, r0
	ldr	r3, [fp, #-40]
	add	r3, r3, #6
	ldr	r1, .L74+20
	ldr	r1, [r4, r1]
	add	r0, r3, #26
	mov	r3, #4
	mov	r0, r0, asl #2
	add	r1, r0, r1
	add	r3, r1, r3
	ldr	r3, [r3, #0]	@ float
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_fmul(PLT)
	mov	r3, r0
	mov	r0, r6
	mov	r1, r3
	bl	__aeabi_fadd(PLT)
	mov	r3, r0
	mov	r1, r3
	ldr	r3, .L74+20
	ldr	r3, [r4, r3]
	add	r2, r5, #18
	str	r1, [r3, r2, asl #2]	@ float
	ldr	r3, [fp, #-44]
	add	r3, r3, #1
	str	r3, [fp, #-44]
.L28:
	ldr	r3, [fp, #-44]
	cmp	r3, #2
	ble	.L29
	ldr	r3, [fp, #-40]
	add	r3, r3, #1
	str	r3, [fp, #-40]
.L27:
	ldr	r3, [fp, #-40]
	cmp	r3, #2
	ble	.L30
	ldr	r3, .L74+20
	ldr	r3, [r4, r3]
	ldr	r2, [r3, #256]	@ float
	ldr	r3, .L74+20
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #80]	@ float
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_fmul(PLT)
	mov	r3, r0
	str	r3, [fp, #-80]	@ float
	ldr	r3, .L74+24
	ldr	r2, [r4, r3]
	mov	r3, #304
	ldrd	r6, [r2, r3]
	ldr	r3, .L74+20
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #260]	@ float
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dsub(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, .L74+20
	ldr	r1, [r4, r1]
	strd	r2, [r1, #200]
	ldr	r3, .L74+24
	ldr	r2, [r4, r3]
	mov	r3, #264
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
	ldr	r1, .L74+20
	ldr	r1, [r4, r1]
	strd	r2, [r1, #192]
	ldr	r3, .L74+24
	ldr	r3, [r4, r3]
	ldrd	r0, [r3]
	ldr	r3, .L74+20
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #192]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, .L74+20
	ldr	r1, [r4, r1]
	strd	r2, [r1, #232]
	ldr	r3, .L74+24
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #740]	@ float
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, .L74+20
	ldr	r1, [r4, r1]
	strd	r2, [r1, #192]
	ldr	r3, .L74+20
	ldr	r3, [r4, r3]
	ldrd	r6, [r3, #232]
	ldr	r3, .L74+24
	ldr	r3, [r4, r3]
	ldrd	r0, [r3, #8]
	ldr	r3, .L74+20
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #200]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, .L74+20
	ldr	r1, [r4, r1]
	strd	r2, [r1, #232]
	ldr	r3, .L74+24
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #744]	@ float
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, .L74+20
	ldr	r1, [r4, r1]
	strd	r2, [r1, #200]
	ldr	r3, .L74+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #392]	@ float
	mov	r0, r3
	ldr	r3, .L74+20
	ldr	r3, [r4, r3]
	add	r1, r3, #276
	bl	parrot_gettings_MATLABFunction1(PLT)
	ldr	r3, .L74+20
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #276]	@ float
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	ldr	r3, .L74+24
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #216]
	bl	__aeabi_dsub(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L74+24
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #208]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r6, r2
	mov	r7, r3
	ldr	r3, .L74+16
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
	ldr	r1, .L74+20
	ldr	r1, [r4, r1]
	strd	r2, [r1, #248]
	ldr	r3, .L74+12
	ldr	r3, [r4, r3]
	ldrb	r3, [r3, #85]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L31
	ldr	r3, .L74+24
	ldr	r2, [r4, r3]
	mov	r3, #336
	add	r3, r3, r2
	ldrd	r2, [r3]
	ldr	r1, .L74+12
	ldr	r1, [r4, r1]
	strd	r2, [r1, #16]
	ldr	r3, .L74+24
	ldr	r2, [r4, r3]
	mov	r3, #344
	add	r3, r3, r2
	ldrd	r2, [r3]
	ldr	r1, .L74+12
	ldr	r1, [r4, r1]
	strd	r2, [r1, #24]
.L31:
	ldr	r3, .L74+24
	ldr	r3, [r4, r3]
	ldrb	r1, [r3, #805]	@ zero_extendqisi2
	ldr	r3, .L74+20
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #248]
	strd	r2, [sp]
	ldr	r3, .L74+12
	ldr	r3, [r4, r3]
	add	r3, r3, #16
	str	r3, [sp, #8]
	ldr	r3, .L74+20
	ldr	r3, [r4, r3]
	add	r3, r3, #312
	str	r3, [sp, #12]
	ldr	r3, .L74+12
	ldr	r3, [r4, r3]
	add	r3, r3, #90
	str	r3, [sp, #16]
	ldr	r3, .L74+24
	ldr	r3, [r4, r3]
	add	r3, r3, #832
	str	r3, [sp, #20]
	mov	r0, r1
	ldr	r3, .L74+20
	ldr	r3, [r4, r3]
	add	r1, r3, #192
	ldr	r3, .L74+24
	ldr	r3, [r4, r3]
	add	r2, r3, #320
	bl	parrot_getting_EnabledSubsystem(PLT)
	ldr	r3, .L74+20
	ldr	r2, [r4, r3]
	mov	r3, #312
	ldrd	r0, [r2, r3]
	ldr	r3, .L74+12
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #16]
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, .L74+20
	ldr	r1, [r4, r1]
	strd	r2, [r1, #192]
	ldr	r3, .L74+20
	ldr	r2, [r4, r3]
	mov	r3, #320
	ldrd	r0, [r2, r3]
	ldr	r3, .L74+12
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #24]
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, .L74+20
	ldr	r1, [r4, r1]
	strd	r2, [r1, #200]
	ldr	r3, .L74+24
	ldr	r2, [r4, r3]
	mov	r3, #312
	ldrd	r0, [r2, r3]
	ldr	r3, .L74+20
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #192]
	bl	__aeabi_dsub(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L74+24
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #56]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r6, r2
	mov	r7, r3
	ldr	r3, .L74+24
	ldr	r2, [r4, r3]
	mov	r3, #352
	ldrd	r0, [r2, r3]
	ldr	r3, .L74+20
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #240]
	bl	__aeabi_dsub(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L74+24
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
	ldr	r3, .L74+24
	ldr	r2, [r4, r3]
	mov	r3, #360
	ldrd	r8, [r2, r3]
	ldr	r3, .L74+16
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
	ldr	r3, .L74+24
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
	strd	r2, [fp, #-76]
	ldr	r3, .L74+24
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #748]	@ float
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, .L74+20
	ldr	r1, [r4, r1]
	strd	r2, [r1, #208]
	ldr	r3, .L74+24
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #752]	@ float
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, .L74+20
	ldr	r1, [r4, r1]
	strd	r2, [r1, #216]
	ldr	r3, .L74+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #392]	@ float
	mov	r0, r3
	ldr	r3, .L74+20
	ldr	r3, [r4, r3]
	add	r1, r3, #272
	bl	parrot_gettings_MATLABFunction1(PLT)
	ldr	r3, .L74+20
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #272]	@ float
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	ldr	r3, .L74+24
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #216]
	bl	__aeabi_dsub(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L74+24
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #208]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r6, r2
	mov	r7, r3
	ldr	r3, .L74+16
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
	ldr	r1, .L74+20
	ldr	r1, [r4, r1]
	strd	r2, [r1, #240]
	ldr	r3, .L74+12
	ldr	r3, [r4, r3]
	ldrb	r3, [r3, #86]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L32
	ldr	r3, .L74+24
	ldr	r2, [r4, r3]
	mov	r3, #392
	add	r3, r3, r2
	ldrd	r2, [r3]
	ldr	r1, .L74+12
	ldr	r1, [r4, r1]
	strd	r2, [r1, #32]
	ldr	r3, .L74+24
	ldr	r2, [r4, r3]
	mov	r3, #400
	add	r3, r3, r2
	ldrd	r2, [r3]
	ldr	r1, .L74+12
	ldr	r1, [r4, r1]
	strd	r2, [r1, #40]
.L32:
	ldr	r3, .L74+24
	ldr	r3, [r4, r3]
	ldrb	r1, [r3, #806]	@ zero_extendqisi2
	ldr	r3, .L74+20
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #240]
	strd	r2, [sp]
	ldr	r3, .L74+12
	ldr	r3, [r4, r3]
	add	r3, r3, #32
	str	r3, [sp, #8]
	ldr	r3, .L74+20
	ldr	r3, [r4, r3]
	add	r3, r3, #280
	str	r3, [sp, #12]
	ldr	r3, .L74+12
	ldr	r3, [r4, r3]
	add	r3, r3, #88
	str	r3, [sp, #16]
	ldr	r3, .L74+24
	ldr	r3, [r4, r3]
	add	r3, r3, #816
	str	r3, [sp, #20]
	mov	r0, r1
	ldr	r3, .L74+20
	ldr	r3, [r4, r3]
	add	r1, r3, #208
	ldr	r3, .L74+24
	ldr	r3, [r4, r3]
	add	r2, r3, #376
	bl	parrot_getting_EnabledSubsystem(PLT)
	ldr	r3, .L74+20
	ldr	r2, [r4, r3]
	mov	r3, #280
	ldrd	r0, [r2, r3]
	ldr	r3, .L74+12
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #32]
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f(PLT)
	mov	r2, r0
	ldr	r3, .L74+20
	ldr	r3, [r4, r3]
	str	r2, [r3, #264]	@ float
	ldr	r3, .L74+20
	ldr	r2, [r4, r3]
	mov	r3, #288
	ldrd	r0, [r2, r3]
	ldr	r3, .L74+12
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #40]
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f(PLT)
	mov	r2, r0
	ldr	r3, .L74+20
	ldr	r3, [r4, r3]
	str	r2, [r3, #268]	@ float
	ldr	r3, .L74+24
	ldr	r2, [r4, r3]
	mov	r3, #368
	ldrd	r6, [r2, r3]
	ldr	r3, .L74+20
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #264]	@ float
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
	ldr	r3, .L74+24
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #32]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r6, r2
	mov	r7, r3
	ldr	r3, .L74+24
	ldr	r2, [r4, r3]
	mov	r3, #408
	ldrd	r8, [r2, r3]
	ldr	r0, [fp, #-32]	@ float
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
	ldr	r3, .L74+24
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
	ldr	r3, .L74+24
	ldr	r2, [r4, r3]
	mov	r3, #416
	ldrd	r8, [r2, r3]
	ldr	r3, .L74+16
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
	ldr	r3, .L74+24
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
	strd	r2, [fp, #-68]
	ldr	r3, .L74+24
	ldr	r2, [r4, r3]
	mov	r3, #424
	ldrd	r6, [r2, r3]
	ldr	r3, .L74+16
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
	ldr	r3, .L74+24
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #16]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, .L74+20
	ldr	r1, [r4, r1]
	strd	r2, [r1, #224]
	ldr	r3, .L74+20
	ldr	r3, [r4, r3]
	ldrd	r0, [r3, #224]
	ldr	r3, .L74+24
	ldr	r2, [r4, r3]
	mov	r3, #432
	add	r3, r3, r2
	ldrd	r2, [r3]
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	strd	r2, [fp, #-60]
	mov	r3, #0
	str	r3, [fp, #-40]
	b	.L33
.L34:
	ldr	r5, [fp, #-40]
	ldr	r3, [fp, #-40]
	add	r2, r3, #4
	ldr	r3, .L74+24
	ldr	r3, [r4, r3]
	add	r2, r2, #10
	mov	r2, r2, asl #3
	add	r3, r2, r3
	ldrd	r2, [r3]
	mov	r0, r2
	mov	r1, r3
	ldrd	r2, [fp, #-76]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r6, r2
	mov	r7, r3
	ldr	r2, [fp, #-40]
	ldr	r3, .L74+24
	ldr	r3, [r4, r3]
	add	r2, r2, #10
	mov	r2, r2, asl #3
	add	r3, r2, r3
	ldrd	r0, [r3]
	ldr	r3, .L74+20
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #232]
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
	ldr	r3, .L74+24
	ldr	r3, [r4, r3]
	add	r2, r2, #10
	mov	r2, r2, asl #3
	add	r3, r2, r3
	ldrd	r2, [r3]
	mov	r0, r2
	mov	r1, r3
	ldrd	r2, [fp, #-68]
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
	ldr	r3, .L74+24
	ldr	r3, [r4, r3]
	add	r2, r2, #10
	mov	r2, r2, asl #3
	add	r3, r2, r3
	ldrd	r2, [r3]
	mov	r0, r2
	mov	r1, r3
	ldrd	r2, [fp, #-60]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, .L74+20
	ldr	r1, [r4, r1]
	add	r0, r5, #18
	mov	r0, r0, asl #3
	add	r1, r0, r1
	strd	r2, [r1]
	ldr	r3, [fp, #-40]
	add	r3, r3, #1
	str	r3, [fp, #-40]
.L33:
	ldr	r3, [fp, #-40]
	cmp	r3, #3
	ble	.L34
	ldr	r3, .L74+24
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #232]
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	ldr	r3, .L74+20
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #144]
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	strd	r2, [fp, #-60]
	ldr	r3, .L74+24
	ldr	r2, [r4, r3]
	mov	r3, #440
	add	r3, r3, r2
	ldrd	r2, [r3]
	mov	r1, #0
	mov	r5, r1
	mov	r0, r2
	mov	r1, r3
	ldrd	r2, [fp, #-60]
	bl	__aeabi_dcmplt(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L35
.L36:
	mov	r3, #1
	mov	r5, r3
.L35:
	and	r3, r5, #255
	cmp	r3, #0
	beq	.L37
	ldr	r3, .L74+24
	ldr	r2, [r4, r3]
	mov	r3, #440
	add	r3, r3, r2
	ldrd	r2, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f(PLT)
	mov	r2, r0
	ldr	r3, .L74+28
	ldr	r3, [r4, r3]
	str	r2, [r3, #0]	@ float
	b	.L38
.L37:
	ldr	r3, .L74+24
	ldr	r2, [r4, r3]
	mov	r3, #448
	add	r3, r3, r2
	ldrd	r2, [r3]
	mov	r1, #0
	mov	r5, r1
	mov	r0, r2
	mov	r1, r3
	ldrd	r2, [fp, #-60]
	bl	__aeabi_dcmpgt(PLT)
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
	ldr	r3, .L74+24
	ldr	r2, [r4, r3]
	mov	r3, #448
	add	r3, r3, r2
	ldrd	r2, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f(PLT)
	mov	r2, r0
	ldr	r3, .L74+28
	ldr	r3, [r4, r3]
	str	r2, [r3, #0]	@ float
	b	.L38
.L41:
	ldrd	r0, [fp, #-60]
	bl	__aeabi_d2f(PLT)
	mov	r2, r0
	ldr	r3, .L74+28
	ldr	r3, [r4, r3]
	str	r2, [r3, #0]	@ float
.L38:
	ldr	r3, .L74+24
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #240]
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	ldr	r3, .L74+20
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #152]
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	strd	r2, [fp, #-60]
	ldr	r3, .L74+24
	ldr	r2, [r4, r3]
	mov	r3, #440
	add	r3, r3, r2
	ldrd	r2, [r3]
	mov	r1, #0
	mov	r5, r1
	mov	r0, r2
	mov	r1, r3
	ldrd	r2, [fp, #-60]
	bl	__aeabi_dcmplt(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L42
.L43:
	mov	r3, #1
	mov	r5, r3
.L42:
	and	r3, r5, #255
	cmp	r3, #0
	beq	.L44
	ldr	r3, .L74+24
	ldr	r2, [r4, r3]
	mov	r3, #440
	add	r3, r3, r2
	ldrd	r2, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f(PLT)
	mov	r2, r0
	ldr	r3, .L74+28
	ldr	r3, [r4, r3]
	str	r2, [r3, #4]	@ float
	b	.L45
.L44:
	ldr	r3, .L74+24
	ldr	r2, [r4, r3]
	mov	r3, #448
	add	r3, r3, r2
	ldrd	r2, [r3]
	mov	r1, #0
	mov	r5, r1
	mov	r0, r2
	mov	r1, r3
	ldrd	r2, [fp, #-60]
	bl	__aeabi_dcmpgt(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L46
.L47:
	mov	r3, #1
	mov	r5, r3
.L46:
	and	r3, r5, #255
	cmp	r3, #0
	beq	.L48
	ldr	r3, .L74+24
	ldr	r2, [r4, r3]
	mov	r3, #448
	add	r3, r3, r2
	ldrd	r2, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f(PLT)
	mov	r2, r0
	ldr	r3, .L74+28
	ldr	r3, [r4, r3]
	str	r2, [r3, #4]	@ float
	b	.L45
.L48:
	ldrd	r0, [fp, #-60]
	bl	__aeabi_d2f(PLT)
	mov	r2, r0
	ldr	r3, .L76
	ldr	r3, [r4, r3]
	str	r2, [r3, #4]	@ float
.L45:
	ldr	r3, .L76+16
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #248]
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	ldr	r3, .L76+20
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #160]
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	strd	r2, [fp, #-60]
	ldr	r3, .L76+16
	ldr	r2, [r4, r3]
	mov	r3, #440
	add	r3, r3, r2
	ldrd	r2, [r3]
	mov	r1, #0
	mov	r5, r1
	mov	r0, r2
	mov	r1, r3
	ldrd	r2, [fp, #-60]
	bl	__aeabi_dcmplt(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L49
.L50:
	mov	r3, #1
	mov	r5, r3
.L49:
	and	r3, r5, #255
	cmp	r3, #0
	beq	.L51
	ldr	r3, .L76+16
	ldr	r2, [r4, r3]
	mov	r3, #440
	add	r3, r3, r2
	ldrd	r2, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f(PLT)
	mov	r2, r0
	ldr	r3, .L76
	ldr	r3, [r4, r3]
	str	r2, [r3, #8]	@ float
	b	.L52
.L51:
	ldr	r3, .L76+16
	ldr	r2, [r4, r3]
	mov	r3, #448
	add	r3, r3, r2
	ldrd	r2, [r3]
	mov	r1, #0
	mov	r5, r1
	mov	r0, r2
	mov	r1, r3
	ldrd	r2, [fp, #-60]
	bl	__aeabi_dcmpgt(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L53
.L54:
	mov	r3, #1
	mov	r5, r3
.L53:
	and	r3, r5, #255
	cmp	r3, #0
	beq	.L55
	ldr	r3, .L76+16
	ldr	r2, [r4, r3]
	mov	r3, #448
	add	r3, r3, r2
	ldrd	r2, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f(PLT)
	mov	r2, r0
	ldr	r3, .L76
	ldr	r3, [r4, r3]
	str	r2, [r3, #8]	@ float
	b	.L52
.L55:
	ldrd	r0, [fp, #-60]
	bl	__aeabi_d2f(PLT)
	mov	r2, r0
	ldr	r3, .L76
	ldr	r3, [r4, r3]
	str	r2, [r3, #8]	@ float
.L52:
	ldr	r3, .L76+16
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
	ldr	r3, .L76+20
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #168]
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	strd	r2, [fp, #-60]
	ldr	r3, .L76+16
	ldr	r2, [r4, r3]
	mov	r3, #440
	add	r3, r3, r2
	ldrd	r2, [r3]
	mov	r1, #0
	mov	r5, r1
	mov	r0, r2
	mov	r1, r3
	ldrd	r2, [fp, #-60]
	bl	__aeabi_dcmplt(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L56
.L57:
	mov	r3, #1
	mov	r5, r3
.L56:
	and	r3, r5, #255
	cmp	r3, #0
	beq	.L58
	ldr	r3, .L76+16
	ldr	r2, [r4, r3]
	mov	r3, #440
	add	r3, r3, r2
	ldrd	r2, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f(PLT)
	mov	r2, r0
	ldr	r3, .L76
	ldr	r3, [r4, r3]
	str	r2, [r3, #12]	@ float
	b	.L59
.L58:
	ldr	r3, .L76+16
	ldr	r2, [r4, r3]
	mov	r3, #448
	add	r3, r3, r2
	ldrd	r2, [r3]
	mov	r1, #0
	mov	r5, r1
	mov	r0, r2
	mov	r1, r3
	ldrd	r2, [fp, #-60]
	bl	__aeabi_dcmpgt(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L60
.L61:
	mov	r3, #1
	mov	r5, r3
.L60:
	and	r3, r5, #255
	cmp	r3, #0
	beq	.L62
	ldr	r3, .L76+16
	ldr	r2, [r4, r3]
	mov	r3, #448
	add	r3, r3, r2
	ldrd	r2, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f(PLT)
	mov	r2, r0
	ldr	r3, .L76
	ldr	r3, [r4, r3]
	str	r2, [r3, #12]	@ float
	b	.L59
.L62:
	ldrd	r0, [fp, #-60]
	bl	__aeabi_d2f(PLT)
	mov	r2, r0
	ldr	r3, .L76
	ldr	r3, [r4, r3]
	str	r2, [r3, #12]	@ float
.L59:
	ldr	r3, .L76
	ldr	r3, [r4, r3]
	ldr	r2, [r3, #0]	@ float
	ldr	r3, .L76+4
	ldr	r3, [r4, r3]
	str	r2, [r3, #0]	@ float
	ldr	r3, .L76
	ldr	r3, [r4, r3]
	ldr	r2, [r3, #4]	@ float
	ldr	r3, .L76+4
	ldr	r3, [r4, r3]
	str	r2, [r3, #4]	@ float
	ldr	r3, .L76
	ldr	r3, [r4, r3]
	ldr	r2, [r3, #8]	@ float
	ldr	r3, .L76+4
	ldr	r3, [r4, r3]
	str	r2, [r3, #8]	@ float
	ldr	r3, .L76
	ldr	r3, [r4, r3]
	ldr	r2, [r3, #12]	@ float
	ldr	r3, .L76+4
	ldr	r3, [r4, r3]
	str	r2, [r3, #12]	@ float
	ldr	r3, .L76+16
	ldr	r3, [r4, r3]
	ldrb	r3, [r3, #812]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L63
	ldr	r3, .L76+16
	ldr	r3, [r4, r3]
	ldrb	r2, [r3, #810]	@ zero_extendqisi2
	ldr	r3, .L76+8
	ldr	r3, [r4, r3]
	strb	r2, [r3, #0]
	b	.L64
.L63:
	ldr	r3, .L76+16
	ldr	r3, [r4, r3]
	ldrb	r2, [r3, #811]	@ zero_extendqisi2
	ldr	r3, .L76+8
	ldr	r3, [r4, r3]
	strb	r2, [r3, #0]
.L64:
	ldr	r3, .L76+8
	ldr	r3, [r4, r3]
	ldrb	r2, [r3, #0]	@ zero_extendqisi2
	ldr	r3, .L76+4
	ldr	r3, [r4, r3]
	strb	r2, [r3, #16]
	ldr	r3, .L76+32
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #8]
	strd	r2, [fp, #-92]
	ldr	r3, .L76+24
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #48]
	mov	r2, r3
	sub	r3, fp, #92
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L76+20
	ldr	r3, [r4, r3]
	add	r2, r3, #144
	bl	rt_UpdateStructLogVar(PLT)
	ldr	r3, .L76+20
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #232]
	ldr	r1, .L76+20
	ldr	r1, [r4, r1]
	strd	r2, [r1, #144]
	ldr	r3, .L76+20
	ldr	r1, [r4, r3]
	ldrd	r2, [fp, #-76]
	strd	r2, [r1, #152]
	ldr	r3, .L76+20
	ldr	r1, [r4, r3]
	ldrd	r2, [fp, #-68]
	strd	r2, [r1, #160]
	ldr	r3, .L76+20
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #224]
	ldr	r1, .L76+20
	ldr	r1, [r4, r1]
	strd	r2, [r1, #168]
	ldr	r3, .L76+32
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #8]
	strd	r2, [fp, #-100]
	ldr	r3, .L76+24
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #52]
	mov	r2, r3
	sub	r3, fp, #100
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L76+20
	ldr	r3, [r4, r3]
	add	r2, r3, #144
	bl	rt_UpdateStructLogVar(PLT)
	ldr	r3, .L76+32
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #8]
	strd	r2, [fp, #-108]
	ldr	r3, .L76+24
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #56]
	mov	r2, r3
	sub	r3, fp, #108
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L76+20
	ldr	r3, [r4, r3]
	add	r2, r3, #232
	bl	rt_UpdateStructLogVar(PLT)
	ldr	r3, .L76+32
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #8]
	strd	r2, [fp, #-116]
	ldr	r3, .L76+24
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #60]
	mov	r1, r3
	sub	r2, fp, #116
	sub	r3, fp, #80
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	rt_UpdateStructLogVar(PLT)
	ldr	r3, .L76+32
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #8]
	strd	r2, [fp, #-124]
	ldr	r3, .L76+24
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #64]
	mov	r1, r3
	ldr	r3, .L76+20
	ldr	r3, [r4, r3]
	add	r3, r3, #260
	sub	r2, fp, #124
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	rt_UpdateStructLogVar(PLT)
	ldr	r3, .L76+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #60]	@ float
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	ldr	r3, .L76+16
	ldr	r2, [r4, r3]
	mov	r3, #456
	add	r3, r3, r2
	ldrd	r2, [r3]
	bl	__aeabi_dsub(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, .L76+20
	ldr	r1, [r4, r1]
	strd	r2, [r1, #232]
	ldr	r3, .L76+16
	ldr	r3, [r4, r3]
	ldrb	r3, [r3, #804]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L65
	ldr	r3, .L76+24
	ldr	r3, [r4, r3]
	mov	r2, #1
	strb	r2, [r3, #87]
	ldr	r3, .L76+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #416]	@ float
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	mov	r6, r0
	mov	r7, r1
	ldr	r3, .L76+16
	ldr	r2, [r4, r3]
	mov	r3, #272
	ldrd	r0, [r2, r3]
	ldr	r3, .L76+24
	ldr	r3, [r4, r3]
	ldrd	r2, [r3]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r8, r2
	mov	r9, r3
	ldr	r3, .L76+16
	ldr	r2, [r4, r3]
	mov	r3, #280
	ldrd	r0, [r2, r3]
	ldr	r3, .L76+24
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
	ldr	r3, .L76+16
	ldr	r2, [r4, r3]
	mov	r3, #528
	ldrd	r0, [r2, r3]
	ldr	r3, .L76+20
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #232]
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
	ldr	r3, .L76+16
	ldr	r2, [r4, r3]
	mov	r3, #512
	add	r3, r3, r2
	ldrd	r2, [r3]
	mov	r0, r2
	mov	r1, r3
	ldrd	r2, [fp, #-68]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, .L76+20
	ldr	r1, [r4, r1]
	strd	r2, [r1, #176]
	ldr	r3, .L76+16
	ldr	r2, [r4, r3]
	mov	r3, #520
	add	r3, r3, r2
	ldrd	r2, [r3]
	mov	r0, r2
	mov	r1, r3
	ldrd	r2, [fp, #-68]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, .L76+20
	ldr	r1, [r4, r1]
	strd	r2, [r1, #184]
	b	.L66
.L77:
	.align	2
.L76:
	.word	motors_outport(GOT)
	.word	parrot_gettingstarted_compati_Y(GOT)
	.word	flag_outport(GOT)
	.word	sensor_inport(GOT)
	.word	parrot_gettingstarted_compati_P(GOT)
	.word	parrot_gettingstarted_compati_B(GOT)
	.word	parrot_gettingstarted_compat_DW(GOT)
	.word	.LC0(GOTOFF)
	.word	parrot_gettingstarted_compat_M(GOT)
.L65:
	ldr	r3, .L76+24
	ldr	r3, [r4, r3]
	ldrb	r3, [r3, #87]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L66
	ldr	r3, .L76+16
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #224]
	ldr	r1, .L76+20
	ldr	r1, [r4, r1]
	strd	r2, [r1, #176]
	ldr	r3, .L76+16
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #224]
	ldr	r1, .L76+20
	ldr	r1, [r4, r1]
	strd	r2, [r1, #184]
	ldr	r3, .L76+24
	ldr	r3, [r4, r3]
	mov	r2, #0
	strb	r2, [r3, #87]
.L66:
	ldr	r3, .L76+32
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #8]
	strd	r2, [fp, #-132]
	ldr	r3, .L76+24
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #68]
	mov	r2, r3
	sub	r3, fp, #132
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L76+20
	ldr	r3, [r4, r3]
	add	r2, r3, #192
	bl	rt_UpdateStructLogVar(PLT)
	ldr	r3, .L76+32
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #8]
	strd	r2, [fp, #-140]
	ldr	r3, .L76+24
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #72]
	mov	r1, r3
	ldr	r3, .L76+20
	ldr	r3, [r4, r3]
	add	r3, r3, #200
	sub	r2, fp, #140
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	rt_UpdateStructLogVar(PLT)
	ldr	r3, .L76+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #56]	@ float
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, .L76+20
	ldr	r1, [r4, r1]
	strd	r2, [r1, #192]
	ldr	r3, .L76+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #68]	@ float
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, .L76+20
	ldr	r1, [r4, r1]
	strd	r2, [r1, #200]
	ldr	r3, .L76+16
	ldr	r3, [r4, r3]
	ldrb	r2, [r3, #805]	@ zero_extendqisi2
	ldr	r3, .L76+20
	ldr	r3, [r4, r3]
	ldrd	r6, [r3, #248]
	ldr	r3, .L76+16
	ldr	r3, [r4, r3]
	add	r3, r3, #320
	str	r3, [sp, #0]
	ldr	r3, .L76+24
	ldr	r3, [r4, r3]
	add	r3, r3, #16
	str	r3, [sp, #4]
	ldr	r3, .L76+16
	ldr	r3, [r4, r3]
	add	r3, r3, #616
	str	r3, [sp, #8]
	ldr	r3, .L76+20
	ldr	r3, [r4, r3]
	add	r3, r3, #192
	str	r3, [sp, #12]
	ldr	r3, .L76+20
	ldr	r3, [r4, r3]
	add	r3, r3, #328
	str	r3, [sp, #16]
	ldr	r3, .L76+24
	ldr	r3, [r4, r3]
	add	r3, r3, #91
	str	r3, [sp, #20]
	ldr	r3, .L76+16
	ldr	r3, [r4, r3]
	add	r3, r3, #840
	str	r3, [sp, #24]
	mov	r0, r2
	ldr	r3, .L76+16
	ldr	r3, [r4, r3]
	add	r1, r3, #600
	mov	r2, r6
	mov	r3, r7
	bl	parrot_gettin_MeasurementUpdate(PLT)
	ldr	r3, .L76+32
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #8]
	strd	r2, [fp, #-148]
	ldr	r3, .L76+24
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #76]
	mov	r2, r3
	sub	r3, fp, #148
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L76+20
	ldr	r3, [r4, r3]
	add	r2, r3, #264
	bl	rt_UpdateStructLogVar(PLT)
	ldr	r3, .L76+32
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #8]
	strd	r2, [fp, #-156]
	ldr	r3, .L76+24
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #80]
	mov	r1, r3
	ldr	r3, .L76+20
	ldr	r3, [r4, r3]
	add	r3, r3, #268
	sub	r2, fp, #156
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	rt_UpdateStructLogVar(PLT)
	ldr	r3, .L76+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #52]	@ float
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, .L76+20
	ldr	r1, [r4, r1]
	strd	r2, [r1, #208]
	ldr	r3, .L76+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #72]	@ float
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, .L76+20
	ldr	r1, [r4, r1]
	strd	r2, [r1, #216]
	ldr	r3, .L76+16
	ldr	r3, [r4, r3]
	ldrb	r2, [r3, #806]	@ zero_extendqisi2
	ldr	r3, .L76+20
	ldr	r3, [r4, r3]
	ldrd	r6, [r3, #240]
	ldr	r3, .L76+16
	ldr	r3, [r4, r3]
	add	r3, r3, #376
	str	r3, [sp, #0]
	ldr	r3, .L76+24
	ldr	r3, [r4, r3]
	add	r3, r3, #32
	str	r3, [sp, #4]
	ldr	r3, .L76+16
	ldr	r3, [r4, r3]
	add	r3, r3, #712
	str	r3, [sp, #8]
	ldr	r3, .L76+20
	ldr	r3, [r4, r3]
	add	r3, r3, #208
	str	r3, [sp, #12]
	ldr	r3, .L76+20
	ldr	r3, [r4, r3]
	add	r3, r3, #296
	str	r3, [sp, #16]
	ldr	r3, .L76+24
	ldr	r3, [r4, r3]
	add	r3, r3, #89
	str	r3, [sp, #20]
	ldr	r3, .L76+16
	ldr	r3, [r4, r3]
	add	r3, r3, #824
	str	r3, [sp, #24]
	mov	r0, r2
	ldr	r3, .L76+16
	ldr	r3, [r4, r3]
	add	r1, r3, #696
	mov	r2, r6
	mov	r3, r7
	bl	parrot_gettin_MeasurementUpdate(PLT)
	ldr	r3, .L76+24
	ldr	r3, [r4, r3]
	mov	r2, #0
	strb	r2, [r3, #84]
	ldr	r3, .L76+16
	ldr	r2, [r4, r3]
	mov	r3, #464
	ldrd	r0, [r2, r3]
	ldr	r3, .L76+24
	ldr	r3, [r4, r3]
	ldrd	r2, [r3]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r6, r2
	mov	r7, r3
	ldr	r3, .L76+24
	ldr	r3, [r4, r3]
	ldrd	r0, [r3, #8]
	ldr	r3, .L76+16
	ldr	r2, [r4, r3]
	mov	r3, #480
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
	ldr	r1, .L76+20
	ldr	r1, [r4, r1]
	strd	r2, [r1, #240]
	ldr	r3, .L76+24
	ldr	r3, [r4, r3]
	ldrd	r0, [r3]
	ldr	r3, .L76+16
	ldr	r2, [r4, r3]
	mov	r3, #472
	add	r3, r3, r2
	ldrd	r2, [r3]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r6, r2
	mov	r7, r3
	ldr	r3, .L76+24
	ldr	r3, [r4, r3]
	ldrd	r0, [r3, #8]
	ldr	r3, .L76+16
	ldr	r2, [r4, r3]
	mov	r3, #488
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
	ldr	r1, .L76+20
	ldr	r1, [r4, r1]
	strd	r2, [r1, #248]
	ldr	r3, .L76+24
	ldr	r3, [r4, r3]
	mov	r2, #0
	strb	r2, [r3, #85]
	ldr	r3, .L76+16
	ldr	r2, [r4, r3]
	mov	r3, #496
	ldrd	r0, [r2, r3]
	ldr	r3, .L76+20
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #232]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L76+20
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #240]
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L76+20
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #176]
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, .L76+24
	ldr	r1, [r4, r1]
	strd	r2, [r1]
	ldr	r3, .L76+16
	ldr	r2, [r4, r3]
	mov	r3, #536
	ldrd	r0, [r2, r3]
	ldr	r3, .L76+24
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #16]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r6, r2
	mov	r7, r3
	ldr	r3, .L76+24
	ldr	r3, [r4, r3]
	ldrd	r0, [r3, #24]
	ldr	r3, .L76+16
	ldr	r2, [r4, r3]
	mov	r3, #552
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
	ldr	r1, .L76+20
	ldr	r1, [r4, r1]
	strd	r2, [r1, #240]
	ldr	r3, .L76+16
	ldr	r2, [r4, r3]
	mov	r3, #504
	ldrd	r0, [r2, r3]
	ldr	r3, .L76+20
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #232]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L76+20
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #248]
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L76+20
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #184]
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, .L76+24
	ldr	r1, [r4, r1]
	strd	r2, [r1, #8]
	ldr	r3, .L76+24
	ldr	r3, [r4, r3]
	ldrd	r0, [r3, #16]
	ldr	r3, .L76+16
	ldr	r2, [r4, r3]
	mov	r3, #544
	add	r3, r3, r2
	ldrd	r2, [r3]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r6, r2
	mov	r7, r3
	ldr	r3, .L76+24
	ldr	r3, [r4, r3]
	ldrd	r0, [r3, #24]
	ldr	r3, .L76+16
	ldr	r2, [r4, r3]
	mov	r3, #560
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
	ldr	r1, .L76+20
	ldr	r1, [r4, r1]
	strd	r2, [r1, #248]
	ldr	r3, .L76+16
	ldr	r2, [r4, r3]
	mov	r3, #568
	ldrd	r0, [r2, r3]
	ldr	r3, .L76+20
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #192]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r6, r2
	mov	r7, r3
	ldr	r3, .L76+20
	ldr	r3, [r4, r3]
	ldrd	r0, [r3, #200]
	ldr	r3, .L76+16
	ldr	r2, [r4, r3]
	mov	r3, #584
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
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L76+20
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #240]
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L76+20
	ldr	r2, [r4, r3]
	mov	r3, #328
	add	r3, r3, r2
	ldrd	r2, [r3]
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, .L76+24
	ldr	r1, [r4, r1]
	strd	r2, [r1, #16]
	ldr	r3, .L76+20
	ldr	r3, [r4, r3]
	ldrd	r0, [r3, #192]
	ldr	r3, .L76+16
	ldr	r2, [r4, r3]
	mov	r3, #576
	add	r3, r3, r2
	ldrd	r2, [r3]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r6, r2
	mov	r7, r3
	ldr	r3, .L76+20
	ldr	r3, [r4, r3]
	ldrd	r0, [r3, #200]
	ldr	r3, .L76+16
	ldr	r2, [r4, r3]
	mov	r3, #592
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
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L76+20
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #248]
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L76+20
	ldr	r2, [r4, r3]
	mov	r3, #336
	add	r3, r3, r2
	ldrd	r2, [r3]
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, .L76+24
	ldr	r1, [r4, r1]
	strd	r2, [r1, #24]
	ldr	r3, .L76+24
	ldr	r3, [r4, r3]
	mov	r2, #0
	strb	r2, [r3, #86]
	ldr	r3, .L76+16
	ldr	r2, [r4, r3]
	mov	r3, #632
	ldrd	r0, [r2, r3]
	ldr	r3, .L76+24
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #32]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r6, r2
	mov	r7, r3
	ldr	r3, .L76+24
	ldr	r3, [r4, r3]
	ldrd	r0, [r3, #40]
	ldr	r3, .L76+16
	ldr	r2, [r4, r3]
	mov	r3, #648
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
	ldr	r1, .L76+20
	ldr	r1, [r4, r1]
	strd	r2, [r1, #240]
	ldr	r3, .L76+24
	ldr	r3, [r4, r3]
	ldrd	r0, [r3, #32]
	ldr	r3, .L76+16
	ldr	r2, [r4, r3]
	mov	r3, #640
	add	r3, r3, r2
	ldrd	r2, [r3]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r6, r2
	mov	r7, r3
	ldr	r3, .L76+24
	ldr	r3, [r4, r3]
	ldrd	r0, [r3, #40]
	ldr	r3, .L76+16
	ldr	r2, [r4, r3]
	mov	r3, #656
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
	ldr	r1, .L76+20
	ldr	r1, [r4, r1]
	strd	r2, [r1, #248]
	ldr	r3, .L76+16
	ldr	r2, [r4, r3]
	mov	r3, #664
	ldrd	r6, [r2, r3]
	ldr	r3, .L76+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #52]	@ float
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
	ldr	r3, .L76+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #72]	@ float
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	ldr	r3, .L76+16
	ldr	r2, [r4, r3]
	mov	r3, #680
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
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L76+20
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #240]
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L76+20
	ldr	r2, [r4, r3]
	mov	r3, #296
	add	r3, r3, r2
	ldrd	r2, [r3]
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, .L76+24
	ldr	r1, [r4, r1]
	strd	r2, [r1, #32]
	ldr	r3, .L76+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #52]	@ float
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	ldr	r3, .L76+16
	ldr	r2, [r4, r3]
	mov	r3, #672
	add	r3, r3, r2
	ldrd	r2, [r3]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r6, r2
	mov	r7, r3
	ldr	r3, .L76+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #72]	@ float
	mov	r0, r3
	bl	__aeabi_f2d(PLT)
	ldr	r3, .L76+16
	ldr	r2, [r4, r3]
	mov	r3, #688
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
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L76+20
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #248]
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	ldr	r3, .L76+20
	ldr	r2, [r4, r3]
	mov	r3, #304
	add	r3, r3, r2
	ldrd	r2, [r3]
	bl	__aeabi_dadd(PLT)
	mov	r2, r0
	mov	r3, r1
	ldr	r1, .L76+24
	ldr	r1, [r4, r1]
	strd	r2, [r1, #40]
	ldr	r3, .L76+32
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r2, [r3, #4]
	ldr	r3, .L76+32
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	add	r3, r3, #8
	mov	r0, r2
	mov	r1, r3
	bl	rt_UpdateTXYLogVars(PLT)
	ldr	r3, .L76+32
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
	bne	.L67
.L73:
	ldr	r3, .L76+32
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r0, [r3, #32]
	ldr	r3, .L76+32
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #8]
	bl	__aeabi_dsub(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r6, r2
	mov	r7, r3
	ldr	r3, .L76+32
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
	beq	.L69
.L70:
	mov	r3, #1
	mov	r5, r3
.L69:
	and	r3, r5, #255
	eor	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L67
	ldr	r3, .L76+32
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r2, .L76+28
	add	r2, r4, r2
	str	r2, [r3, #0]
.L67:
	ldr	r3, .L76+32
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r2, [r3, #16]
	add	r2, r2, #1
	str	r2, [r3, #16]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	bne	.L71
	ldr	r3, .L76+32
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r2, [r3, #20]
	add	r2, r2, #1
	str	r2, [r3, #20]
.L71:
	ldr	r3, .L76+32
	ldr	r3, [r4, r3]
	ldr	r5, [r3, #0]
	ldr	r3, .L76+32
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #16]
	mov	r0, r3
	bl	__aeabi_ui2d(PLT)
	ldr	r3, .L76+32
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #24]
	bl	__aeabi_dmul(PLT)
	mov	r2, r0
	mov	r3, r1
	mov	r6, r2
	mov	r7, r3
	ldr	r3, .L76+32
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #20]
	mov	r0, r3
	bl	__aeabi_ui2d(PLT)
	ldr	r3, .L76+32
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
.LFE9:
	.fnend
	.size	parrot_gettingstarted_compatible_step, .-parrot_gettingstarted_compatible_step
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
	.ascii	"test_mixer\000"
	.align	2
.LC6:
	.ascii	"thrust_out\000"
	.align	2
.LC7:
	.ascii	"alt_est\000"
	.align	2
.LC8:
	.ascii	"w_est\000"
	.align	2
.LC9:
	.ascii	"v_est\000"
	.align	2
.LC10:
	.ascii	"phi_est\000"
	.align	2
.LC11:
	.ascii	"u_est\000"
	.align	2
.LC12:
	.ascii	"theta_est\000"
	.text
	.align	2
	.global	parrot_gettingstarted_compatible_initialize
	.type	parrot_gettingstarted_compatible_initialize, %function
parrot_gettingstarted_compatible_initialize:
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
	ldr	r4, .L99+8
.LPIC1:
	add	r4, pc, r4
	mov	r0, #8
	bl	rt_InitInfAndNaN(PLT)
	ldr	r3, .L99+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	mov	r0, r3
	mov	r1, #0
	mov	r2, #48
	bl	memset(PLT)
	ldr	r3, .L99+12
	ldr	r3, [r4, r3]
	ldr	r1, [r3, #0]
	mov	r2, #0
	mov	r3, #1073741824
	add	r3, r3, #5832704
	strd	r2, [r1, #32]
	ldr	r3, .L99+12
	ldr	r3, [r4, r3]
	ldr	r1, [r3, #0]
	adr	r3, .L99
	ldrd	r2, [r3]
	strd	r2, [r1, #24]
	ldr	r3, .L99+16
	add	r3, r4, r3
	mov	r2, #0
	str	r2, [r3, #68]
	ldr	r3, .L99+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r2, .L99+16
	add	r2, r4, r2
	str	r2, [r3, #4]
	ldr	r3, .L99+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #4]
	mov	r2, #0
	str	r2, [r3, #48]
	ldr	r3, .L99+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #4]
	mov	r2, #0
	str	r2, [r3, #4]
	ldr	r3, .L99+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #4]
	ldr	r2, .L99+20
	add	r2, r4, r2
	str	r2, [r3, #28]
	ldr	r3, .L99+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #4]
	ldr	r2, .L99+24
	add	r2, r4, r2
	str	r2, [r3, #32]
	ldr	r3, .L99+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #4]
	ldr	r2, .L99+24
	add	r2, r4, r2
	str	r2, [r3, #36]
	ldr	r3, .L99+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #4]
	ldr	r2, .L99+28
	add	r2, r4, r2
	str	r2, [r3, #24]
	ldr	r3, .L99+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #4]
	mov	r2, #4
	str	r2, [r3, #12]
	ldr	r3, .L99+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #4]
	mov	r2, #0
	str	r2, [r3, #16]
	ldr	r3, .L99+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #4]
	mov	r2, #1
	str	r2, [r3, #20]
	ldr	r3, .L99+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #4]
	ldr	r2, .L99+24
	add	r2, r4, r2
	str	r2, [r3, #40]
	ldr	r3, .L99+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #4]
	mov	r2, #0
	str	r2, [r3, #52]
	ldr	r3, .L99+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #4]
	mov	r2, #0
	str	r2, [r3, #8]
	ldr	r3, .L99+32
	ldr	r3, [r4, r3]
	mov	r0, r3
	mov	r1, #0
	mov	r2, #360
	bl	memset(PLT)
	ldr	r3, .L99+36
	ldr	r3, [r4, r3]
	ldr	r2, .L99+40	@ float
	str	r2, [r3, #0]	@ float
	ldr	r3, .L99+36
	ldr	r3, [r4, r3]
	ldr	r2, .L99+40	@ float
	str	r2, [r3, #4]	@ float
	ldr	r3, .L99+36
	ldr	r3, [r4, r3]
	ldr	r2, .L99+40	@ float
	str	r2, [r3, #8]	@ float
	ldr	r3, .L99+36
	ldr	r3, [r4, r3]
	ldr	r2, .L99+40	@ float
	str	r2, [r3, #12]	@ float
	ldr	r3, .L99+44
	ldr	r3, [r4, r3]
	mov	r2, #0
	strb	r2, [r3, #0]
	ldr	r3, .L99+48
	ldr	r3, [r4, r3]
	mov	r0, r3
	mov	r1, #0
	mov	r2, #96
	bl	memset(PLT)
	ldr	r3, .L99+52
	ldr	r3, [r4, r3]
	mov	r0, r3
	mov	r1, #0
	mov	r2, #36
	bl	memset(PLT)
	ldr	r3, .L99+56
	ldr	r3, [r4, r3]
	mov	r0, r3
	mov	r1, #0
	mov	r2, #2496
	bl	memset(PLT)
	ldr	r3, .L99+60
	ldr	r3, [r4, r3]
	mov	r0, r3
	mov	r1, #0
	mov	r2, #20
	bl	memset(PLT)
	ldr	r3, .L99+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	ip, [r3, #4]
	ldr	r3, .L99+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r0, [r3, #32]
	ldr	r3, .L99+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #24]
	ldr	lr, .L99+12
	ldr	lr, [r4, lr]
	ldr	lr, [lr, #0]
	strd	r0, [sp]
	strd	r2, [sp, #8]
	str	lr, [sp, #16]
	mov	r0, ip
	mov	r2, #0
	mov	r3, #0
	bl	rt_StartDataLoggingWithStartTime(PLT)
	ldr	r3, .L99+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	ip, [r3, #4]
	ldr	r3, .L99+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r0, [r3, #32]
	ldr	r3, .L99+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #24]
	ldr	lr, .L99+12
	ldr	lr, [r4, lr]
	ldr	lr, [lr, #0]
	strd	r0, [sp]
	strd	r2, [sp, #8]
	str	lr, [sp, #16]
	ldr	r3, .L99+64
	add	r3, r4, r3
	str	r3, [sp, #20]
	mov	r3, #1
	str	r3, [sp, #24]
	mov	r3, #0
	str	r3, [sp, #28]
	mov	r3, #1
	str	r3, [sp, #32]
	adr	r3, .L99
	ldrd	r2, [r3]
	strd	r2, [sp, #40]
	ldr	r3, .L99+68
	add	r3, r4, r3
	str	r3, [sp, #48]
	ldr	r3, .L99+72
	add	r3, r4, r3
	str	r3, [sp, #52]
	mov	r0, ip
	mov	r2, #0
	mov	r3, #0
	bl	rt_CreateStructLogVar(PLT)
	mov	r2, r0
	ldr	r3, .L99+48
	ldr	r3, [r4, r3]
	str	r2, [r3, #48]
	ldr	r3, .L99+48
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	.L90
.L79:
	ldr	r3, .L99+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	ip, [r3, #4]
	ldr	r3, .L99+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r0, [r3, #32]
	ldr	r3, .L99+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #24]
	ldr	lr, .L99+12
	ldr	lr, [r4, lr]
	ldr	lr, [lr, #0]
	strd	r0, [sp]
	strd	r2, [sp, #8]
	str	lr, [sp, #16]
	ldr	r3, .L99+76
	add	r3, r4, r3
	str	r3, [sp, #20]
	mov	r3, #1
	str	r3, [sp, #24]
	mov	r3, #0
	str	r3, [sp, #28]
	mov	r3, #1
	str	r3, [sp, #32]
	b	.L100
.L101:
	.align	3
.L99:
	.word	1202590843
	.word	1064598241
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+8)
	.word	parrot_gettingstarted_compat_M(GOT)
	.word	rt_DataLoggingInfo.4808(GOTOFF)
	.word	.LC1(GOTOFF)
	.word	.LC2(GOTOFF)
	.word	.LC3(GOTOFF)
	.word	parrot_gettingstarted_compati_B(GOT)
	.word	motors_outport(GOT)
	.word	0
	.word	flag_outport(GOT)
	.word	parrot_gettingstarted_compat_DW(GOT)
	.word	cmd_inport(GOT)
	.word	sensor_inport(GOT)
	.word	parrot_gettingstarted_compati_Y(GOT)
	.word	.LC4(GOTOFF)
	.word	rt_ToWksSignalInfo.4820(GOTOFF)
	.word	rt_ToWksBlockName.4821(GOTOFF)
	.word	.LC5(GOTOFF)
.L100:
	adr	r3, .L102
	ldrd	r2, [r3]
	strd	r2, [sp, #40]
	ldr	r3, .L102+8
	add	r3, r4, r3
	str	r3, [sp, #48]
	ldr	r3, .L102+12
	add	r3, r4, r3
	str	r3, [sp, #52]
	mov	r0, ip
	mov	r2, #0
	mov	r3, #0
	bl	rt_CreateStructLogVar(PLT)
	mov	r2, r0
	ldr	r3, .L102+16
	ldr	r3, [r4, r3]
	str	r2, [r3, #52]
	ldr	r3, .L102+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #52]
	cmp	r3, #0
	beq	.L91
.L81:
	ldr	r3, .L102+68
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	ip, [r3, #4]
	ldr	r3, .L102+68
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r0, [r3, #32]
	ldr	r3, .L102+68
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #24]
	ldr	lr, .L102+68
	ldr	lr, [r4, lr]
	ldr	lr, [lr, #0]
	strd	r0, [sp]
	strd	r2, [sp, #8]
	str	lr, [sp, #16]
	ldr	r3, .L102+20
	add	r3, r4, r3
	str	r3, [sp, #20]
	mov	r3, #1
	str	r3, [sp, #24]
	mov	r3, #0
	str	r3, [sp, #28]
	mov	r3, #1
	str	r3, [sp, #32]
	adr	r3, .L102
	ldrd	r2, [r3]
	strd	r2, [sp, #40]
	ldr	r3, .L102+24
	add	r3, r4, r3
	str	r3, [sp, #48]
	ldr	r3, .L102+28
	add	r3, r4, r3
	str	r3, [sp, #52]
	mov	r0, ip
	mov	r2, #0
	mov	r3, #0
	bl	rt_CreateStructLogVar(PLT)
	mov	r2, r0
	ldr	r3, .L102+16
	ldr	r3, [r4, r3]
	str	r2, [r3, #56]
	ldr	r3, .L102+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #56]
	cmp	r3, #0
	beq	.L92
.L82:
	ldr	r3, .L102+68
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	ip, [r3, #4]
	ldr	r3, .L102+68
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r0, [r3, #32]
	ldr	r3, .L102+68
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #24]
	ldr	lr, .L102+68
	ldr	lr, [r4, lr]
	ldr	lr, [lr, #0]
	strd	r0, [sp]
	strd	r2, [sp, #8]
	str	lr, [sp, #16]
	ldr	r3, .L102+32
	add	r3, r4, r3
	str	r3, [sp, #20]
	mov	r3, #1
	str	r3, [sp, #24]
	mov	r3, #0
	str	r3, [sp, #28]
	mov	r3, #1
	str	r3, [sp, #32]
	adr	r3, .L102
	ldrd	r2, [r3]
	strd	r2, [sp, #40]
	ldr	r3, .L102+36
	add	r3, r4, r3
	str	r3, [sp, #48]
	ldr	r3, .L102+40
	add	r3, r4, r3
	str	r3, [sp, #52]
	mov	r0, ip
	mov	r2, #0
	mov	r3, #0
	bl	rt_CreateStructLogVar(PLT)
	mov	r2, r0
	ldr	r3, .L102+16
	ldr	r3, [r4, r3]
	str	r2, [r3, #60]
	ldr	r3, .L102+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #60]
	cmp	r3, #0
	beq	.L93
.L83:
	ldr	r3, .L102+68
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	ip, [r3, #4]
	ldr	r3, .L102+68
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r0, [r3, #32]
	ldr	r3, .L102+68
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #24]
	ldr	lr, .L102+68
	ldr	lr, [r4, lr]
	ldr	lr, [lr, #0]
	strd	r0, [sp]
	strd	r2, [sp, #8]
	str	lr, [sp, #16]
	ldr	r3, .L102+44
	add	r3, r4, r3
	str	r3, [sp, #20]
	mov	r3, #1
	str	r3, [sp, #24]
	mov	r3, #0
	str	r3, [sp, #28]
	mov	r3, #1
	str	r3, [sp, #32]
	adr	r3, .L102
	ldrd	r2, [r3]
	strd	r2, [sp, #40]
	ldr	r3, .L102+48
	add	r3, r4, r3
	str	r3, [sp, #48]
	ldr	r3, .L102+52
	add	r3, r4, r3
	str	r3, [sp, #52]
	mov	r0, ip
	mov	r2, #0
	mov	r3, #0
	bl	rt_CreateStructLogVar(PLT)
	mov	r2, r0
	ldr	r3, .L102+16
	ldr	r3, [r4, r3]
	str	r2, [r3, #64]
	ldr	r3, .L102+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #64]
	cmp	r3, #0
	beq	.L94
.L84:
	ldr	r3, .L102+68
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	ip, [r3, #4]
	ldr	r3, .L102+68
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r0, [r3, #32]
	ldr	r3, .L102+68
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #24]
	ldr	lr, .L102+68
	ldr	lr, [r4, lr]
	ldr	lr, [lr, #0]
	strd	r0, [sp]
	strd	r2, [sp, #8]
	str	lr, [sp, #16]
	ldr	r3, .L102+56
	add	r3, r4, r3
	str	r3, [sp, #20]
	mov	r3, #1
	str	r3, [sp, #24]
	mov	r3, #0
	str	r3, [sp, #28]
	mov	r3, #1
	str	r3, [sp, #32]
	adr	r3, .L102
	ldrd	r2, [r3]
	strd	r2, [sp, #40]
	ldr	r3, .L102+60
	add	r3, r4, r3
	str	r3, [sp, #48]
	ldr	r3, .L102+64
	add	r3, r4, r3
	str	r3, [sp, #52]
	mov	r0, ip
	mov	r2, #0
	mov	r3, #0
	bl	rt_CreateStructLogVar(PLT)
	mov	r2, r0
	ldr	r3, .L102+16
	ldr	r3, [r4, r3]
	str	r2, [r3, #68]
	ldr	r3, .L102+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #68]
	cmp	r3, #0
	beq	.L95
.L85:
	ldr	r3, .L102+68
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	ip, [r3, #4]
	ldr	r3, .L102+68
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r0, [r3, #32]
	ldr	r3, .L102+68
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	b	.L103
.L104:
	.align	3
.L102:
	.word	1202590843
	.word	1064598241
	.word	rt_ToWksSignalInfo.4833(GOTOFF)
	.word	rt_ToWksBlockName.4834(GOTOFF)
	.word	parrot_gettingstarted_compat_DW(GOT)
	.word	.LC6(GOTOFF)
	.word	rt_ToWksSignalInfo.4846(GOTOFF)
	.word	rt_ToWksBlockName.4847(GOTOFF)
	.word	.LC7(GOTOFF)
	.word	rt_ToWksSignalInfo.4859(GOTOFF)
	.word	rt_ToWksBlockName.4860(GOTOFF)
	.word	.LC8(GOTOFF)
	.word	rt_ToWksSignalInfo.4872(GOTOFF)
	.word	rt_ToWksBlockName.4873(GOTOFF)
	.word	.LC9(GOTOFF)
	.word	rt_ToWksSignalInfo.4885(GOTOFF)
	.word	rt_ToWksBlockName.4886(GOTOFF)
	.word	parrot_gettingstarted_compat_M(GOT)
	.word	.LC10(GOTOFF)
.L103:
	ldrd	r2, [r3, #24]
	ldr	lr, .L102+68
	ldr	lr, [r4, lr]
	ldr	lr, [lr, #0]
	strd	r0, [sp]
	strd	r2, [sp, #8]
	str	lr, [sp, #16]
	ldr	r3, .L102+72
	add	r3, r4, r3
	str	r3, [sp, #20]
	mov	r3, #1
	str	r3, [sp, #24]
	mov	r3, #0
	str	r3, [sp, #28]
	mov	r3, #1
	str	r3, [sp, #32]
	adr	r3, .L105
	ldrd	r2, [r3]
	strd	r2, [sp, #40]
	ldr	r3, .L105+8
	add	r3, r4, r3
	str	r3, [sp, #48]
	ldr	r3, .L105+12
	add	r3, r4, r3
	str	r3, [sp, #52]
	mov	r0, ip
	mov	r2, #0
	mov	r3, #0
	bl	rt_CreateStructLogVar(PLT)
	mov	r2, r0
	ldr	r3, .L105+16
	ldr	r3, [r4, r3]
	str	r2, [r3, #72]
	ldr	r3, .L105+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #72]
	cmp	r3, #0
	beq	.L96
.L86:
	ldr	r3, .L105+20
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	ip, [r3, #4]
	ldr	r3, .L105+20
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r0, [r3, #32]
	ldr	r3, .L105+20
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #24]
	ldr	lr, .L105+20
	ldr	lr, [r4, lr]
	ldr	lr, [lr, #0]
	strd	r0, [sp]
	strd	r2, [sp, #8]
	str	lr, [sp, #16]
	ldr	r3, .L105+24
	add	r3, r4, r3
	str	r3, [sp, #20]
	mov	r3, #1
	str	r3, [sp, #24]
	mov	r3, #0
	str	r3, [sp, #28]
	mov	r3, #1
	str	r3, [sp, #32]
	adr	r3, .L105
	ldrd	r2, [r3]
	strd	r2, [sp, #40]
	ldr	r3, .L105+28
	add	r3, r4, r3
	str	r3, [sp, #48]
	ldr	r3, .L105+32
	add	r3, r4, r3
	str	r3, [sp, #52]
	mov	r0, ip
	mov	r2, #0
	mov	r3, #0
	bl	rt_CreateStructLogVar(PLT)
	mov	r2, r0
	ldr	r3, .L105+16
	ldr	r3, [r4, r3]
	str	r2, [r3, #76]
	ldr	r3, .L105+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #76]
	cmp	r3, #0
	beq	.L97
.L87:
	ldr	r3, .L105+20
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldr	ip, [r3, #4]
	ldr	r3, .L105+20
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r0, [r3, #32]
	ldr	r3, .L105+20
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0]
	ldrd	r2, [r3, #24]
	ldr	lr, .L105+20
	ldr	lr, [r4, lr]
	ldr	lr, [lr, #0]
	strd	r0, [sp]
	strd	r2, [sp, #8]
	str	lr, [sp, #16]
	ldr	r3, .L105+36
	add	r3, r4, r3
	str	r3, [sp, #20]
	mov	r3, #1
	str	r3, [sp, #24]
	mov	r3, #0
	str	r3, [sp, #28]
	mov	r3, #1
	str	r3, [sp, #32]
	adr	r3, .L105
	ldrd	r2, [r3]
	strd	r2, [sp, #40]
	ldr	r3, .L105+40
	add	r3, r4, r3
	str	r3, [sp, #48]
	ldr	r3, .L105+44
	add	r3, r4, r3
	str	r3, [sp, #52]
	mov	r0, ip
	mov	r2, #0
	mov	r3, #0
	bl	rt_CreateStructLogVar(PLT)
	mov	r2, r0
	ldr	r3, .L105+16
	ldr	r3, [r4, r3]
	str	r2, [r3, #80]
	ldr	r3, .L105+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #80]
	cmp	r3, #0
	beq	.L98
.L88:
	ldr	r3, .L105+16
	ldr	r3, [r4, r3]
	add	r0, r3, #92
	bl	parrot_g_EnabledSubsystem_Start(PLT)
	ldr	r3, .L105+16
	ldr	r3, [r4, r3]
	add	r0, r3, #90
	bl	parrot_g_EnabledSubsystem_Start(PLT)
	ldr	r3, .L105+16
	ldr	r3, [r4, r3]
	add	r0, r3, #88
	bl	parrot_g_EnabledSubsystem_Start(PLT)
	ldr	r3, .L105+16
	ldr	r3, [r4, r3]
	mov	r2, #0
	strb	r2, [r3, #87]
	ldr	r3, .L105+16
	ldr	r3, [r4, r3]
	add	r0, r3, #91
	bl	parrot__MeasurementUpdate_Start(PLT)
	ldr	r3, .L105+16
	ldr	r3, [r4, r3]
	add	r0, r3, #89
	bl	parrot__MeasurementUpdate_Start(PLT)
	ldr	r3, .L105+16
	ldr	r3, [r4, r3]
	mov	r2, #1
	strb	r2, [r3, #84]
	ldr	r3, .L105+16
	ldr	r3, [r4, r3]
	mov	r2, #1
	strb	r2, [r3, #85]
	ldr	r3, .L105+16
	ldr	r3, [r4, r3]
	mov	r2, #1
	strb	r2, [r3, #86]
	ldr	r3, .L105+48
	ldr	r3, [r4, r3]
	add	r0, r3, #344
	ldr	r3, .L105+52
	ldr	r3, [r4, r3]
	add	r1, r3, #848
	bl	parrot_ge_EnabledSubsystem_Init(PLT)
	ldr	r3, .L105+48
	ldr	r3, [r4, r3]
	add	r0, r3, #312
	ldr	r3, .L105+52
	ldr	r3, [r4, r3]
	add	r1, r3, #832
	bl	parrot_ge_EnabledSubsystem_Init(PLT)
	ldr	r3, .L105+48
	ldr	r3, [r4, r3]
	add	r0, r3, #280
	ldr	r3, .L105+52
	ldr	r3, [r4, r3]
	add	r1, r3, #816
	bl	parrot_ge_EnabledSubsystem_Init(PLT)
	ldr	r3, .L105+52
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #224]
	ldr	r1, .L105+48
	ldr	r1, [r4, r1]
	strd	r2, [r1, #176]
	ldr	r3, .L105+52
	ldr	r3, [r4, r3]
	ldrd	r2, [r3, #224]
	ldr	r1, .L105+48
	ldr	r1, [r4, r1]
	strd	r2, [r1, #184]
	ldr	r3, .L105+48
	ldr	r3, [r4, r3]
	add	r0, r3, #328
	ldr	r3, .L105+52
	ldr	r3, [r4, r3]
	add	r1, r3, #840
	bl	parrot_g_MeasurementUpdate_Init(PLT)
	ldr	r3, .L105+48
	ldr	r3, [r4, r3]
	add	r0, r3, #296
	ldr	r3, .L105+52
	ldr	r3, [r4, r3]
	add	r1, r3, #824
	bl	parrot_g_MeasurementUpdate_Init(PLT)
	b	.L89
.L90:
	mov	r0, r0	@ nop
	b	.L89
.L91:
	mov	r0, r0	@ nop
	b	.L89
.L92:
	mov	r0, r0	@ nop
	b	.L89
.L93:
	mov	r0, r0	@ nop
	b	.L89
.L94:
	mov	r0, r0	@ nop
	b	.L89
.L95:
	mov	r0, r0	@ nop
	b	.L89
.L96:
	mov	r0, r0	@ nop
	b	.L89
.L97:
	mov	r0, r0	@ nop
	b	.L89
.L106:
	.align	3
.L105:
	.word	1202590843
	.word	1064598241
	.word	rt_ToWksSignalInfo.4898(GOTOFF)
	.word	rt_ToWksBlockName.4899(GOTOFF)
	.word	parrot_gettingstarted_compat_DW(GOT)
	.word	parrot_gettingstarted_compat_M(GOT)
	.word	.LC11(GOTOFF)
	.word	rt_ToWksSignalInfo.4911(GOTOFF)
	.word	rt_ToWksBlockName.4912(GOTOFF)
	.word	.LC12(GOTOFF)
	.word	rt_ToWksSignalInfo.4924(GOTOFF)
	.word	rt_ToWksBlockName.4925(GOTOFF)
	.word	parrot_gettingstarted_compati_B(GOT)
	.word	parrot_gettingstarted_compati_P(GOT)
.L98:
	mov	r0, r0	@ nop
.L89:
	sub	sp, fp, #8
	ldmfd	sp!, {r4, fp, pc}
.LFE10:
	.fnend
	.size	parrot_gettingstarted_compatible_initialize, .-parrot_gettingstarted_compatible_initialize
	.align	2
	.global	parrot_gettingstarted_compatible_terminate
	.type	parrot_gettingstarted_compatible_terminate, %function
parrot_gettingstarted_compatible_terminate:
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
	.size	parrot_gettingstarted_compatible_terminate, .-parrot_gettingstarted_compatible_terminate
	.local	rt_DataLoggingInfo.4808
	.comm	rt_DataLoggingInfo.4808,72,4
	.section	.data.rel.local,"aw",%progbits
	.align	2
	.type	rt_ToWksSignalInfo.4820, %object
	.size	rt_ToWksSignalInfo.4820, 76
rt_ToWksSignalInfo.4820:
	.word	1
	.word	rt_ToWksWidths.4809
	.word	rt_ToWksNumDimensions.4810
	.word	rt_ToWksDimensions.4811
	.word	rt_ToWksIsVarDims.4812
	.word	rt_ToWksCurrSigDims.4813
	.word	rt_ToWksCurrSigDimsSize.4814
	.word	rt_ToWksDataTypeIds.4815
	.word	rt_ToWksComplexSignals.4816
	.word	rt_ToWksFrameData.4817
	.word	rt_ToWksLoggingPreprocessingFcnPtrs.4818
	.word	rt_ToWksLabels.4819
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.rodata
	.align	2
	.type	rt_ToWksBlockName.4821, %object
	.size	rt_ToWksBlockName.4821, 69
rt_ToWksBlockName.4821:
	.ascii	"parrot_gettingstarted_compatible/Flight_Control_Sys"
	.ascii	"tem/To Workspace1\000"
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksSignalInfo.4833, %object
	.size	rt_ToWksSignalInfo.4833, 76
rt_ToWksSignalInfo.4833:
	.word	1
	.word	rt_ToWksWidths.4822
	.word	rt_ToWksNumDimensions.4823
	.word	rt_ToWksDimensions.4824
	.word	rt_ToWksIsVarDims.4825
	.word	rt_ToWksCurrSigDims.4826
	.word	rt_ToWksCurrSigDimsSize.4827
	.word	rt_ToWksDataTypeIds.4828
	.word	rt_ToWksComplexSignals.4829
	.word	rt_ToWksFrameData.4830
	.word	rt_ToWksLoggingPreprocessingFcnPtrs.4831
	.word	rt_ToWksLabels.4832
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.rodata
	.align	2
	.type	rt_ToWksBlockName.4834, %object
	.size	rt_ToWksBlockName.4834, 69
rt_ToWksBlockName.4834:
	.ascii	"parrot_gettingstarted_compatible/Flight_Control_Sys"
	.ascii	"tem/To Workspace2\000"
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksSignalInfo.4846, %object
	.size	rt_ToWksSignalInfo.4846, 76
rt_ToWksSignalInfo.4846:
	.word	1
	.word	rt_ToWksWidths.4835
	.word	rt_ToWksNumDimensions.4836
	.word	rt_ToWksDimensions.4837
	.word	rt_ToWksIsVarDims.4838
	.word	rt_ToWksCurrSigDims.4839
	.word	rt_ToWksCurrSigDimsSize.4840
	.word	rt_ToWksDataTypeIds.4841
	.word	rt_ToWksComplexSignals.4842
	.word	rt_ToWksFrameData.4843
	.word	rt_ToWksLoggingPreprocessingFcnPtrs.4844
	.word	rt_ToWksLabels.4845
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.rodata
	.align	2
	.type	rt_ToWksBlockName.4847, %object
	.size	rt_ToWksBlockName.4847, 85
rt_ToWksBlockName.4847:
	.ascii	"parrot_gettingstarted_compatible/Flight_Control_Sys"
	.ascii	"tem/Thrust Regulator/To Workspace\000"
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksSignalInfo.4859, %object
	.size	rt_ToWksSignalInfo.4859, 76
rt_ToWksSignalInfo.4859:
	.word	1
	.word	rt_ToWksWidths.4848
	.word	rt_ToWksNumDimensions.4849
	.word	rt_ToWksDimensions.4850
	.word	rt_ToWksIsVarDims.4851
	.word	rt_ToWksCurrSigDims.4852
	.word	rt_ToWksCurrSigDimsSize.4853
	.word	rt_ToWksDataTypeIds.4854
	.word	rt_ToWksComplexSignals.4855
	.word	rt_ToWksFrameData.4856
	.word	rt_ToWksLoggingPreprocessingFcnPtrs.4857
	.word	rt_ToWksLabels.4858
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.rodata
	.align	2
	.type	rt_ToWksBlockName.4860, %object
	.size	rt_ToWksBlockName.4860, 68
rt_ToWksBlockName.4860:
	.ascii	"parrot_gettingstarted_compatible/Flight_Control_Sys"
	.ascii	"tem/To Workspace\000"
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksSignalInfo.4872, %object
	.size	rt_ToWksSignalInfo.4872, 76
rt_ToWksSignalInfo.4872:
	.word	1
	.word	rt_ToWksWidths.4861
	.word	rt_ToWksNumDimensions.4862
	.word	rt_ToWksDimensions.4863
	.word	rt_ToWksIsVarDims.4864
	.word	rt_ToWksCurrSigDims.4865
	.word	rt_ToWksCurrSigDimsSize.4866
	.word	rt_ToWksDataTypeIds.4867
	.word	rt_ToWksComplexSignals.4868
	.word	rt_ToWksFrameData.4869
	.word	rt_ToWksLoggingPreprocessingFcnPtrs.4870
	.word	rt_ToWksLabels.4871
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.rodata
	.align	2
	.type	rt_ToWksBlockName.4873, %object
	.size	rt_ToWksBlockName.4873, 122
rt_ToWksBlockName.4873:
	.ascii	"parrot_gettingstarted_compatible/Flight_Control_Sys"
	.ascii	"tem/Kalman Filter: Altitude and Vertical Speed Esti"
	.ascii	"mate1/To Workspace1\000"
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksSignalInfo.4885, %object
	.size	rt_ToWksSignalInfo.4885, 76
rt_ToWksSignalInfo.4885:
	.word	1
	.word	rt_ToWksWidths.4874
	.word	rt_ToWksNumDimensions.4875
	.word	rt_ToWksDimensions.4876
	.word	rt_ToWksIsVarDims.4877
	.word	rt_ToWksCurrSigDims.4878
	.word	rt_ToWksCurrSigDimsSize.4879
	.word	rt_ToWksDataTypeIds.4880
	.word	rt_ToWksComplexSignals.4881
	.word	rt_ToWksFrameData.4882
	.word	rt_ToWksLoggingPreprocessingFcnPtrs.4883
	.word	rt_ToWksLabels.4884
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.rodata
	.align	2
	.type	rt_ToWksBlockName.4886, %object
	.size	rt_ToWksBlockName.4886, 80
rt_ToWksBlockName.4886:
	.ascii	"parrot_gettingstarted_compatible/Flight_Control_Sys"
	.ascii	"tem/Subsystem1/To Workspace3\000"
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksSignalInfo.4898, %object
	.size	rt_ToWksSignalInfo.4898, 76
rt_ToWksSignalInfo.4898:
	.word	1
	.word	rt_ToWksWidths.4887
	.word	rt_ToWksNumDimensions.4888
	.word	rt_ToWksDimensions.4889
	.word	rt_ToWksIsVarDims.4890
	.word	rt_ToWksCurrSigDims.4891
	.word	rt_ToWksCurrSigDimsSize.4892
	.word	rt_ToWksDataTypeIds.4893
	.word	rt_ToWksComplexSignals.4894
	.word	rt_ToWksFrameData.4895
	.word	rt_ToWksLoggingPreprocessingFcnPtrs.4896
	.word	rt_ToWksLabels.4897
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.rodata
	.align	2
	.type	rt_ToWksBlockName.4899, %object
	.size	rt_ToWksBlockName.4899, 80
rt_ToWksBlockName.4899:
	.ascii	"parrot_gettingstarted_compatible/Flight_Control_Sys"
	.ascii	"tem/Subsystem1/To Workspace4\000"
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksSignalInfo.4911, %object
	.size	rt_ToWksSignalInfo.4911, 76
rt_ToWksSignalInfo.4911:
	.word	1
	.word	rt_ToWksWidths.4900
	.word	rt_ToWksNumDimensions.4901
	.word	rt_ToWksDimensions.4902
	.word	rt_ToWksIsVarDims.4903
	.word	rt_ToWksCurrSigDims.4904
	.word	rt_ToWksCurrSigDimsSize.4905
	.word	rt_ToWksDataTypeIds.4906
	.word	rt_ToWksComplexSignals.4907
	.word	rt_ToWksFrameData.4908
	.word	rt_ToWksLoggingPreprocessingFcnPtrs.4909
	.word	rt_ToWksLabels.4910
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.rodata
	.align	2
	.type	rt_ToWksBlockName.4912, %object
	.size	rt_ToWksBlockName.4912, 80
rt_ToWksBlockName.4912:
	.ascii	"parrot_gettingstarted_compatible/Flight_Control_Sys"
	.ascii	"tem/Subsystem2/To Workspace5\000"
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksSignalInfo.4924, %object
	.size	rt_ToWksSignalInfo.4924, 76
rt_ToWksSignalInfo.4924:
	.word	1
	.word	rt_ToWksWidths.4913
	.word	rt_ToWksNumDimensions.4914
	.word	rt_ToWksDimensions.4915
	.word	rt_ToWksIsVarDims.4916
	.word	rt_ToWksCurrSigDims.4917
	.word	rt_ToWksCurrSigDimsSize.4918
	.word	rt_ToWksDataTypeIds.4919
	.word	rt_ToWksComplexSignals.4920
	.word	rt_ToWksFrameData.4921
	.word	rt_ToWksLoggingPreprocessingFcnPtrs.4922
	.word	rt_ToWksLabels.4923
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.rodata
	.align	2
	.type	rt_ToWksBlockName.4925, %object
	.size	rt_ToWksBlockName.4925, 80
rt_ToWksBlockName.4925:
	.ascii	"parrot_gettingstarted_compatible/Flight_Control_Sys"
	.ascii	"tem/Subsystem2/To Workspace6\000"
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksLabels.4923, %object
	.size	rt_ToWksLabels.4923, 4
rt_ToWksLabels.4923:
	.word	.LC12
	.local	rt_ToWksLoggingPreprocessingFcnPtrs.4922
	.comm	rt_ToWksLoggingPreprocessingFcnPtrs.4922,4,4
	.local	rt_ToWksFrameData.4921
	.comm	rt_ToWksFrameData.4921,4,4
	.local	rt_ToWksComplexSignals.4920
	.comm	rt_ToWksComplexSignals.4920,4,4
	.data
	.align	2
	.type	rt_ToWksDataTypeIds.4919, %object
	.size	rt_ToWksDataTypeIds.4919, 4
rt_ToWksDataTypeIds.4919:
	.word	1
	.align	2
	.type	rt_ToWksCurrSigDimsSize.4918, %object
	.size	rt_ToWksCurrSigDimsSize.4918, 4
rt_ToWksCurrSigDimsSize.4918:
	.word	4
	.local	rt_ToWksCurrSigDims.4917
	.comm	rt_ToWksCurrSigDims.4917,4,4
	.local	rt_ToWksIsVarDims.4916
	.comm	rt_ToWksIsVarDims.4916,1,4
	.align	2
	.type	rt_ToWksDimensions.4915, %object
	.size	rt_ToWksDimensions.4915, 4
rt_ToWksDimensions.4915:
	.word	1
	.align	2
	.type	rt_ToWksNumDimensions.4914, %object
	.size	rt_ToWksNumDimensions.4914, 4
rt_ToWksNumDimensions.4914:
	.word	1
	.align	2
	.type	rt_ToWksWidths.4913, %object
	.size	rt_ToWksWidths.4913, 4
rt_ToWksWidths.4913:
	.word	1
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksLabels.4910, %object
	.size	rt_ToWksLabels.4910, 4
rt_ToWksLabels.4910:
	.word	.LC11
	.local	rt_ToWksLoggingPreprocessingFcnPtrs.4909
	.comm	rt_ToWksLoggingPreprocessingFcnPtrs.4909,4,4
	.local	rt_ToWksFrameData.4908
	.comm	rt_ToWksFrameData.4908,4,4
	.local	rt_ToWksComplexSignals.4907
	.comm	rt_ToWksComplexSignals.4907,4,4
	.data
	.align	2
	.type	rt_ToWksDataTypeIds.4906, %object
	.size	rt_ToWksDataTypeIds.4906, 4
rt_ToWksDataTypeIds.4906:
	.word	1
	.align	2
	.type	rt_ToWksCurrSigDimsSize.4905, %object
	.size	rt_ToWksCurrSigDimsSize.4905, 4
rt_ToWksCurrSigDimsSize.4905:
	.word	4
	.local	rt_ToWksCurrSigDims.4904
	.comm	rt_ToWksCurrSigDims.4904,4,4
	.local	rt_ToWksIsVarDims.4903
	.comm	rt_ToWksIsVarDims.4903,1,4
	.align	2
	.type	rt_ToWksDimensions.4902, %object
	.size	rt_ToWksDimensions.4902, 4
rt_ToWksDimensions.4902:
	.word	1
	.align	2
	.type	rt_ToWksNumDimensions.4901, %object
	.size	rt_ToWksNumDimensions.4901, 4
rt_ToWksNumDimensions.4901:
	.word	1
	.align	2
	.type	rt_ToWksWidths.4900, %object
	.size	rt_ToWksWidths.4900, 4
rt_ToWksWidths.4900:
	.word	1
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksLabels.4897, %object
	.size	rt_ToWksLabels.4897, 4
rt_ToWksLabels.4897:
	.word	.LC10
	.local	rt_ToWksLoggingPreprocessingFcnPtrs.4896
	.comm	rt_ToWksLoggingPreprocessingFcnPtrs.4896,4,4
	.local	rt_ToWksFrameData.4895
	.comm	rt_ToWksFrameData.4895,4,4
	.local	rt_ToWksComplexSignals.4894
	.comm	rt_ToWksComplexSignals.4894,4,4
	.local	rt_ToWksDataTypeIds.4893
	.comm	rt_ToWksDataTypeIds.4893,4,4
	.data
	.align	2
	.type	rt_ToWksCurrSigDimsSize.4892, %object
	.size	rt_ToWksCurrSigDimsSize.4892, 4
rt_ToWksCurrSigDimsSize.4892:
	.word	4
	.local	rt_ToWksCurrSigDims.4891
	.comm	rt_ToWksCurrSigDims.4891,4,4
	.local	rt_ToWksIsVarDims.4890
	.comm	rt_ToWksIsVarDims.4890,1,4
	.align	2
	.type	rt_ToWksDimensions.4889, %object
	.size	rt_ToWksDimensions.4889, 4
rt_ToWksDimensions.4889:
	.word	1
	.align	2
	.type	rt_ToWksNumDimensions.4888, %object
	.size	rt_ToWksNumDimensions.4888, 4
rt_ToWksNumDimensions.4888:
	.word	1
	.align	2
	.type	rt_ToWksWidths.4887, %object
	.size	rt_ToWksWidths.4887, 4
rt_ToWksWidths.4887:
	.word	1
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksLabels.4884, %object
	.size	rt_ToWksLabels.4884, 4
rt_ToWksLabels.4884:
	.word	.LC9
	.local	rt_ToWksLoggingPreprocessingFcnPtrs.4883
	.comm	rt_ToWksLoggingPreprocessingFcnPtrs.4883,4,4
	.local	rt_ToWksFrameData.4882
	.comm	rt_ToWksFrameData.4882,4,4
	.local	rt_ToWksComplexSignals.4881
	.comm	rt_ToWksComplexSignals.4881,4,4
	.local	rt_ToWksDataTypeIds.4880
	.comm	rt_ToWksDataTypeIds.4880,4,4
	.data
	.align	2
	.type	rt_ToWksCurrSigDimsSize.4879, %object
	.size	rt_ToWksCurrSigDimsSize.4879, 4
rt_ToWksCurrSigDimsSize.4879:
	.word	4
	.local	rt_ToWksCurrSigDims.4878
	.comm	rt_ToWksCurrSigDims.4878,4,4
	.local	rt_ToWksIsVarDims.4877
	.comm	rt_ToWksIsVarDims.4877,1,4
	.align	2
	.type	rt_ToWksDimensions.4876, %object
	.size	rt_ToWksDimensions.4876, 4
rt_ToWksDimensions.4876:
	.word	1
	.align	2
	.type	rt_ToWksNumDimensions.4875, %object
	.size	rt_ToWksNumDimensions.4875, 4
rt_ToWksNumDimensions.4875:
	.word	1
	.align	2
	.type	rt_ToWksWidths.4874, %object
	.size	rt_ToWksWidths.4874, 4
rt_ToWksWidths.4874:
	.word	1
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksLabels.4871, %object
	.size	rt_ToWksLabels.4871, 4
rt_ToWksLabels.4871:
	.word	.LC2
	.local	rt_ToWksLoggingPreprocessingFcnPtrs.4870
	.comm	rt_ToWksLoggingPreprocessingFcnPtrs.4870,4,4
	.local	rt_ToWksFrameData.4869
	.comm	rt_ToWksFrameData.4869,4,4
	.local	rt_ToWksComplexSignals.4868
	.comm	rt_ToWksComplexSignals.4868,4,4
	.data
	.align	2
	.type	rt_ToWksDataTypeIds.4867, %object
	.size	rt_ToWksDataTypeIds.4867, 4
rt_ToWksDataTypeIds.4867:
	.word	1
	.align	2
	.type	rt_ToWksCurrSigDimsSize.4866, %object
	.size	rt_ToWksCurrSigDimsSize.4866, 4
rt_ToWksCurrSigDimsSize.4866:
	.word	4
	.local	rt_ToWksCurrSigDims.4865
	.comm	rt_ToWksCurrSigDims.4865,4,4
	.local	rt_ToWksIsVarDims.4864
	.comm	rt_ToWksIsVarDims.4864,1,4
	.align	2
	.type	rt_ToWksDimensions.4863, %object
	.size	rt_ToWksDimensions.4863, 4
rt_ToWksDimensions.4863:
	.word	1
	.align	2
	.type	rt_ToWksNumDimensions.4862, %object
	.size	rt_ToWksNumDimensions.4862, 4
rt_ToWksNumDimensions.4862:
	.word	1
	.align	2
	.type	rt_ToWksWidths.4861, %object
	.size	rt_ToWksWidths.4861, 4
rt_ToWksWidths.4861:
	.word	1
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksLabels.4858, %object
	.size	rt_ToWksLabels.4858, 4
rt_ToWksLabels.4858:
	.word	.LC2
	.local	rt_ToWksLoggingPreprocessingFcnPtrs.4857
	.comm	rt_ToWksLoggingPreprocessingFcnPtrs.4857,4,4
	.local	rt_ToWksFrameData.4856
	.comm	rt_ToWksFrameData.4856,4,4
	.local	rt_ToWksComplexSignals.4855
	.comm	rt_ToWksComplexSignals.4855,4,4
	.data
	.align	2
	.type	rt_ToWksDataTypeIds.4854, %object
	.size	rt_ToWksDataTypeIds.4854, 4
rt_ToWksDataTypeIds.4854:
	.word	1
	.align	2
	.type	rt_ToWksCurrSigDimsSize.4853, %object
	.size	rt_ToWksCurrSigDimsSize.4853, 4
rt_ToWksCurrSigDimsSize.4853:
	.word	4
	.local	rt_ToWksCurrSigDims.4852
	.comm	rt_ToWksCurrSigDims.4852,4,4
	.local	rt_ToWksIsVarDims.4851
	.comm	rt_ToWksIsVarDims.4851,1,4
	.align	2
	.type	rt_ToWksDimensions.4850, %object
	.size	rt_ToWksDimensions.4850, 4
rt_ToWksDimensions.4850:
	.word	1
	.align	2
	.type	rt_ToWksNumDimensions.4849, %object
	.size	rt_ToWksNumDimensions.4849, 4
rt_ToWksNumDimensions.4849:
	.word	1
	.align	2
	.type	rt_ToWksWidths.4848, %object
	.size	rt_ToWksWidths.4848, 4
rt_ToWksWidths.4848:
	.word	1
	.section	.rodata
	.align	2
.LC13:
	.ascii	"Thrust\000"
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksLabels.4845, %object
	.size	rt_ToWksLabels.4845, 4
rt_ToWksLabels.4845:
	.word	.LC13
	.local	rt_ToWksLoggingPreprocessingFcnPtrs.4844
	.comm	rt_ToWksLoggingPreprocessingFcnPtrs.4844,4,4
	.local	rt_ToWksFrameData.4843
	.comm	rt_ToWksFrameData.4843,4,4
	.local	rt_ToWksComplexSignals.4842
	.comm	rt_ToWksComplexSignals.4842,4,4
	.local	rt_ToWksDataTypeIds.4841
	.comm	rt_ToWksDataTypeIds.4841,4,4
	.data
	.align	2
	.type	rt_ToWksCurrSigDimsSize.4840, %object
	.size	rt_ToWksCurrSigDimsSize.4840, 4
rt_ToWksCurrSigDimsSize.4840:
	.word	4
	.local	rt_ToWksCurrSigDims.4839
	.comm	rt_ToWksCurrSigDims.4839,4,4
	.local	rt_ToWksIsVarDims.4838
	.comm	rt_ToWksIsVarDims.4838,1,4
	.align	2
	.type	rt_ToWksDimensions.4837, %object
	.size	rt_ToWksDimensions.4837, 4
rt_ToWksDimensions.4837:
	.word	1
	.align	2
	.type	rt_ToWksNumDimensions.4836, %object
	.size	rt_ToWksNumDimensions.4836, 4
rt_ToWksNumDimensions.4836:
	.word	1
	.align	2
	.type	rt_ToWksWidths.4835, %object
	.size	rt_ToWksWidths.4835, 4
rt_ToWksWidths.4835:
	.word	1
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksLabels.4832, %object
	.size	rt_ToWksLabels.4832, 4
rt_ToWksLabels.4832:
	.word	.LC2
	.local	rt_ToWksLoggingPreprocessingFcnPtrs.4831
	.comm	rt_ToWksLoggingPreprocessingFcnPtrs.4831,4,4
	.local	rt_ToWksFrameData.4830
	.comm	rt_ToWksFrameData.4830,4,4
	.local	rt_ToWksComplexSignals.4829
	.comm	rt_ToWksComplexSignals.4829,4,4
	.local	rt_ToWksDataTypeIds.4828
	.comm	rt_ToWksDataTypeIds.4828,4,4
	.data
	.align	2
	.type	rt_ToWksCurrSigDimsSize.4827, %object
	.size	rt_ToWksCurrSigDimsSize.4827, 4
rt_ToWksCurrSigDimsSize.4827:
	.word	4
	.local	rt_ToWksCurrSigDims.4826
	.comm	rt_ToWksCurrSigDims.4826,4,4
	.local	rt_ToWksIsVarDims.4825
	.comm	rt_ToWksIsVarDims.4825,1,4
	.align	2
	.type	rt_ToWksDimensions.4824, %object
	.size	rt_ToWksDimensions.4824, 4
rt_ToWksDimensions.4824:
	.word	4
	.align	2
	.type	rt_ToWksNumDimensions.4823, %object
	.size	rt_ToWksNumDimensions.4823, 4
rt_ToWksNumDimensions.4823:
	.word	1
	.align	2
	.type	rt_ToWksWidths.4822, %object
	.size	rt_ToWksWidths.4822, 4
rt_ToWksWidths.4822:
	.word	4
	.section	.data.rel.local
	.align	2
	.type	rt_ToWksLabels.4819, %object
	.size	rt_ToWksLabels.4819, 4
rt_ToWksLabels.4819:
	.word	.LC2
	.local	rt_ToWksLoggingPreprocessingFcnPtrs.4818
	.comm	rt_ToWksLoggingPreprocessingFcnPtrs.4818,4,4
	.local	rt_ToWksFrameData.4817
	.comm	rt_ToWksFrameData.4817,4,4
	.local	rt_ToWksComplexSignals.4816
	.comm	rt_ToWksComplexSignals.4816,4,4
	.local	rt_ToWksDataTypeIds.4815
	.comm	rt_ToWksDataTypeIds.4815,4,4
	.data
	.align	2
	.type	rt_ToWksCurrSigDimsSize.4814, %object
	.size	rt_ToWksCurrSigDimsSize.4814, 4
rt_ToWksCurrSigDimsSize.4814:
	.word	4
	.local	rt_ToWksCurrSigDims.4813
	.comm	rt_ToWksCurrSigDims.4813,4,4
	.local	rt_ToWksIsVarDims.4812
	.comm	rt_ToWksIsVarDims.4812,1,4
	.align	2
	.type	rt_ToWksDimensions.4811, %object
	.size	rt_ToWksDimensions.4811, 4
rt_ToWksDimensions.4811:
	.word	4
	.align	2
	.type	rt_ToWksNumDimensions.4810, %object
	.size	rt_ToWksNumDimensions.4810, 4
rt_ToWksNumDimensions.4810:
	.word	1
	.align	2
	.type	rt_ToWksWidths.4809, %object
	.size	rt_ToWksWidths.4809, 4
rt_ToWksWidths.4809:
	.word	4
	.ident	"GCC: (Sourcery G++ Lite 2009q3-67) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
