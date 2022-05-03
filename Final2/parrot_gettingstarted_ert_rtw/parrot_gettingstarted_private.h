/*
 * parrot_gettingstarted_private.h
 *
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * Code generation for model "parrot_gettingstarted".
 *
 * Model version              : 4.0
 * Simulink Coder version : 9.7 (R2022a) 13-Nov-2021
 * C source code generated on : Tue May  3 11:22:44 2022
 *
 * Target selection: ert.tlc
 * Note: GRT includes extra infrastructure and instrumentation for prototyping
 * Embedded hardware selection: ARM Compatible->ARM 9
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#ifndef RTW_HEADER_parrot_gettingstarted_private_h_
#define RTW_HEADER_parrot_gettingstarted_private_h_
#include "rtwtypes.h"
#include "builtin_typeid_types.h"
#include "multiword_types.h"
#include "parrot_gettingstarted.h"

/* Private macros used by the generated code to access rtModel */
#ifndef rtmSetTFinal
#define rtmSetTFinal(rtm, val)         ((rtm)->Timing.tFinal = (val))
#endif

extern void parrot_g_MeasurementUpdate_Init(B_MeasurementUpdate_parrot_ge_T
  *localB, P_MeasurementUpdate_parrot_ge_T *localP);
extern void parrot__MeasurementUpdate_Start(DW_MeasurementUpdate_parrot_g_T
  *localDW);
extern void parro_MeasurementUpdate_Disable(B_MeasurementUpdate_parrot_ge_T
  *localB, DW_MeasurementUpdate_parrot_g_T *localDW,
  P_MeasurementUpdate_parrot_ge_T *localP);
extern void parrot_gettin_MeasurementUpdate(boolean_T rtu_Enable, real_T rtu_Lk,
  real_T rtu_yk, real_T rtu_Ck, real_T rtu_xhatkk1, real_T rtu_Dk, real_T rtu_uk,
  B_MeasurementUpdate_parrot_ge_T *localB, DW_MeasurementUpdate_parrot_g_T
  *localDW, P_MeasurementUpdate_parrot_ge_T *localP);
extern void parrot_ge_EnabledSubsystem_Init(B_EnabledSubsystem_parrot_get_T
  *localB, P_EnabledSubsystem_parrot_get_T *localP);
extern void parrot_g_EnabledSubsystem_Start(DW_EnabledSubsystem_parrot_ge_T
  *localDW);
extern void parrot_EnabledSubsystem_Disable(B_EnabledSubsystem_parrot_get_T
  *localB, DW_EnabledSubsystem_parrot_ge_T *localDW,
  P_EnabledSubsystem_parrot_get_T *localP);
extern void parrot_getting_EnabledSubsystem(boolean_T rtu_Enable, real_T rtu_Mk,
  real_T rtu_Ck, real_T rtu_yk, real_T rtu_xhatkk1,
  B_EnabledSubsystem_parrot_get_T *localB, DW_EnabledSubsystem_parrot_ge_T
  *localDW, P_EnabledSubsystem_parrot_get_T *localP);
extern void parrot_gettingst_MATLABFunction(real32_T rtu_P,
  B_MATLABFunction_parrot_getti_T *localB);

#endif                         /* RTW_HEADER_parrot_gettingstarted_private_h_ */
