/*
 * Controller_data.c
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

#include "Controller.h"
#include "Controller_private.h"

/* Block parameters (default storage) */
P_Controller_T Controller_P = {
  /* Variable: K_PD
   * Referenced by: '<S13>/K_PD'
   */
  { 7.0710678118654728, 1.3928947301520633 },

  /* Variable: K_psi
   * Referenced by: '<S10>/K_r'
   */
  { 7.0710678118654728, 1.0010843387485144 },

  /* Variable: K_u
   * Referenced by: '<S3>/K_u'
   */
  { -0.11225672895502001, 4.1436528039203191, 7.0711129680343543 },

  /* Variable: K_v
   * Referenced by: '<S2>/K_v'
   */
  { 0.21669823136346636, 7.4209356108614717, 1.0005087704246223 },

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
   *   '<S7>/Constant'
   *   '<S8>/Constant3'
   */
  1.1,

  /* Variable: ground_alt
   * Referenced by:
   *   '<S7>/Constant5'
   *   '<S8>/Constant4'
   */
  180.207,

  /* Expression: 0
   * Referenced by: '<S66>/L*(y[k]-yhat[k|k-1])'
   */
  0.0,

  /* Expression: 0
   * Referenced by: '<S68>/deltax'
   */
  0.0,

  /* Expression: 2
   * Referenced by: '<S12>/Switch'
   */
  2.0,

  /* Expression: 10
   * Referenced by: '<S12>/Descend'
   */
  10.0,

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
   * Referenced by: '<S12>/Zero'
   */
  0.0,

  /* Expression: 0.5*m*g
   * Referenced by: '<S12>/Descend Thrust'
   */
  0.33320000000000005,

  /* Expression: -1
   * Referenced by: '<S1>/Altitude'
   */
  -1.0,

  /* Expression: pInitialization.C
   * Referenced by: '<S14>/C'
   */
  { 1.0, 0.0, 0.0 },

  /* Expression: pInitialization.X0
   * Referenced by: '<S14>/X0'
   */
  { 0.0, 0.0, 0.0 },

  /* Expression: pInitialization.M
   * Referenced by: '<S70>/KalmanGainM'
   */
  { 0.082383264048306135, 0.07772859161552996 },

  /* Expression: pInitialization.C
   * Referenced by: '<S69>/C'
   */
  { 1.0, 0.0 },

  /* Expression: pInitialization.X0
   * Referenced by: '<S69>/X0'
   */
  { 0.0, 0.0 },

  /* Expression: pInitialization.M
   * Referenced by: '<S125>/KalmanGainM'
   */
  { 0.11158700865350757, 0.10696580044251859 },

  /* Expression: 0
   * Referenced by: '<S13>/Constant10'
   */
  0.0,

  /* Expression: 1.2*m*g
   * Referenced by: '<S12>/Take Off Thrust'
   */
  0.79968000000000017,

  /* Expression: 13
   * Referenced by: '<S12>/Engine Off!'
   */
  13.0,

  /* Expression: 0
   * Referenced by: '<S1>/v'
   */
  0.0,

  /* Expression: pInitialization.M
   * Referenced by: '<S237>/KalmanGainM'
   */
  { 0.0076590379313012493, 0.0041553258283796362 },

  /* Expression: pInitialization.C
   * Referenced by: '<S236>/C'
   */
  { 1.0, 0.0 },

  /* Expression: pInitialization.X0
   * Referenced by: '<S236>/X0'
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
   * Referenced by: '<S180>/C'
   */
  { 1.0, 0.0 },

  /* Expression: pInitialization.X0
   * Referenced by: '<S180>/X0'
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

  /* Expression: -9
   * Referenced by: '<S4>/Constant6'
   */
  -9.0,

  /* Expression: pInitialization.A
   * Referenced by: '<S14>/A'
   */
  { 1.0, 0.0, 0.0, 0.005, 1.0, 0.0, 0.0, 0.005, 1.0 },

  /* Expression: pInitialization.B
   * Referenced by: '<S14>/B'
   */
  { 0.0, 0.0, 0.005 },

  /* Expression: pInitialization.D
   * Referenced by: '<S14>/D'
   */
  0.0,

  /* Expression: pInitialization.A
   * Referenced by: '<S69>/A'
   */
  { 1.0, 0.0, 0.005, 1.0 },

  /* Expression: pInitialization.B
   * Referenced by: '<S69>/B'
   */
  { 0.0, 0.005 },

  /* Expression: pInitialization.Z
   * Referenced by: '<S70>/CovarianceZ'
   */
  { 0.00083207096688789188, 0.00078505877531685254, 0.00078505877531685254,
    0.014096452657500324 },

  /* Expression: pInitialization.L
   * Referenced by: '<S70>/KalmanGainL'
   */
  { 0.082771907006383774, 0.077728591615530654 },

  /* Expression: pInitialization.D
   * Referenced by: '<S69>/D'
   */
  0.0,

  /* Expression: pInitialization.Z
   * Referenced by: '<S125>/CovarianceZ'
   */
  { 7.3647425711315E-5, 7.0597428292062286E-5, 7.0597428292062259E-5,
    0.0017734445395271017 },

  /* Expression: pInitialization.L
   * Referenced by: '<S125>/KalmanGainL'
   */
  { 0.11212183765572024, 0.10696580044251834 },

  /* Expression: pInitialization.A
   * Referenced by: '<S180>/A'
   */
  { 1.0, 0.0, 0.005, 1.0 },

  /* Expression: pInitialization.B
   * Referenced by: '<S180>/B'
   */
  { 0.0, 0.005 },

  /* Expression: pInitialization.D
   * Referenced by: '<S180>/D'
   */
  0.0,

  /* Expression: pInitialization.A
   * Referenced by: '<S236>/A'
   */
  { 1.0, 0.0, 0.005, 1.0 },

  /* Expression: pInitialization.B
   * Referenced by: '<S236>/B'
   */
  { 0.0, 0.005 },

  /* Expression: pInitialization.Z
   * Referenced by: '<S237>/CovarianceZ'
   */
  { 0.019147594828253119, 0.010388314570949091, 0.010388314570949089,
    0.016035717234793613 },

  /* Expression: pInitialization.L
   * Referenced by: '<S237>/KalmanGainL'
   */
  { 0.0076798145604431442, 0.0041553258283798166 },

  /* Expression: pInitialization.D
   * Referenced by: '<S236>/D'
   */
  0.0,

  /* Computed Parameter: Lykyhatkk1_Y0_c
   * Referenced by: '<S176>/L*(y[k]-yhat[k|k-1])'
   */
  0.0F,

  /* Computed Parameter: deltax_Y0_m
   * Referenced by: '<S178>/deltax'
   */
  0.0F,

  /* Expression: pInitialization.M
   * Referenced by: '<S15>/KalmanGainM'
   */
  { 0.149618357F, 0.250317395F, 0.141663477F },

  /* Computed Parameter: C_Value_l
   * Referenced by: '<S124>/C'
   */
  { 1.0F, 0.0F },

  /* Computed Parameter: Gain1_Gain
   * Referenced by: '<S6>/Gain1'
   */
  -1.0F,

  /* Computed Parameter: X0_Value_e
   * Referenced by: '<S124>/X0'
   */
  { 0.0F, 0.0F },

  /* Expression: pInitialization.M
   * Referenced by: '<S181>/KalmanGainM'
   */
  { 0.0405267365F, 0.0359301604F },

  /* Expression: pInitialization.Z
   * Referenced by: '<S15>/CovarianceZ'
   */
  { 0.00157208054F, 0.00263015251F, 0.00148849632F, 0.00263015227F,
    0.0907845274F, 0.0523899421F, 0.00148849632F, 0.0523899421F, 0.0876271576F },

  /* Expression: pInitialization.L
   * Referenced by: '<S15>/KalmanGainL'
   */
  { 0.150868371F, 0.251021445F, 0.141663387F },

  /* Computed Parameter: Gain_Gain
   * Referenced by: '<S6>/Gain'
   */
  -1.0F,

  /* Computed Parameter: A_Value_p
   * Referenced by: '<S124>/A'
   */
  { 1.0F, 0.0F, 0.005F, 1.0F },

  /* Computed Parameter: B_Value_e
   * Referenced by: '<S124>/B'
   */
  { 0.0F, 0.005F },

  /* Computed Parameter: D_Value_e
   * Referenced by: '<S124>/D'
   */
  0.0F,

  /* Computed Parameter: Gain2_Gain
   * Referenced by: '<S7>/Gain2'
   */
  -9.8F,

  /* Expression: pInitialization.Z
   * Referenced by: '<S181>/CovarianceZ'
   */
  { 0.000889042858F, 0.000788206875F, 0.000788206933F, 0.00665802695F },

  /* Expression: pInitialization.L
   * Referenced by: '<S181>/KalmanGainL'
   */
  { 0.0407063738F, 0.0359301381F },

  /* Expression: g
   * Referenced by: '<S8>/Gain3'
   */
  9.8F,

  /* Expression: true()
   * Referenced by: '<S14>/Enable'
   */
  true,

  /* Expression: true()
   * Referenced by: '<S69>/Enable'
   */
  true,

  /* Expression: true()
   * Referenced by: '<S124>/Enable'
   */
  true,

  /* Expression: true()
   * Referenced by: '<S236>/Enable'
   */
  true,

  /* Expression: true()
   * Referenced by: '<S180>/Enable'
   */
  true,

  /* Expression: pInitialization.isSqrtUsed
   * Referenced by: '<S64>/isSqrtUsed'
   */
  false,

  /* Expression: pInitialization.isSqrtUsed
   * Referenced by: '<S119>/isSqrtUsed'
   */
  false,

  /* Expression: pInitialization.isSqrtUsed
   * Referenced by: '<S174>/isSqrtUsed'
   */
  false,

  /* Expression: pInitialization.isSqrtUsed
   * Referenced by: '<S230>/isSqrtUsed'
   */
  false,

  /* Expression: pInitialization.isSqrtUsed
   * Referenced by: '<S286>/isSqrtUsed'
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

  /* Start of '<S264>/Enabled Subsystem' */
  {
    /* Expression: 0
     * Referenced by: '<S290>/deltax'
     */
    0.0
  }
  ,

  /* End of '<S264>/Enabled Subsystem' */

  /* Start of '<S257>/MeasurementUpdate' */
  {
    /* Expression: 0
     * Referenced by: '<S288>/L*(y[k]-yhat[k|k-1])'
     */
    0.0
  }
  ,

  /* End of '<S257>/MeasurementUpdate' */

  /* Start of '<S208>/Enabled Subsystem' */
  {
    /* Expression: 0
     * Referenced by: '<S234>/deltax'
     */
    0.0
  }
  ,

  /* End of '<S208>/Enabled Subsystem' */

  /* Start of '<S201>/MeasurementUpdate' */
  {
    /* Expression: 0
     * Referenced by: '<S232>/L*(y[k]-yhat[k|k-1])'
     */
    0.0
  }
  ,

  /* End of '<S201>/MeasurementUpdate' */

  /* Start of '<S97>/Enabled Subsystem' */
  {
    /* Expression: 0
     * Referenced by: '<S123>/deltax'
     */
    0.0
  }
  ,

  /* End of '<S97>/Enabled Subsystem' */

  /* Start of '<S90>/MeasurementUpdate' */
  {
    /* Expression: 0
     * Referenced by: '<S121>/L*(y[k]-yhat[k|k-1])'
     */
    0.0
  }
  /* End of '<S90>/MeasurementUpdate' */
};
