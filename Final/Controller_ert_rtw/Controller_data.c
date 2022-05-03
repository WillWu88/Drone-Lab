/*
 * Controller_data.c
 *
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * Code generation for model "Controller".
 *
 * Model version              : 4.2
 * Simulink Coder version : 9.7 (R2022a) 13-Nov-2021
 * C source code generated on : Tue May  3 09:59:24 2022
 *
 * Target selection: ert.tlc
 * Note: GRT includes extra infrastructure and instrumentation for prototyping
 * Embedded hardware selection: ARM Compatible->ARM 9
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#include "Controller.h"

/* Block parameters (default storage) */
P_Controller_T Controller_P = {
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
