/*
 * parrot_gettingstarted_data.c
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

#include "parrot_gettingstarted.h"

/* Block parameters (default storage) */
P_parrot_gettingstarted_T parrot_gettingstarted_P = {
  /* Variable: K_PD
   * Referenced by: '<S12>/K_PD'
   */
  { 7.0710678118654728, 1.3928947301520633 },

  /* Variable: Mixer
   * Referenced by: '<S1>/Constant'
   */
  { 224.43706282485198, 224.43706282485198, 224.43706282485198,
    224.43706282485198, 4713.7865498444526, -4713.7865498444526,
    -4713.7865498444526, 4713.7865498444526, 4713.7865498444526,
    4713.7865498444526, -4713.7865498444526, -4713.7865498444526,
    -42745.539305163293, 42745.539305163293, -42745.539305163293,
    42745.539305163293 },

  /* Variable: g
   * Referenced by: '<S1>/Constant8'
   */
  9.81,

  /* Variable: m
   * Referenced by: '<S1>/Constant8'
   */
  0.068,

  /* Expression: 0
   * Referenced by: '<S65>/L*(y[k]-yhat[k|k-1])'
   */
  0.0,

  /* Expression: 0
   * Referenced by: '<S67>/deltax'
   */
  0.0,

  /* Expression: 0
   * Referenced by: '<S120>/L*(y[k]-yhat[k|k-1])'
   */
  0.0,

  /* Expression: 0
   * Referenced by: '<S122>/deltax'
   */
  0.0,

  /* Expression: 0
   * Referenced by: '<S1>/Constant3'
   */
  0.0,

  /* Expression: 0
   * Referenced by: '<S1>/Constant4'
   */
  0.0,

  /* Expression: 0
   * Referenced by: '<S1>/Constant5'
   */
  0.0,

  /* Expression: 0
   * Referenced by: '<S1>/Constant6'
   */
  0.0,

  /* Expression: 0
   * Referenced by: '<S1>/Constant7'
   */
  0.0,

  /* Expression: pInitialization.C
   * Referenced by: '<S13>/C'
   */
  { 1.0, 0.0 },

  /* Expression: pInitialization.X0
   * Referenced by: '<S13>/X0'
   */
  { 0.0, 0.0 },

  /* Expression: -9
   * Referenced by: '<S4>/Constant6'
   */
  -9.0,

  /* Expression: pInitialization.A
   * Referenced by: '<S13>/A'
   */
  { 1.0, 0.0, 0.005, 1.0 },

  /* Expression: pInitialization.B
   * Referenced by: '<S13>/B'
   */
  { 0.0, 0.005 },

  /* Expression: pInitialization.L
   * Referenced by: '<S14>/KalmanGainL'
   */
  { 0.14719494646550785, 0.14192480795439558 },

  /* Expression: pInitialization.D
   * Referenced by: '<S13>/D'
   */
  0.0,

  /* Expression: pInitialization.M
   * Referenced by: '<S69>/KalmanGainM'
   */
  0.077917502747368111,

  /* Expression: pInitialization.C
   * Referenced by: '<S68>/C'
   */
  1.0,

  /* Expression: pInitialization.X0
   * Referenced by: '<S68>/X0'
   */
  0.0,

  /* Expression: pInitialization.A
   * Referenced by: '<S68>/A'
   */
  1.0,

  /* Expression: pInitialization.B
   * Referenced by: '<S68>/B'
   */
  0.005,

  /* Expression: pInitialization.Z
   * Referenced by: '<S69>/CovarianceZ'
   */
  0.000786966777748418,

  /* Expression: pInitialization.L
   * Referenced by: '<S69>/KalmanGainL'
   */
  0.077917502747368084,

  /* Expression: pInitialization.D
   * Referenced by: '<S68>/D'
   */
  0.0,

  /* Expression: pInitialization.Z
   * Referenced by: '<S124>/CovarianceZ'
   */
  7.0770413888487815E-5,

  /* Expression: pInitialization.L
   * Referenced by: '<S124>/KalmanGainL'
   */
  0.10722789983104214,

  /* Expression: pInitialization.M
   * Referenced by: '<S124>/KalmanGainM'
   */
  0.10722789983104215,

  /* Expression: pInitialization.Z
   * Referenced by: '<S236>/CovarianceZ'
   */
  0.0104065994888929,

  /* Expression: -1
   * Referenced by: '<S1>/Altitude'
   */
  -1.0,

  /* Expression: 0
   * Referenced by: '<S12>/Constant10'
   */
  0.0,

  /* Computed Parameter: Lykyhatkk1_Y0_f
   * Referenced by: '<S175>/L*(y[k]-yhat[k|k-1])'
   */
  0.0F,

  /* Computed Parameter: deltax_Y0_ks
   * Referenced by: '<S177>/deltax'
   */
  0.0F,

  /* Expression: pInitialization.M
   * Referenced by: '<S14>/KalmanGainM'
   */
  { 0.146485329F, 0.141924813F },

  /* Expression: pInitialization.Z
   * Referenced by: '<S14>/CovarianceZ'
   */
  { 0.00153916085F, 0.00149124232F, 0.00149124244F, 0.0511872F },

  /* Computed Parameter: Gain1_Gain
   * Referenced by: '<S6>/Gain1'
   */
  -1.0F,

  /* Computed Parameter: Gain_Gain
   * Referenced by: '<S6>/Gain'
   */
  -1.0F,

  /* Computed Parameter: A_Value_k
   * Referenced by: '<S123>/A'
   */
  1.0F,

  /* Computed Parameter: B_Value_n
   * Referenced by: '<S123>/B'
   */
  0.005F,

  /* Computed Parameter: C_Value_c
   * Referenced by: '<S123>/C'
   */
  1.0F,

  /* Computed Parameter: D_Value_o
   * Referenced by: '<S123>/D'
   */
  0.0F,

  /* Computed Parameter: X0_Value_i
   * Referenced by: '<S123>/X0'
   */
  0.0F,

  /* Expression: pInitialization.Z
   * Referenced by: '<S180>/CovarianceZ'
   */
  0.000789839833F,

  /* Expression: true()
   * Referenced by: '<S13>/Enable'
   */
  true,

  /* Expression: pInitialization.isSqrtUsed
   * Referenced by: '<S63>/isSqrtUsed'
   */
  false,

  /* Expression: true()
   * Referenced by: '<S68>/Enable'
   */
  true,

  /* Expression: pInitialization.isSqrtUsed
   * Referenced by: '<S118>/isSqrtUsed'
   */
  false,

  /* Expression: pInitialization.isSqrtUsed
   * Referenced by: '<S173>/isSqrtUsed'
   */
  false,

  /* Expression: true()
   * Referenced by: '<S123>/Enable'
   */
  true,

  /* Expression: pInitialization.isSqrtUsed
   * Referenced by: '<S229>/isSqrtUsed'
   */
  false,

  /* Expression: true()
   * Referenced by: '<S179>/Enable'
   */
  true,

  /* Expression: pInitialization.isSqrtUsed
   * Referenced by: '<S285>/isSqrtUsed'
   */
  false,

  /* Expression: true()
   * Referenced by: '<S235>/Enable'
   */
  true,

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
  1U,

  /* Start of '<S263>/Enabled Subsystem' */
  {
    /* Expression: 0
     * Referenced by: '<S289>/deltax'
     */
    0.0
  }
  ,

  /* End of '<S263>/Enabled Subsystem' */

  /* Start of '<S256>/MeasurementUpdate' */
  {
    /* Expression: 0
     * Referenced by: '<S287>/L*(y[k]-yhat[k|k-1])'
     */
    0.0
  }
  ,

  /* End of '<S256>/MeasurementUpdate' */

  /* Start of '<S207>/Enabled Subsystem' */
  {
    /* Expression: 0
     * Referenced by: '<S233>/deltax'
     */
    0.0
  }
  ,

  /* End of '<S207>/Enabled Subsystem' */

  /* Start of '<S200>/MeasurementUpdate' */
  {
    /* Expression: 0
     * Referenced by: '<S231>/L*(y[k]-yhat[k|k-1])'
     */
    0.0
  }
  /* End of '<S200>/MeasurementUpdate' */
};
