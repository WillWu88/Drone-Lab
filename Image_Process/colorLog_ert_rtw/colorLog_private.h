/*
 * colorLog_private.h
 *
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * Code generation for model "colorLog".
 *
 * Model version              : 2.0
 * Simulink Coder version : 9.5 (R2021a) 14-Nov-2020
 * C source code generated on : Sun May  8 21:08:37 2022
 *
 * Target selection: ert.tlc
 * Note: GRT includes extra infrastructure and instrumentation for prototyping
 * Embedded hardware selection: ARM Compatible->ARM 9
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#ifndef RTW_HEADER_colorLog_private_h_
#define RTW_HEADER_colorLog_private_h_
#include "rtwtypes.h"
#include "builtin_typeid_types.h"
#include "multiword_types.h"
#include "colorLog.h"

/* Private macros used by the generated code to access rtModel */
#ifndef rtmSetTFinal
#define rtmSetTFinal(rtm, val)         ((rtm)->Timing.tFinal = (val))
#endif

/* Imported (extern) pointer block signals */
extern uint8_T *imRGB;                 /* '<Root>/Image Data' */
extern void colorLo_FlightControlSystem(real_T rty_0[4],
  B_FlightControlSystem_colorLo_T *localB, P_FlightControlSystem_colorLo_T
  *localP);

#endif                                 /* RTW_HEADER_colorLog_private_h_ */
