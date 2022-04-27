/*
 * Controller_private.h
 *
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * Code generation for model "Controller".
 *
 * Model version              : 2.18
 * Simulink Coder version : 9.5 (R2021a) 14-Nov-2020
 * C source code generated on : Tue Apr 26 22:59:01 2022
 *
 * Target selection: ert.tlc
 * Note: GRT includes extra infrastructure and instrumentation for prototyping
 * Embedded hardware selection: ARM Compatible->ARM 9
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#ifndef RTW_HEADER_Controller_private_h_
#define RTW_HEADER_Controller_private_h_
#include "rtwtypes.h"
#include "builtin_typeid_types.h"
#include "multiword_types.h"
#include "Controller.h"

/* Private macros used by the generated code to access rtModel */
#ifndef rtmIsMajorTimeStep
#define rtmIsMajorTimeStep(rtm)        (((rtm)->Timing.simTimeStep) == MAJOR_TIME_STEP)
#endif

#ifndef rtmIsMinorTimeStep
#define rtmIsMinorTimeStep(rtm)        (((rtm)->Timing.simTimeStep) == MINOR_TIME_STEP)
#endif

#ifndef rtmSetTFinal
#define rtmSetTFinal(rtm, val)         ((rtm)->Timing.tFinal = (val))
#endif

#ifndef rtmSetTPtr
#define rtmSetTPtr(rtm, val)           ((rtm)->Timing.t = (val))
#endif

extern void Controll_MeasurementUpdate_Init(B_MeasurementUpdate_Controlle_T
  *localB, P_MeasurementUpdate_Controlle_T *localP);
extern void Control_MeasurementUpdate_Start(DW_MeasurementUpdate_Controll_T
  *localDW);
extern void Contr_MeasurementUpdate_Disable(B_MeasurementUpdate_Controlle_T
  *localB, DW_MeasurementUpdate_Controll_T *localDW,
  P_MeasurementUpdate_Controlle_T *localP);
extern void Controller_MeasurementUpdate(boolean_T rtu_Enable, const real_T
  rtu_Lk[2], real_T rtu_yk, const real_T rtu_Ck[2], const real_T rtu_xhatkk1[2],
  real_T rtu_Dk, real_T rtu_uk, B_MeasurementUpdate_Controlle_T *localB,
  DW_MeasurementUpdate_Controll_T *localDW, P_MeasurementUpdate_Controlle_T
  *localP);
extern void Controlle_EnabledSubsystem_Init(B_EnabledSubsystem_Controller_T
  *localB, P_EnabledSubsystem_Controller_T *localP);
extern void Controll_EnabledSubsystem_Start(DW_EnabledSubsystem_Controlle_T
  *localDW);
extern void Contro_EnabledSubsystem_Disable(B_EnabledSubsystem_Controller_T
  *localB, DW_EnabledSubsystem_Controlle_T *localDW,
  P_EnabledSubsystem_Controller_T *localP);
extern void Controller_EnabledSubsystem(boolean_T rtu_Enable, const real_T
  rtu_Mk[2], const real_T rtu_Ck[2], real_T rtu_yk, const real_T rtu_xhatkk1[2],
  B_EnabledSubsystem_Controller_T *localB, DW_EnabledSubsystem_Controlle_T
  *localDW, P_EnabledSubsystem_Controller_T *localP);
extern void Controller_MATLABFunction(real32_T rtu_P,
  B_MATLABFunction_Controller_T *localB);

#endif                                 /* RTW_HEADER_Controller_private_h_ */
