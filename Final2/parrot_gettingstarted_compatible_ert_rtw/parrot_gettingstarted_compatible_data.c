/*
 * parrot_gettingstarted_compatible_data.c
 *
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * Code generation for model "parrot_gettingstarted_compatible".
 *
 * Model version              : 4.2
 * Simulink Coder version : 9.7 (R2022a) 13-Nov-2021
 * C source code generated on : Tue May  3 20:54:06 2022
 *
 * Target selection: ert.tlc
 * Note: GRT includes extra infrastructure and instrumentation for prototyping
 * Embedded hardware selection: ARM Compatible->ARM 9
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#include "parrot_gettingstarted_compatible.h"

/* Block parameters (default storage) */
P_parrot_gettingstarted_compa_T parrot_gettingstarted_compati_P = {
  /* Variable: K_PD
   * Referenced by: '<S14>/K_PD'
   */
  { 0.70710678118654735, 0.32251445382887706 },

  /* Variable: K_psi
   * Referenced by: '<S8>/K_r'
   */
  { 0.70710678118654846, 0.10107910431318208 },

  /* Variable: K_u
   * Referenced by: '<S3>/K_u'
   */
  { -0.011223336943161541, 0.41437589769741956, 0.70715193727494763 },

  /* Variable: K_v
   * Referenced by: '<S2>/K_v'
   */
  { 0.021641528314144422, 0.74222216592229229, 0.10050770387559002 },

  /* Variable: Mixer
   * Referenced by: '<S1>/Constant'
   */
  { 224.43706282485198, 224.43706282485198, 224.43706282485198,
    224.43706282485198, 4713.7865498444526, -4713.7865498444526,
    -4713.7865498444526, 4713.7865498444526, 4713.7865498444526,
    4713.7865498444526, -4713.7865498444526, -4713.7865498444526,
    -42745.539305163293, 42745.539305163293, -42745.539305163293,
    42745.539305163293 },

  /* Variable: ff
   * Referenced by:
   *   '<S12>/Constant9'
   *   '<S13>/Constant9'
   */
  1.1,

  /* Variable: ground_alt
   * Referenced by:
   *   '<S12>/Constant10'
   *   '<S13>/Constant10'
   */
  180.207,

  /* Expression: 0
   * Referenced by: '<S67>/L*(y[k]-yhat[k|k-1])'
   */
  0.0,

  /* Expression: 330
   * Referenced by: '<S1>/Constant3'
   */
  330.0,

  /* Expression: -330
   * Referenced by: '<S1>/Constant4'
   */
  -330.0,

  /* Expression: 292
   * Referenced by: '<S1>/Constant5'
   */
  292.0,

  /* Expression: -292
   * Referenced by: '<S1>/Constant6'
   */
  -292.0,

  /* Expression: -1
   * Referenced by: '<S1>/Altitude'
   */
  -1.0,

  /* Expression: pInitialization.C
   * Referenced by: '<S15>/C'
   */
  { 1.0, 0.0 },

  /* Expression: pInitialization.X0
   * Referenced by: '<S15>/X0'
   */
  { 0.0, 0.0 },

  /* Expression: 0
   * Referenced by: '<S14>/Constant10'
   */
  0.0,

  /* Expression: 0
   * Referenced by: '<S1>/v'
   */
  0.0,

  /* Expression: pInitialization.C
   * Referenced by: '<S70>/C'
   */
  { 1.0, 0.0 },

  /* Expression: pInitialization.X0
   * Referenced by: '<S70>/X0'
   */
  { 0.0, 0.0 },

  /* Expression: 0
   * Referenced by: '<S2>/Constant11'
   */
  0.0,

  /* Expression: 0
   * Referenced by: '<S2>/Constant10'
   */
  0.0,

  /* Expression: 0
   * Referenced by: '<S1>/u'
   */
  0.0,

  /* Expression: pInitialization.C
   * Referenced by: '<S125>/C'
   */
  { 1.0, 0.0 },

  /* Expression: pInitialization.X0
   * Referenced by: '<S125>/X0'
   */
  { 0.0, 0.0 },

  /* Expression: 0
   * Referenced by: '<S3>/Constant11'
   */
  0.0,

  /* Expression: 0
   * Referenced by: '<S3>/Constant10'
   */
  0.0,

  /* Expression: 0
   * Referenced by: '<S1>/r'
   */
  0.0,

  /* Expression: 0
   * Referenced by: '<S1>/Constant9'
   */
  0.0,

  /* Expression: 500
   * Referenced by: '<S1>/Saturation'
   */
  500.0,

  /* Expression: -500
   * Referenced by: '<S1>/Saturation'
   */
  -500.0,

  /* Expression: -9
   * Referenced by: '<S4>/Constant6'
   */
  -9.0,

  /* Expression: pInitialization.A
   * Referenced by: '<S15>/A'
   */
  { 1.0, 0.0, 0.005, 1.0 },

  /* Expression: pInitialization.B
   * Referenced by: '<S15>/B'
   */
  { 0.0, 0.005 },

  /* Expression: pInitialization.L
   * Referenced by: '<S16>/KalmanGainL'
   */
  { 0.14719494646550785, 0.14192480795439558 },

  /* Expression: pInitialization.D
   * Referenced by: '<S15>/D'
   */
  0.0,

  /* Expression: pInitialization.A
   * Referenced by: '<S70>/A'
   */
  { 0.98950516502722019, 0.0, 0.047700831010952155, 1.0 },

  /* Expression: pInitialization.B
   * Referenced by: '<S70>/B'
   */
  { 0.004973716777822104, 0.0, 0.00011946176788705039, 0.005 },

  /* Expression: pInitialization.L
   * Referenced by: '<S71>/KalmanGainL'
   */
  { 0.017753825642778217, 0.0025277289039616169 },

  /* Expression: pInitialization.D
   * Referenced by: '<S70>/D'
   */
  { 0.0, 0.0 },

  /* Expression: pInitialization.A
   * Referenced by: '<S125>/A'
   */
  { 0.98950516502722019, 0.0, -0.047700831010952155, 1.0 },

  /* Expression: pInitialization.B
   * Referenced by: '<S125>/B'
   */
  { 0.004973716777822104, 0.0, -0.00011946176788705039, 0.005 },

  /* Expression: pInitialization.L
   * Referenced by: '<S126>/KalmanGainL'
   */
  { 0.005175026287543457, -0.0009780065601840862 },

  /* Expression: pInitialization.D
   * Referenced by: '<S125>/D'
   */
  { 0.0, 0.0 },

  /* Expression: pInitialization.M
   * Referenced by: '<S16>/KalmanGainM'
   */
  { 0.146485329F, 0.141924813F },

  /* Computed Parameter: Gain1_Gain
   * Referenced by: '<S6>/Gain1'
   */
  -1.0F,

  /* Expression: pInitialization.M
   * Referenced by: '<S71>/KalmanGainM'
   */
  { 0.0178202726F, 0.00252772891F },

  /* Expression: pInitialization.M
   * Referenced by: '<S126>/KalmanGainM'
   */
  { 0.00518276682F, -0.000978006516F },

  /* Expression: pInitialization.Z
   * Referenced by: '<S16>/CovarianceZ'
   */
  { 0.00153916085F, 0.00149124232F, 0.00149124244F, 0.0511872F },

  /* Expression: pInitialization.Z
   * Referenced by: '<S71>/CovarianceZ'
   */
  { 0.154260188F, 0.0218811445F, 0.0218811445F, 0.0131317144F },

  /* Expression: pInitialization.Z
   * Referenced by: '<S126>/CovarianceZ'
   */
  { 0.303550541F, -0.0572810695F, -0.0572810695F, 0.0190016869F },

  /* Expression: true()
   * Referenced by: '<S15>/Enable'
   */
  true,

  /* Expression: true()
   * Referenced by: '<S70>/Enable'
   */
  true,

  /* Expression: true()
   * Referenced by: '<S125>/Enable'
   */
  true,

  /* Expression: pInitialization.isSqrtUsed
   * Referenced by: '<S65>/isSqrtUsed'
   */
  false,

  /* Expression: pInitialization.isSqrtUsed
   * Referenced by: '<S120>/isSqrtUsed'
   */
  false,

  /* Expression: pInitialization.isSqrtUsed
   * Referenced by: '<S175>/isSqrtUsed'
   */
  false,

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

  /* Start of '<S153>/Enabled Subsystem' */
  {
    /* Expression: 0
     * Referenced by: '<S179>/deltax'
     */
    0.0
  }
  ,

  /* End of '<S153>/Enabled Subsystem' */

  /* Start of '<S146>/MeasurementUpdate' */
  {
    /* Expression: 0
     * Referenced by: '<S177>/L*(y[k]-yhat[k|k-1])'
     */
    0.0
  }
  ,

  /* End of '<S146>/MeasurementUpdate' */

  /* Start of '<S98>/Enabled Subsystem' */
  {
    /* Expression: 0
     * Referenced by: '<S124>/deltax'
     */
    0.0
  }
  ,

  /* End of '<S98>/Enabled Subsystem' */

  /* Start of '<S91>/MeasurementUpdate' */
  {
    /* Expression: 0
     * Referenced by: '<S122>/L*(y[k]-yhat[k|k-1])'
     */
    0.0
  }
  ,

  /* End of '<S91>/MeasurementUpdate' */

  /* Start of '<S43>/Enabled Subsystem' */
  {
    /* Expression: 0
     * Referenced by: '<S69>/deltax'
     */
    0.0
  }
  /* End of '<S43>/Enabled Subsystem' */
};
