/*
 * logging_data.c
 *
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * Code generation for model "logging".
 *
 * Model version              : 2.2
 * Simulink Coder version : 9.5 (R2021a) 14-Nov-2020
 * C source code generated on : Wed May  4 09:20:27 2022
 *
 * Target selection: ert.tlc
 * Note: GRT includes extra infrastructure and instrumentation for prototyping
 * Embedded hardware selection: ARM Compatible->ARM 9
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#include "logging.h"
#include "logging_private.h"

/* Block parameters (default storage) */
P_logging_T logging_P = {
  /* Expression: 400
   * Referenced by: '<S1>/Pulse Generator1'
   */
  400.0,

  /* Expression: 800
   * Referenced by: '<S1>/Pulse Generator1'
   */
  800.0,

  /* Expression: 400
   * Referenced by: '<S1>/Pulse Generator1'
   */
  400.0,

  /* Expression: 0
   * Referenced by: '<S1>/Pulse Generator1'
   */
  0.0,

  /* Expression: 400
   * Referenced by: '<S1>/Pulse Generator2'
   */
  400.0,

  /* Expression: 800
   * Referenced by: '<S1>/Pulse Generator2'
   */
  800.0,

  /* Expression: 400
   * Referenced by: '<S1>/Pulse Generator2'
   */
  400.0,

  /* Expression: 400
   * Referenced by: '<S1>/Pulse Generator2'
   */
  400.0,

  /* Computed Parameter: Saturation1_UpperSat
   * Referenced by: '<S1>/Saturation1'
   */
  500.0F,

  /* Computed Parameter: Saturation1_LowerSat
   * Referenced by: '<S1>/Saturation1'
   */
  0.0F,

  /* Computed Parameter: Constant2_Value
   * Referenced by: '<S1>/Constant2'
   */
  0U,

  /* Computed Parameter: Constant1_Value
   * Referenced by: '<S1>/Constant1'
   */
  1U,

  /* Computed Parameter: ManualSwitch_CurrentSetting
   * Referenced by: '<S1>/Manual Switch'
   */
  1U
};
