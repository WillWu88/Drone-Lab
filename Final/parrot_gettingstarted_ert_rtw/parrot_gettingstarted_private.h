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
 * C source code generated on : Tue May  3 11:11:51 2022
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

extern void parrot__MeasurementUpdate_Start(DW_MeasurementUpdate_parrot_g_T
  *localDW);
extern void parrot_g_EnabledSubsystem_Start(DW_EnabledSubsystem_parrot_ge_T
  *localDW);

#endif                         /* RTW_HEADER_parrot_gettingstarted_private_h_ */
