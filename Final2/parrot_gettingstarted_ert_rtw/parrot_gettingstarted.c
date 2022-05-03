/*
 * parrot_gettingstarted.c
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

#include "parrot_gettingstarted.h"
#include "rtwtypes.h"
#include "parrot_gettingstarted_private.h"
#include <math.h>
#include "parrot_gettingstarted_types.h"
#include <string.h>
#include "rt_nonfinite.h"

/* Exported block signals */
CommandBus cmd_inport;                 /* '<Root>/AC cmd' */
SensorsBus sensor_inport;              /* '<Root>/Sensors' */
real32_T motors_outport[4];            /* '<S1>/Cast To Single1' */
uint8_T flag_outport;                  /* '<S1>/Manual Switch' */

/* Block signals (default storage) */
B_parrot_gettingstarted_T parrot_gettingstarted_B;

/* Block states (default storage) */
DW_parrot_gettingstarted_T parrot_gettingstarted_DW;

/* External outputs (root outports fed by signals with default storage) */
ExtY_parrot_gettingstarted_T parrot_gettingstarted_Y;

/* Real-time model */
static RT_MODEL_parrot_gettingstarte_T parrot_gettingstarted_M_;
RT_MODEL_parrot_gettingstarte_T *const parrot_gettingstarted_M =
  &parrot_gettingstarted_M_;

/*
 * System initialize for enable system:
 *    '<S89>/MeasurementUpdate'
 *    '<S200>/MeasurementUpdate'
 *    '<S256>/MeasurementUpdate'
 */
void parrot_g_MeasurementUpdate_Init(B_MeasurementUpdate_parrot_ge_T *localB,
  P_MeasurementUpdate_parrot_ge_T *localP)
{
  /* SystemInitialize for Product: '<S120>/Product3' incorporates:
   *  Outport: '<S120>/L*(y[k]-yhat[k|k-1])'
   */
  localB->Product3 = localP->Lykyhatkk1_Y0;
}

/*
 * Disable for enable system:
 *    '<S89>/MeasurementUpdate'
 *    '<S200>/MeasurementUpdate'
 *    '<S256>/MeasurementUpdate'
 */
void parro_MeasurementUpdate_Disable(B_MeasurementUpdate_parrot_ge_T *localB,
  DW_MeasurementUpdate_parrot_g_T *localDW, P_MeasurementUpdate_parrot_ge_T
  *localP)
{
  /* Disable for Product: '<S120>/Product3' incorporates:
   *  Outport: '<S120>/L*(y[k]-yhat[k|k-1])'
   */
  localB->Product3 = localP->Lykyhatkk1_Y0;
  localDW->MeasurementUpdate_MODE = false;
}

/*
 * Start for enable system:
 *    '<S89>/MeasurementUpdate'
 *    '<S200>/MeasurementUpdate'
 *    '<S256>/MeasurementUpdate'
 */
void parrot__MeasurementUpdate_Start(DW_MeasurementUpdate_parrot_g_T *localDW)
{
  localDW->MeasurementUpdate_MODE = false;
}

/*
 * Output and update for enable system:
 *    '<S89>/MeasurementUpdate'
 *    '<S200>/MeasurementUpdate'
 *    '<S256>/MeasurementUpdate'
 */
void parrot_gettin_MeasurementUpdate(boolean_T rtu_Enable, real_T rtu_Lk, real_T
  rtu_yk, real_T rtu_Ck, real_T rtu_xhatkk1, real_T rtu_Dk, real_T rtu_uk,
  B_MeasurementUpdate_parrot_ge_T *localB, DW_MeasurementUpdate_parrot_g_T
  *localDW, P_MeasurementUpdate_parrot_ge_T *localP)
{
  /* Outputs for Enabled SubSystem: '<S89>/MeasurementUpdate' incorporates:
   *  EnablePort: '<S120>/Enable'
   */
  if (rtu_Enable) {
    localDW->MeasurementUpdate_MODE = true;

    /* Product: '<S120>/Product3' incorporates:
     *  Product: '<S120>/C[k]*xhat[k|k-1]'
     *  Product: '<S120>/D[k]*u[k]'
     *  Sum: '<S120>/Add1'
     *  Sum: '<S120>/Sum'
     */
    localB->Product3 = (rtu_yk - (rtu_Ck * rtu_xhatkk1 + rtu_Dk * rtu_uk)) *
      rtu_Lk;
  } else if (localDW->MeasurementUpdate_MODE) {
    parro_MeasurementUpdate_Disable(localB, localDW, localP);
  }

  /* End of Outputs for SubSystem: '<S89>/MeasurementUpdate' */
}

/*
 * System initialize for enable system:
 *    '<S96>/Enabled Subsystem'
 *    '<S207>/Enabled Subsystem'
 *    '<S263>/Enabled Subsystem'
 */
void parrot_ge_EnabledSubsystem_Init(B_EnabledSubsystem_parrot_get_T *localB,
  P_EnabledSubsystem_parrot_get_T *localP)
{
  /* SystemInitialize for Product: '<S122>/Product2' incorporates:
   *  Outport: '<S122>/deltax'
   */
  localB->Product2 = localP->deltax_Y0;
}

/*
 * Disable for enable system:
 *    '<S96>/Enabled Subsystem'
 *    '<S207>/Enabled Subsystem'
 *    '<S263>/Enabled Subsystem'
 */
void parrot_EnabledSubsystem_Disable(B_EnabledSubsystem_parrot_get_T *localB,
  DW_EnabledSubsystem_parrot_ge_T *localDW, P_EnabledSubsystem_parrot_get_T
  *localP)
{
  /* Disable for Product: '<S122>/Product2' incorporates:
   *  Outport: '<S122>/deltax'
   */
  localB->Product2 = localP->deltax_Y0;
  localDW->EnabledSubsystem_MODE = false;
}

/*
 * Start for enable system:
 *    '<S96>/Enabled Subsystem'
 *    '<S207>/Enabled Subsystem'
 *    '<S263>/Enabled Subsystem'
 */
void parrot_g_EnabledSubsystem_Start(DW_EnabledSubsystem_parrot_ge_T *localDW)
{
  localDW->EnabledSubsystem_MODE = false;
}

/*
 * Output and update for enable system:
 *    '<S96>/Enabled Subsystem'
 *    '<S207>/Enabled Subsystem'
 *    '<S263>/Enabled Subsystem'
 */
void parrot_getting_EnabledSubsystem(boolean_T rtu_Enable, real_T rtu_Mk, real_T
  rtu_Ck, real_T rtu_yk, real_T rtu_xhatkk1, B_EnabledSubsystem_parrot_get_T
  *localB, DW_EnabledSubsystem_parrot_ge_T *localDW,
  P_EnabledSubsystem_parrot_get_T *localP)
{
  /* Outputs for Enabled SubSystem: '<S96>/Enabled Subsystem' incorporates:
   *  EnablePort: '<S122>/Enable'
   */
  if (rtu_Enable) {
    localDW->EnabledSubsystem_MODE = true;

    /* Product: '<S122>/Product2' incorporates:
     *  Product: '<S122>/Product'
     *  Sum: '<S122>/Add1'
     */
    localB->Product2 = (rtu_yk - rtu_Ck * rtu_xhatkk1) * rtu_Mk;
  } else if (localDW->EnabledSubsystem_MODE) {
    parrot_EnabledSubsystem_Disable(localB, localDW, localP);
  }

  /* End of Outputs for SubSystem: '<S96>/Enabled Subsystem' */
}

/*
 * Output and update for atomic system:
 *    '<S7>/MATLAB Function'
 *    '<S8>/MATLAB Function1'
 */
void parrot_gettingst_MATLABFunction(real32_T rtu_P,
  B_MATLABFunction_parrot_getti_T *localB)
{
  /* MATLAB Function 'Flight_Control_System/Kalman Filter: U/MATLAB Function': '<S178>:1' */
  /* '<S178>:1:9' */
  localB->y = (real32_T)log(rtu_P / 101325.0F) * -8440.23926F;

  /* '<S178>:1:10' */
}

/* Model step function */
void parrot_gettingstarted_step(void)
{
  real_T rtb_Sum4;
  real_T rtb_r_error;
  int32_T aoffset;
  int32_T coffset;
  int32_T i;
  int32_T j;
  real32_T rtb_Add_b;
  real32_T rtb_CastToSingle_e;
  real32_T rtb_CastToSingle_k;
  real32_T rtb_CastToSingle_lx;
  real32_T rtb_Linearizedtheta_dot;
  real32_T rtb_theta_measure;
  real32_T rtb_y;

  /* Product: '<S1>/M* Wrench' incorporates:
   *  Constant: '<S1>/Constant'
   *  Constant: '<S1>/Constant7'
   *  Constant: '<S1>/Constant8'
   */
  for (j = 0; j < 4; j++) {
    parrot_gettingstarted_B.TmpSignalConversionAtToWork[j] =
      ((parrot_gettingstarted_P.Mixer[j + 4] *
        parrot_gettingstarted_P.Constant7_Value +
        parrot_gettingstarted_P.Mixer[j] *
        parrot_gettingstarted_P.Constant8_Value) +
       parrot_gettingstarted_P.Mixer[j + 8] *
       parrot_gettingstarted_P.Constant7_Value) +
      parrot_gettingstarted_P.Mixer[j + 12] *
      parrot_gettingstarted_P.Constant7_Value;
  }

  /* End of Product: '<S1>/M* Wrench' */

  /* DataTypeConversion: '<S1>/Cast To Single1' incorporates:
   *  Constant: '<S1>/Constant3'
   *  Constant: '<S1>/Constant4'
   *  Constant: '<S1>/Constant5'
   *  Constant: '<S1>/Constant6'
   *  DataTypeConversion: '<S1>/Cast To Single'
   *  Sum: '<S1>/Sum'
   */
  motors_outport[0] = (real32_T)((real32_T)
    parrot_gettingstarted_P.Constant3_Value +
    parrot_gettingstarted_B.TmpSignalConversionAtToWork[0]);
  motors_outport[1] = (real32_T)((real32_T)
    parrot_gettingstarted_P.Constant4_Value +
    parrot_gettingstarted_B.TmpSignalConversionAtToWork[1]);
  motors_outport[2] = (real32_T)((real32_T)
    parrot_gettingstarted_P.Constant5_Value +
    parrot_gettingstarted_B.TmpSignalConversionAtToWork[2]);
  motors_outport[3] = (real32_T)((real32_T)
    parrot_gettingstarted_P.Constant6_Value +
    parrot_gettingstarted_B.TmpSignalConversionAtToWork[3]);

  /* Outport: '<Root>/Motors' incorporates:
   *  DataTypeConversion: '<S1>/Cast To Single1'
   */
  parrot_gettingstarted_Y.Motors[0] = motors_outport[0];
  parrot_gettingstarted_Y.Motors[1] = motors_outport[1];
  parrot_gettingstarted_Y.Motors[2] = motors_outport[2];
  parrot_gettingstarted_Y.Motors[3] = motors_outport[3];

  /* ManualSwitch: '<S1>/Manual Switch' */
  if (parrot_gettingstarted_P.ManualSwitch_CurrentSetting == 1) {
    /* ManualSwitch: '<S1>/Manual Switch' incorporates:
     *  Constant: '<S1>/Constant2'
     */
    flag_outport = parrot_gettingstarted_P.Constant2_Value;
  } else {
    /* ManualSwitch: '<S1>/Manual Switch' incorporates:
     *  Constant: '<S1>/Constant1'
     */
    flag_outport = parrot_gettingstarted_P.Constant1_Value;
  }

  /* End of ManualSwitch: '<S1>/Manual Switch' */

  /* Outport: '<Root>/Flag' */
  parrot_gettingstarted_Y.Flag = flag_outport;

  /* ToWorkspace: '<S1>/To Workspace1' */
  {
    double locTime = parrot_gettingstarted_M->Timing.taskTime0
      ;
    rt_UpdateStructLogVar((StructLogVar *)
                          parrot_gettingstarted_DW.ToWorkspace1_PWORK.LoggedData,
                          &locTime,
                          &parrot_gettingstarted_B.TmpSignalConversionAtToWork[0]);
  }

  /* Delay: '<S13>/MemoryX' incorporates:
   *  Constant: '<S13>/X0'
   */
  if (parrot_gettingstarted_DW.icLoad) {
    parrot_gettingstarted_DW.MemoryX_DSTATE[0] =
      parrot_gettingstarted_P.X0_Value[0];
    parrot_gettingstarted_DW.MemoryX_DSTATE[1] =
      parrot_gettingstarted_P.X0_Value[1];
  }

  /* Outputs for Enabled SubSystem: '<S41>/Enabled Subsystem' incorporates:
   *  EnablePort: '<S67>/Enable'
   */
  /* Constant: '<S13>/Enable' */
  if (parrot_gettingstarted_P.Enable_Value) {
    parrot_gettingstarted_DW.EnabledSubsystem_MODE_d = true;

    /* Sum: '<S67>/Add1' incorporates:
     *  Constant: '<S13>/C'
     *  DataTypeConversion: '<S4>/Data Type Conversion1'
     *  Delay: '<S13>/MemoryX'
     *  Inport: '<Root>/Sensors'
     *  Product: '<S67>/Product'
     */
    rtb_r_error = sensor_inport.HALSensors.HAL_ultrasound_SI.altitude -
      (parrot_gettingstarted_P.C_Value[0] *
       parrot_gettingstarted_DW.MemoryX_DSTATE[0] +
       parrot_gettingstarted_P.C_Value[1] *
       parrot_gettingstarted_DW.MemoryX_DSTATE[1]);

    /* Product: '<S67>/Product2' incorporates:
     *  Constant: '<S14>/KalmanGainM'
     *  DataTypeConversion: '<S58>/Conversion'
     */
    parrot_gettingstarted_B.Product2[0] =
      parrot_gettingstarted_P.KalmanGainM_Value_d[0] * rtb_r_error;
    parrot_gettingstarted_B.Product2[1] =
      parrot_gettingstarted_P.KalmanGainM_Value_d[1] * rtb_r_error;
  } else if (parrot_gettingstarted_DW.EnabledSubsystem_MODE_d) {
    /* Disable for Product: '<S67>/Product2' incorporates:
     *  Outport: '<S67>/deltax'
     */
    parrot_gettingstarted_B.Product2[0] = parrot_gettingstarted_P.deltax_Y0;
    parrot_gettingstarted_B.Product2[1] = parrot_gettingstarted_P.deltax_Y0;
    parrot_gettingstarted_DW.EnabledSubsystem_MODE_d = false;
  }

  /* End of Outputs for SubSystem: '<S41>/Enabled Subsystem' */

  /* DataTypeConversion: '<S4>/Cast To Single' incorporates:
   *  Delay: '<S13>/MemoryX'
   *  Sum: '<S41>/Add'
   */
  parrot_gettingstarted_B.CastToSingle[0] = (real32_T)
    (parrot_gettingstarted_B.Product2[0] +
     parrot_gettingstarted_DW.MemoryX_DSTATE[0]);
  parrot_gettingstarted_B.CastToSingle[1] = (real32_T)
    (parrot_gettingstarted_B.Product2[1] +
     parrot_gettingstarted_DW.MemoryX_DSTATE[1]);

  /* DataTypeConversion: '<S5>/Cast To Double2' incorporates:
   *  Inport: '<Root>/Sensors'
   */
  rtb_r_error = sensor_inport.HALSensors.HAL_acc_SI.z;

  /* Trigonometry: '<S5>/Atan' incorporates:
   *  DataTypeConversion: '<S5>/Cast To Double1'
   *  Inport: '<Root>/Sensors'
   *  Product: '<S5>/Divide'
   */
  parrot_gettingstarted_B.Phi_measure = atan
    (sensor_inport.HALSensors.HAL_acc_SI.y / rtb_r_error);

  /* Delay: '<S68>/MemoryX' incorporates:
   *  Constant: '<S68>/X0'
   */
  if (parrot_gettingstarted_DW.icLoad_g) {
    parrot_gettingstarted_DW.MemoryX_DSTATE_n =
      parrot_gettingstarted_P.X0_Value_l;
  }

  /* Outputs for Enabled SubSystem: '<S96>/Enabled Subsystem' */
  /* Constant: '<S68>/Enable' incorporates:
   *  Constant: '<S68>/C'
   *  Constant: '<S69>/KalmanGainM'
   *  Delay: '<S68>/MemoryX'
   */
  parrot_getting_EnabledSubsystem(parrot_gettingstarted_P.Enable_Value_k,
    parrot_gettingstarted_P.KalmanGainM_Value, parrot_gettingstarted_P.C_Value_m,
    parrot_gettingstarted_B.Phi_measure,
    parrot_gettingstarted_DW.MemoryX_DSTATE_n,
    &parrot_gettingstarted_B.EnabledSubsystem_o,
    &parrot_gettingstarted_DW.EnabledSubsystem_o,
    &parrot_gettingstarted_P.EnabledSubsystem_o);

  /* End of Outputs for SubSystem: '<S96>/Enabled Subsystem' */

  /* Sum: '<S96>/Add' incorporates:
   *  Delay: '<S68>/MemoryX'
   */
  rtb_r_error = parrot_gettingstarted_B.EnabledSubsystem_o.Product2 +
    parrot_gettingstarted_DW.MemoryX_DSTATE_n;

  /* DataTypeConversion: '<S5>/Cast To Single' */
  rtb_CastToSingle_e = (real32_T)rtb_r_error;

  /* Math: '<S6>/Square' incorporates:
   *  Inport: '<Root>/Sensors'
   */
  rtb_CastToSingle_lx = sensor_inport.HALSensors.HAL_acc_SI.y *
    sensor_inport.HALSensors.HAL_acc_SI.y;

  /* Math: '<S6>/Square1' incorporates:
   *  Inport: '<Root>/Sensors'
   */
  rtb_CastToSingle_k = sensor_inport.HALSensors.HAL_acc_SI.z *
    sensor_inport.HALSensors.HAL_acc_SI.z;

  /* Trigonometry: '<S6>/Atan1' incorporates:
   *  Gain: '<S6>/Gain1'
   *  Inport: '<Root>/Sensors'
   *  Product: '<S6>/Divide1'
   *  Sqrt: '<S6>/Sqrt'
   *  Sum: '<S6>/Sum'
   */
  rtb_theta_measure = (real32_T)atan(parrot_gettingstarted_P.Gain1_Gain *
    sensor_inport.HALSensors.HAL_acc_SI.x / (real32_T)sqrt(rtb_CastToSingle_lx +
    rtb_CastToSingle_k));

  /* Delay: '<S123>/MemoryX' incorporates:
   *  Constant: '<S123>/X0'
   */
  if (parrot_gettingstarted_DW.icLoad_o) {
    parrot_gettingstarted_DW.MemoryX_DSTATE_c =
      parrot_gettingstarted_P.X0_Value_i;
  }

  /* Outputs for Enabled SubSystem: '<S151>/Enabled Subsystem' incorporates:
   *  EnablePort: '<S177>/Enable'
   */
  /* Constant: '<S123>/Enable' */
  if (parrot_gettingstarted_P.Enable_Value_j) {
    parrot_gettingstarted_DW.EnabledSubsystem_MODE = true;

    /* Product: '<S177>/Product' incorporates:
     *  Constant: '<S123>/C'
     *  Delay: '<S123>/MemoryX'
     */
    rtb_CastToSingle_k = parrot_gettingstarted_P.C_Value_c *
      parrot_gettingstarted_DW.MemoryX_DSTATE_c;

    /* Product: '<S177>/Product2' incorporates:
     *  Constant: '<S124>/KalmanGainM'
     *  DataTypeConversion: '<S168>/Conversion'
     *  Sum: '<S177>/Add1'
     */
    parrot_gettingstarted_B.Product2_c = (rtb_theta_measure - rtb_CastToSingle_k)
      * (real32_T)parrot_gettingstarted_P.KalmanGainM_Value_h;
  } else if (parrot_gettingstarted_DW.EnabledSubsystem_MODE) {
    /* Disable for Product: '<S177>/Product2' incorporates:
     *  Outport: '<S177>/deltax'
     */
    parrot_gettingstarted_B.Product2_c = parrot_gettingstarted_P.deltax_Y0_k;
    parrot_gettingstarted_DW.EnabledSubsystem_MODE = false;
  }

  /* End of Outputs for SubSystem: '<S151>/Enabled Subsystem' */

  /* Sum: '<S151>/Add' incorporates:
   *  Delay: '<S123>/MemoryX'
   */
  rtb_Add_b = parrot_gettingstarted_B.Product2_c +
    parrot_gettingstarted_DW.MemoryX_DSTATE_c;

  /* MATLAB Function: '<S1>/PD rotate' */
  /* MATLAB Function 'Flight_Control_System/PD rotate': '<S9>:1' */
  rtb_CastToSingle_lx = (real32_T)sin(rtb_CastToSingle_e);
  rtb_CastToSingle_k = (real32_T)cos(rtb_CastToSingle_e);
  parrot_gettingstarted_B.A[1] = 0.0F;
  parrot_gettingstarted_B.A[4] = rtb_CastToSingle_k;
  parrot_gettingstarted_B.A[7] = rtb_CastToSingle_lx;
  parrot_gettingstarted_B.A[2] = 0.0F;
  parrot_gettingstarted_B.A[5] = -rtb_CastToSingle_lx;
  parrot_gettingstarted_B.A[8] = rtb_CastToSingle_k;
  rtb_CastToSingle_lx = (real32_T)sin(rtb_Add_b);
  rtb_CastToSingle_k = (real32_T)cos(rtb_Add_b);
  parrot_gettingstarted_B.B[0] = rtb_CastToSingle_k;
  parrot_gettingstarted_B.B[3] = 0.0F;
  parrot_gettingstarted_B.B[6] = -rtb_CastToSingle_lx;
  parrot_gettingstarted_B.A[0] = 1.0F;
  parrot_gettingstarted_B.B[1] = 0.0F;
  parrot_gettingstarted_B.A[3] = 0.0F;
  parrot_gettingstarted_B.B[4] = 1.0F;
  parrot_gettingstarted_B.A[6] = 0.0F;
  parrot_gettingstarted_B.B[7] = 0.0F;
  parrot_gettingstarted_B.B[2] = rtb_CastToSingle_lx;
  parrot_gettingstarted_B.B[5] = 0.0F;
  parrot_gettingstarted_B.B[8] = rtb_CastToSingle_k;

  /* '<S9>:1:5' */
  for (j = 0; j < 3; j++) {
    coffset = j * 3;
    for (i = 0; i < 3; i++) {
      aoffset = i * 3;
      rtb_CastToSingle_lx = parrot_gettingstarted_B.A[aoffset] *
        parrot_gettingstarted_B.B[j];
      parrot_gettingstarted_B.y[coffset + i] =
        (parrot_gettingstarted_B.A[aoffset + 1] * parrot_gettingstarted_B.B[j +
         3] + rtb_CastToSingle_lx) + parrot_gettingstarted_B.A[aoffset + 2] *
        parrot_gettingstarted_B.B[j + 6];
    }
  }

  /* '<S9>:1:6' */
  rtb_y = parrot_gettingstarted_B.CastToSingle[0] * parrot_gettingstarted_B.y[2];

  /* End of MATLAB Function: '<S1>/PD rotate' */

  /* ToWorkspace: '<S1>/To Workspace' */
  {
    double locTime = parrot_gettingstarted_M->Timing.taskTime0
      ;
    rt_UpdateStructLogVar((StructLogVar *)
                          parrot_gettingstarted_DW.ToWorkspace_PWORK.LoggedData,
                          &locTime, &rtb_y);
  }

  /* ToWorkspace: '<S4>/To Workspace1' */
  {
    double locTime = parrot_gettingstarted_M->Timing.taskTime0
      ;
    rt_UpdateStructLogVar((StructLogVar *)
                          parrot_gettingstarted_DW.ToWorkspace1_PWORK_h.LoggedData,
                          &locTime, &parrot_gettingstarted_B.CastToSingle[1]);
  }

  /* DataTypeConversion: '<S4>/Data Type Conversion' incorporates:
   *  DataTypeConversion: '<S5>/Cast To Double2'
   *  Inport: '<Root>/Sensors'
   */
  rtb_r_error = sensor_inport.HALSensors.HAL_acc_SI.z;

  /* Sum: '<S4>/Sum5' incorporates:
   *  Constant: '<S4>/Constant6'
   */
  parrot_gettingstarted_B.Sum5 = rtb_r_error -
    parrot_gettingstarted_P.Constant6_Value_k;

  /* Outputs for Enabled SubSystem: '<S34>/MeasurementUpdate' incorporates:
   *  EnablePort: '<S65>/Enable'
   */
  /* Constant: '<S13>/Enable' */
  /* MATLAB Function 'Kalman Filter/CovarianceOutputConfigurator/decideOutput/SqrtUsedFcn': '<S64>:1' */
  if (parrot_gettingstarted_P.Enable_Value) {
    parrot_gettingstarted_DW.MeasurementUpdate_MODE_j = true;

    /* Sum: '<S65>/Sum' incorporates:
     *  Constant: '<S13>/C'
     *  Constant: '<S13>/D'
     *  DataTypeConversion: '<S4>/Data Type Conversion1'
     *  Delay: '<S13>/MemoryX'
     *  Inport: '<Root>/Sensors'
     *  Product: '<S65>/C[k]*xhat[k|k-1]'
     *  Product: '<S65>/D[k]*u[k]'
     *  Sum: '<S65>/Add1'
     */
    rtb_r_error = sensor_inport.HALSensors.HAL_ultrasound_SI.altitude -
      ((parrot_gettingstarted_P.C_Value[0] *
        parrot_gettingstarted_DW.MemoryX_DSTATE[0] +
        parrot_gettingstarted_P.C_Value[1] *
        parrot_gettingstarted_DW.MemoryX_DSTATE[1]) +
       parrot_gettingstarted_P.D_Value * parrot_gettingstarted_B.Sum5);

    /* Product: '<S65>/Product3' incorporates:
     *  Constant: '<S14>/KalmanGainL'
     */
    parrot_gettingstarted_B.Product3[0] =
      parrot_gettingstarted_P.KalmanGainL_Value[0] * rtb_r_error;
    parrot_gettingstarted_B.Product3[1] =
      parrot_gettingstarted_P.KalmanGainL_Value[1] * rtb_r_error;
  } else if (parrot_gettingstarted_DW.MeasurementUpdate_MODE_j) {
    /* Disable for Product: '<S65>/Product3' incorporates:
     *  Outport: '<S65>/L*(y[k]-yhat[k|k-1])'
     */
    parrot_gettingstarted_B.Product3[0] = parrot_gettingstarted_P.Lykyhatkk1_Y0;
    parrot_gettingstarted_B.Product3[1] = parrot_gettingstarted_P.Lykyhatkk1_Y0;
    parrot_gettingstarted_DW.MeasurementUpdate_MODE_j = false;
  }

  /* End of Outputs for SubSystem: '<S34>/MeasurementUpdate' */

  /* ToWorkspace: '<S5>/To Workspace' */
  {
    double locTime = parrot_gettingstarted_M->Timing.taskTime0
      ;
    rt_UpdateStructLogVar((StructLogVar *)
                          parrot_gettingstarted_DW.ToWorkspace_PWORK_a.LoggedData,
                          &locTime, &rtb_CastToSingle_e);
  }

  /* Product: '<S89>/A[k]*xhat[k|k-1]' incorporates:
   *  Constant: '<S68>/A'
   *  Delay: '<S68>/MemoryX'
   */
  rtb_r_error = parrot_gettingstarted_P.A_Value_c *
    parrot_gettingstarted_DW.MemoryX_DSTATE_n;

  /* Outputs for Enabled SubSystem: '<S89>/MeasurementUpdate' */
  /* Constant: '<S68>/Enable' incorporates:
   *  Constant: '<S68>/C'
   *  Constant: '<S68>/D'
   *  Constant: '<S69>/KalmanGainL'
   *  DataTypeConversion: '<S5>/Cast To Double'
   *  Delay: '<S68>/MemoryX'
   *  Inport: '<Root>/Sensors'
   */
  parrot_gettin_MeasurementUpdate(parrot_gettingstarted_P.Enable_Value_k,
    parrot_gettingstarted_P.KalmanGainL_Value_l,
    parrot_gettingstarted_B.Phi_measure, parrot_gettingstarted_P.C_Value_m,
    parrot_gettingstarted_DW.MemoryX_DSTATE_n, parrot_gettingstarted_P.D_Value_e,
    (real_T)sensor_inport.HALSensors.HAL_gyro_SI.x,
    &parrot_gettingstarted_B.MeasurementUpdate_h,
    &parrot_gettingstarted_DW.MeasurementUpdate_h,
    &parrot_gettingstarted_P.MeasurementUpdate_h);

  /* End of Outputs for SubSystem: '<S89>/MeasurementUpdate' */

  /* Update for Delay: '<S68>/MemoryX' incorporates:
   *  Constant: '<S68>/B'
   *  DataTypeConversion: '<S5>/Cast To Double'
   *  Inport: '<Root>/Sensors'
   *  Product: '<S89>/B[k]*u[k]'
   *  Sum: '<S89>/Add'
   */
  parrot_gettingstarted_DW.MemoryX_DSTATE_n = (parrot_gettingstarted_P.B_Value_i
    * sensor_inport.HALSensors.HAL_gyro_SI.x + rtb_r_error) +
    parrot_gettingstarted_B.MeasurementUpdate_h.Product3;

  /* ToWorkspace: '<S6>/To Workspace' */
  {
    double locTime = parrot_gettingstarted_M->Timing.taskTime0
      ;
    rt_UpdateStructLogVar((StructLogVar *)
                          parrot_gettingstarted_DW.ToWorkspace_PWORK_c.LoggedData,
                          &locTime, &rtb_Add_b);
  }

  /* Gain: '<S6>/Gain' incorporates:
   *  Inport: '<Root>/Sensors'
   */
  rtb_Linearizedtheta_dot = parrot_gettingstarted_P.Gain_Gain *
    sensor_inport.HALSensors.HAL_gyro_SI.y;

  /* Product: '<S144>/A[k]*xhat[k|k-1]' incorporates:
   *  Constant: '<S123>/A'
   *  Delay: '<S123>/MemoryX'
   */
  /* MATLAB Function 'Kalman Filter/CovarianceOutputConfigurator/decideOutput/SqrtUsedFcn': '<S174>:1' */
  rtb_CastToSingle_k = parrot_gettingstarted_P.A_Value_k *
    parrot_gettingstarted_DW.MemoryX_DSTATE_c;

  /* Product: '<S144>/B[k]*u[k]' incorporates:
   *  Constant: '<S123>/B'
   */
  rtb_CastToSingle_lx = parrot_gettingstarted_P.B_Value_n *
    rtb_Linearizedtheta_dot;

  /* Outputs for Enabled SubSystem: '<S144>/MeasurementUpdate' incorporates:
   *  EnablePort: '<S175>/Enable'
   */
  /* Constant: '<S123>/Enable' */
  if (parrot_gettingstarted_P.Enable_Value_j) {
    parrot_gettingstarted_DW.MeasurementUpdate_MODE = true;

    /* Product: '<S175>/Product3' incorporates:
     *  Constant: '<S123>/C'
     *  Constant: '<S123>/D'
     *  Constant: '<S124>/KalmanGainL'
     *  DataTypeConversion: '<S167>/Conversion'
     *  Delay: '<S123>/MemoryX'
     *  Product: '<S175>/C[k]*xhat[k|k-1]'
     *  Product: '<S175>/D[k]*u[k]'
     *  Sum: '<S175>/Add1'
     *  Sum: '<S175>/Sum'
     */
    parrot_gettingstarted_B.Product3_o = (rtb_theta_measure -
      (parrot_gettingstarted_P.C_Value_c *
       parrot_gettingstarted_DW.MemoryX_DSTATE_c +
       parrot_gettingstarted_P.D_Value_o * rtb_Linearizedtheta_dot)) * (real32_T)
      parrot_gettingstarted_P.KalmanGainL_Value_a;
  } else if (parrot_gettingstarted_DW.MeasurementUpdate_MODE) {
    /* Disable for Product: '<S175>/Product3' incorporates:
     *  Outport: '<S175>/L*(y[k]-yhat[k|k-1])'
     */
    parrot_gettingstarted_B.Product3_o = parrot_gettingstarted_P.Lykyhatkk1_Y0_f;
    parrot_gettingstarted_DW.MeasurementUpdate_MODE = false;
  }

  /* End of Outputs for SubSystem: '<S144>/MeasurementUpdate' */

  /* Update for Delay: '<S123>/MemoryX' incorporates:
   *  Sum: '<S144>/Add'
   */
  parrot_gettingstarted_DW.MemoryX_DSTATE_c = (rtb_CastToSingle_lx +
    rtb_CastToSingle_k) + parrot_gettingstarted_B.Product3_o;

  /* MATLAB Function: '<S7>/MATLAB Function' incorporates:
   *  Inport: '<Root>/Sensors'
   */
  parrot_gettingst_MATLABFunction
    (sensor_inport.HALSensors.HAL_pressure_SI.pressure,
     &parrot_gettingstarted_B.sf_MATLABFunction);

  /* Sum: '<S7>/Sum1' incorporates:
   *  Constant: '<S7>/Constant5'
   */
  rtb_r_error = parrot_gettingstarted_B.sf_MATLABFunction.y -
    parrot_gettingstarted_P.ground_alt;

  /* Product: '<S7>/Product' incorporates:
   *  Constant: '<S7>/Constant'
   *  Inport: '<Root>/Sensors'
   */
  parrot_gettingstarted_B.Phi_measure = parrot_gettingstarted_P.ff * rtb_r_error
    * sensor_inport.VisionSensors.opticalFlow_data[0];

  /* Delay: '<S179>/MemoryX' incorporates:
   *  Constant: '<S179>/X0'
   */
  if (parrot_gettingstarted_DW.icLoad_n) {
    parrot_gettingstarted_DW.MemoryX_DSTATE_m =
      parrot_gettingstarted_P.X0_Value_b;
  }

  /* Outputs for Enabled SubSystem: '<S207>/Enabled Subsystem' */
  /* Constant: '<S179>/Enable' incorporates:
   *  Constant: '<S179>/C'
   *  Constant: '<S180>/KalmanGainM'
   *  DataTypeConversion: '<S224>/Conversion'
   *  Delay: '<S179>/MemoryX'
   */
  parrot_getting_EnabledSubsystem(parrot_gettingstarted_P.Enable_Value_p,
    (real_T)parrot_gettingstarted_P.KalmanGainM_Value_dq,
    parrot_gettingstarted_P.C_Value_k, parrot_gettingstarted_B.Phi_measure,
    parrot_gettingstarted_DW.MemoryX_DSTATE_m,
    &parrot_gettingstarted_B.EnabledSubsystem_d,
    &parrot_gettingstarted_DW.EnabledSubsystem_d,
    &parrot_gettingstarted_P.EnabledSubsystem_d);

  /* End of Outputs for SubSystem: '<S207>/Enabled Subsystem' */

  /* Sum: '<S207>/Add' incorporates:
   *  Delay: '<S179>/MemoryX'
   */
  rtb_r_error = parrot_gettingstarted_B.EnabledSubsystem_d.Product2 +
    parrot_gettingstarted_DW.MemoryX_DSTATE_m;

  /* DataTypeConversion: '<S7>/Cast To Single' */
  rtb_CastToSingle_k = (real32_T)rtb_r_error;

  /* ToWorkspace: '<S7>/To Workspace' */
  {
    double locTime = parrot_gettingstarted_M->Timing.taskTime0
      ;
    rt_UpdateStructLogVar((StructLogVar *)
                          parrot_gettingstarted_DW.ToWorkspace_PWORK_j.LoggedData,
                          &locTime, &rtb_CastToSingle_k);
  }

  /* Gain: '<S7>/Gain2' */
  rtb_CastToSingle_lx = parrot_gettingstarted_P.Gain2_Gain * rtb_Add_b;

  /* Product: '<S200>/A[k]*xhat[k|k-1]' incorporates:
   *  Constant: '<S179>/A'
   *  Delay: '<S179>/MemoryX'
   */
  /* MATLAB Function 'Kalman Filter/CovarianceOutputConfigurator/decideOutput/SqrtUsedFcn': '<S230>:1' */
  rtb_r_error = parrot_gettingstarted_P.A_Value_p *
    parrot_gettingstarted_DW.MemoryX_DSTATE_m;

  /* Outputs for Enabled SubSystem: '<S200>/MeasurementUpdate' */
  /* Constant: '<S179>/Enable' incorporates:
   *  Constant: '<S179>/C'
   *  Constant: '<S179>/D'
   *  Constant: '<S180>/KalmanGainL'
   *  DataTypeConversion: '<S7>/Data Type Conversion2'
   *  Delay: '<S179>/MemoryX'
   *  Inport: '<Root>/Sensors'
   *  Sum: '<S7>/Sum3'
   */
  parrot_gettin_MeasurementUpdate(parrot_gettingstarted_P.Enable_Value_p,
    parrot_gettingstarted_P.KalmanGainL_Value_h,
    parrot_gettingstarted_B.Phi_measure, parrot_gettingstarted_P.C_Value_k,
    parrot_gettingstarted_DW.MemoryX_DSTATE_m, parrot_gettingstarted_P.D_Value_l,
    (real_T)(sensor_inport.HALSensors.HAL_acc_SI.x + rtb_CastToSingle_lx),
    &parrot_gettingstarted_B.MeasurementUpdate_d,
    &parrot_gettingstarted_DW.MeasurementUpdate_d,
    &parrot_gettingstarted_P.MeasurementUpdate_d);

  /* End of Outputs for SubSystem: '<S200>/MeasurementUpdate' */

  /* Update for Delay: '<S179>/MemoryX' incorporates:
   *  Constant: '<S179>/B'
   *  DataTypeConversion: '<S7>/Data Type Conversion2'
   *  Inport: '<Root>/Sensors'
   *  Product: '<S200>/B[k]*u[k]'
   *  Sum: '<S200>/Add'
   *  Sum: '<S7>/Sum3'
   */
  parrot_gettingstarted_DW.MemoryX_DSTATE_m =
    ((sensor_inport.HALSensors.HAL_acc_SI.x + rtb_CastToSingle_lx) *
     parrot_gettingstarted_P.B_Value_a + rtb_r_error) +
    parrot_gettingstarted_B.MeasurementUpdate_d.Product3;

  /* MATLAB Function: '<S8>/MATLAB Function1' incorporates:
   *  Inport: '<Root>/Sensors'
   */
  parrot_gettingst_MATLABFunction
    (sensor_inport.HALSensors.HAL_pressure_SI.pressure,
     &parrot_gettingstarted_B.sf_MATLABFunction1);

  /* Sum: '<S8>/Sum2' incorporates:
   *  Constant: '<S8>/Constant4'
   */
  rtb_r_error = parrot_gettingstarted_B.sf_MATLABFunction1.y -
    parrot_gettingstarted_P.ground_alt;

  /* Product: '<S8>/Product1' incorporates:
   *  Constant: '<S8>/Constant3'
   *  Inport: '<Root>/Sensors'
   */
  parrot_gettingstarted_B.Phi_measure = parrot_gettingstarted_P.ff * rtb_r_error
    * sensor_inport.VisionSensors.opticalFlow_data[1];

  /* Delay: '<S235>/MemoryX' incorporates:
   *  Constant: '<S235>/X0'
   */
  if (parrot_gettingstarted_DW.icLoad_k) {
    parrot_gettingstarted_DW.MemoryX_DSTATE_i =
      parrot_gettingstarted_P.X0_Value_g;
  }

  /* Outputs for Enabled SubSystem: '<S263>/Enabled Subsystem' */
  /* Constant: '<S235>/Enable' incorporates:
   *  Constant: '<S235>/C'
   *  Constant: '<S236>/KalmanGainM'
   *  Delay: '<S235>/MemoryX'
   */
  parrot_getting_EnabledSubsystem(parrot_gettingstarted_P.Enable_Value_i,
    parrot_gettingstarted_P.KalmanGainM_Value_n,
    parrot_gettingstarted_P.C_Value_a, parrot_gettingstarted_B.Phi_measure,
    parrot_gettingstarted_DW.MemoryX_DSTATE_i,
    &parrot_gettingstarted_B.EnabledSubsystem_j,
    &parrot_gettingstarted_DW.EnabledSubsystem_j,
    &parrot_gettingstarted_P.EnabledSubsystem_j);

  /* End of Outputs for SubSystem: '<S263>/Enabled Subsystem' */

  /* Sum: '<S263>/Add' incorporates:
   *  Delay: '<S235>/MemoryX'
   */
  rtb_r_error = parrot_gettingstarted_B.EnabledSubsystem_j.Product2 +
    parrot_gettingstarted_DW.MemoryX_DSTATE_i;

  /* DataTypeConversion: '<S8>/Cast To Single' */
  rtb_CastToSingle_lx = (real32_T)rtb_r_error;

  /* ToWorkspace: '<S8>/To Workspace' */
  {
    double locTime = parrot_gettingstarted_M->Timing.taskTime0
      ;
    rt_UpdateStructLogVar((StructLogVar *)
                          parrot_gettingstarted_DW.ToWorkspace_PWORK_d.LoggedData,
                          &locTime, &rtb_CastToSingle_lx);
  }

  /* DataTypeConversion: '<S8>/Data Type Conversion3' incorporates:
   *  Inport: '<Root>/Sensors'
   */
  rtb_r_error = sensor_inport.HALSensors.HAL_acc_SI.y;

  /* Sum: '<S8>/Sum4' incorporates:
   *  Gain: '<S8>/Gain3'
   */
  rtb_Sum4 = parrot_gettingstarted_P.Gain3_Gain * rtb_CastToSingle_e +
    rtb_r_error;

  /* Product: '<S256>/A[k]*xhat[k|k-1]' incorporates:
   *  Constant: '<S235>/A'
   *  Delay: '<S235>/MemoryX'
   */
  rtb_r_error = parrot_gettingstarted_P.A_Value_a *
    parrot_gettingstarted_DW.MemoryX_DSTATE_i;

  /* Outputs for Enabled SubSystem: '<S256>/MeasurementUpdate' */
  /* Constant: '<S235>/Enable' incorporates:
   *  Constant: '<S235>/C'
   *  Constant: '<S235>/D'
   *  Constant: '<S236>/KalmanGainL'
   *  Delay: '<S235>/MemoryX'
   */
  parrot_gettin_MeasurementUpdate(parrot_gettingstarted_P.Enable_Value_i,
    parrot_gettingstarted_P.KalmanGainL_Value_f,
    parrot_gettingstarted_B.Phi_measure, parrot_gettingstarted_P.C_Value_a,
    parrot_gettingstarted_DW.MemoryX_DSTATE_i, parrot_gettingstarted_P.D_Value_b,
    rtb_Sum4, &parrot_gettingstarted_B.MeasurementUpdate_b,
    &parrot_gettingstarted_DW.MeasurementUpdate_b,
    &parrot_gettingstarted_P.MeasurementUpdate_b);

  /* End of Outputs for SubSystem: '<S256>/MeasurementUpdate' */

  /* Update for Delay: '<S235>/MemoryX' incorporates:
   *  Constant: '<S235>/B'
   *  Product: '<S256>/B[k]*u[k]'
   *  Sum: '<S256>/Add'
   */
  parrot_gettingstarted_DW.MemoryX_DSTATE_i =
    (parrot_gettingstarted_P.B_Value_it * rtb_Sum4 + rtb_r_error) +
    parrot_gettingstarted_B.MeasurementUpdate_b.Product3;

  /* Sum: '<S12>/Subtract4' incorporates:
   *  Constant: '<S12>/Constant10'
   */
  rtb_r_error = parrot_gettingstarted_P.Constant10_Value -
    parrot_gettingstarted_B.CastToSingle[1];

  /* Gain: '<S12>/K_PD' incorporates:
   *  Constant: '<S1>/Altitude'
   *  SignalConversion generated from: '<S12>/K_PD'
   *  Sum: '<S12>/Subtract'
   */
  rtb_r_error = (parrot_gettingstarted_P.Altitude_Value - rtb_y) *
    parrot_gettingstarted_P.K_PD[0] + parrot_gettingstarted_P.K_PD[1] *
    rtb_r_error;

  /* SignalConversion generated from: '<S1>/To Workspace2' incorporates:
   *  Constant: '<S1>/r'
   *  Constant: '<S1>/u'
   *  Constant: '<S1>/v'
   *  Constant: '<S2>/Constant10'
   *  Constant: '<S2>/Constant11'
   *  Constant: '<S3>/Constant10'
   *  Constant: '<S3>/Constant11'
   *  Gain: '<S10>/K_r'
   *  Gain: '<S2>/K_v'
   *  Gain: '<S3>/K_u'
   *  Inport: '<Root>/Sensors'
   *  Sum: '<S10>/Subtract3'
   *  Sum: '<S2>/Subtract2'
   *  Sum: '<S2>/Subtract4'
   *  Sum: '<S2>/Subtract5'
   *  Sum: '<S3>/Subtract1'
   *  Sum: '<S3>/Subtract2'
   *  Sum: '<S3>/Subtract5'
   */
  parrot_gettingstarted_B.TmpSignalConversionAtToWork[0] = rtb_r_error;
  parrot_gettingstarted_B.TmpSignalConversionAtToWork[1] =
    ((parrot_gettingstarted_P.v_Value - rtb_CastToSingle_lx) *
     parrot_gettingstarted_P.K_v[0] + (parrot_gettingstarted_P.Constant11_Value
      - rtb_CastToSingle_e) * parrot_gettingstarted_P.K_v[1]) +
    (parrot_gettingstarted_P.Constant10_Value_j -
     sensor_inport.HALSensors.HAL_gyro_SI.x) * parrot_gettingstarted_P.K_v[2];
  parrot_gettingstarted_B.TmpSignalConversionAtToWork[2] =
    ((parrot_gettingstarted_P.u_Value - rtb_CastToSingle_k) *
     parrot_gettingstarted_P.K_u[0] +
     (parrot_gettingstarted_P.Constant11_Value_p - rtb_Add_b) *
     parrot_gettingstarted_P.K_u[1]) +
    (parrot_gettingstarted_P.Constant10_Value_c -
     sensor_inport.HALSensors.HAL_gyro_SI.y) * parrot_gettingstarted_P.K_u[2];
  parrot_gettingstarted_B.TmpSignalConversionAtToWork[3] =
    (parrot_gettingstarted_P.r_Value - sensor_inport.HALSensors.HAL_gyro_SI.z) *
    parrot_gettingstarted_P.K_psi[0];

  /* ToWorkspace: '<S1>/To Workspace2' */
  {
    double locTime = parrot_gettingstarted_M->Timing.taskTime0
      ;
    rt_UpdateStructLogVar((StructLogVar *)
                          parrot_gettingstarted_DW.ToWorkspace2_PWORK.LoggedData,
                          &locTime,
                          &parrot_gettingstarted_B.TmpSignalConversionAtToWork[0]);
  }

  /* ToWorkspace: '<S12>/To Workspace' */
  {
    double locTime = parrot_gettingstarted_M->Timing.taskTime0
      ;
    rt_UpdateStructLogVar((StructLogVar *)
                          parrot_gettingstarted_DW.ToWorkspace_PWORK_h.LoggedData,
                          &locTime, &rtb_r_error);
  }

  /* Update for Delay: '<S13>/MemoryX' */
  parrot_gettingstarted_DW.icLoad = false;

  /* Product: '<S34>/A[k]*xhat[k|k-1]' incorporates:
   *  Constant: '<S13>/A'
   *  Delay: '<S13>/MemoryX'
   */
  rtb_r_error = parrot_gettingstarted_P.A_Value[0] *
    parrot_gettingstarted_DW.MemoryX_DSTATE[0] +
    parrot_gettingstarted_DW.MemoryX_DSTATE[1] *
    parrot_gettingstarted_P.A_Value[2];
  parrot_gettingstarted_B.Phi_measure = parrot_gettingstarted_DW.MemoryX_DSTATE
    [0] * parrot_gettingstarted_P.A_Value[1] +
    parrot_gettingstarted_DW.MemoryX_DSTATE[1] *
    parrot_gettingstarted_P.A_Value[3];

  /* Update for Delay: '<S13>/MemoryX' incorporates:
   *  Constant: '<S13>/B'
   *  Product: '<S34>/B[k]*u[k]'
   *  Product: '<S65>/Product3'
   *  Sum: '<S34>/Add'
   */
  parrot_gettingstarted_DW.MemoryX_DSTATE[0] = (parrot_gettingstarted_P.B_Value
    [0] * parrot_gettingstarted_B.Sum5 + rtb_r_error) +
    parrot_gettingstarted_B.Product3[0];
  parrot_gettingstarted_DW.MemoryX_DSTATE[1] = (parrot_gettingstarted_P.B_Value
    [1] * parrot_gettingstarted_B.Sum5 + parrot_gettingstarted_B.Phi_measure) +
    parrot_gettingstarted_B.Product3[1];

  /* Update for Delay: '<S68>/MemoryX' */
  parrot_gettingstarted_DW.icLoad_g = false;

  /* Update for Delay: '<S123>/MemoryX' */
  parrot_gettingstarted_DW.icLoad_o = false;

  /* Update for Delay: '<S179>/MemoryX' */
  parrot_gettingstarted_DW.icLoad_n = false;

  /* Update for Delay: '<S235>/MemoryX' */
  parrot_gettingstarted_DW.icLoad_k = false;

  /* Matfile logging */
  rt_UpdateTXYLogVars(parrot_gettingstarted_M->rtwLogInfo,
                      (&parrot_gettingstarted_M->Timing.taskTime0));

  /* signal main to stop simulation */
  {                                    /* Sample time: [0.005s, 0.0s] */
    if ((rtmGetTFinal(parrot_gettingstarted_M)!=-1) &&
        !((rtmGetTFinal(parrot_gettingstarted_M)-
           parrot_gettingstarted_M->Timing.taskTime0) >
          parrot_gettingstarted_M->Timing.taskTime0 * (DBL_EPSILON))) {
      rtmSetErrorStatus(parrot_gettingstarted_M, "Simulation finished");
    }
  }

  /* Update absolute time for base rate */
  /* The "clockTick0" counts the number of times the code of this task has
   * been executed. The absolute time is the multiplication of "clockTick0"
   * and "Timing.stepSize0". Size of "clockTick0" ensures timer will not
   * overflow during the application lifespan selected.
   * Timer of this task consists of two 32 bit unsigned integers.
   * The two integers represent the low bits Timing.clockTick0 and the high bits
   * Timing.clockTickH0. When the low bit overflows to 0, the high bits increment.
   */
  if (!(++parrot_gettingstarted_M->Timing.clockTick0)) {
    ++parrot_gettingstarted_M->Timing.clockTickH0;
  }

  parrot_gettingstarted_M->Timing.taskTime0 =
    parrot_gettingstarted_M->Timing.clockTick0 *
    parrot_gettingstarted_M->Timing.stepSize0 +
    parrot_gettingstarted_M->Timing.clockTickH0 *
    parrot_gettingstarted_M->Timing.stepSize0 * 4294967296.0;
}

/* Model initialize function */
void parrot_gettingstarted_initialize(void)
{
  /* Registration code */

  /* initialize non-finites */
  rt_InitInfAndNaN(sizeof(real_T));

  /* initialize real-time model */
  (void) memset((void *)parrot_gettingstarted_M, 0,
                sizeof(RT_MODEL_parrot_gettingstarte_T));
  rtmSetTFinal(parrot_gettingstarted_M, 100.0);
  parrot_gettingstarted_M->Timing.stepSize0 = 0.005;

  /* Setup for data logging */
  {
    static RTWLogInfo rt_DataLoggingInfo;
    rt_DataLoggingInfo.loggingInterval = (NULL);
    parrot_gettingstarted_M->rtwLogInfo = &rt_DataLoggingInfo;
  }

  /* Setup for data logging */
  {
    rtliSetLogXSignalInfo(parrot_gettingstarted_M->rtwLogInfo, (NULL));
    rtliSetLogXSignalPtrs(parrot_gettingstarted_M->rtwLogInfo, (NULL));
    rtliSetLogT(parrot_gettingstarted_M->rtwLogInfo, "tout");
    rtliSetLogX(parrot_gettingstarted_M->rtwLogInfo, "");
    rtliSetLogXFinal(parrot_gettingstarted_M->rtwLogInfo, "");
    rtliSetLogVarNameModifier(parrot_gettingstarted_M->rtwLogInfo, "rt_");
    rtliSetLogFormat(parrot_gettingstarted_M->rtwLogInfo, 4);
    rtliSetLogMaxRows(parrot_gettingstarted_M->rtwLogInfo, 0);
    rtliSetLogDecimation(parrot_gettingstarted_M->rtwLogInfo, 1);
    rtliSetLogY(parrot_gettingstarted_M->rtwLogInfo, "");
    rtliSetLogYSignalInfo(parrot_gettingstarted_M->rtwLogInfo, (NULL));
    rtliSetLogYSignalPtrs(parrot_gettingstarted_M->rtwLogInfo, (NULL));
  }

  /* block I/O */
  (void) memset(((void *) &parrot_gettingstarted_B), 0,
                sizeof(B_parrot_gettingstarted_T));

  /* exported global signals */
  motors_outport[0] = 0.0F;
  motors_outport[1] = 0.0F;
  motors_outport[2] = 0.0F;
  motors_outport[3] = 0.0F;
  flag_outport = 0U;

  /* states (dwork) */
  (void) memset((void *)&parrot_gettingstarted_DW, 0,
                sizeof(DW_parrot_gettingstarted_T));

  /* external inputs */
  (void)memset(&cmd_inport, 0, sizeof(CommandBus));
  (void)memset(&sensor_inport, 0, sizeof(SensorsBus));

  /* external outputs */
  (void)memset(&parrot_gettingstarted_Y, 0, sizeof(ExtY_parrot_gettingstarted_T));

  /* Matfile logging */
  rt_StartDataLoggingWithStartTime(parrot_gettingstarted_M->rtwLogInfo, 0.0,
    rtmGetTFinal(parrot_gettingstarted_M),
    parrot_gettingstarted_M->Timing.stepSize0, (&rtmGetErrorStatus
    (parrot_gettingstarted_M)));

  /* SetupRuntimeResources for ToWorkspace: '<S1>/To Workspace1' */
  {
    static int_T rt_ToWksWidths[] = { 4 };

    static int_T rt_ToWksNumDimensions[] = { 1 };

    static int_T rt_ToWksDimensions[] = { 4 };

    static boolean_T rt_ToWksIsVarDims[] = { 0 };

    static void *rt_ToWksCurrSigDims[] = { (NULL) };

    static int_T rt_ToWksCurrSigDimsSize[] = { 4 };

    static BuiltInDTypeId rt_ToWksDataTypeIds[] = { SS_DOUBLE };

    static int_T rt_ToWksComplexSignals[] = { 0 };

    static int_T rt_ToWksFrameData[] = { 0 };

    static RTWPreprocessingFcnPtr rt_ToWksLoggingPreprocessingFcnPtrs[] = {
      (NULL)
    };

    static const char_T *rt_ToWksLabels[] = { "" };

    static RTWLogSignalInfo rt_ToWksSignalInfo = {
      1,
      rt_ToWksWidths,
      rt_ToWksNumDimensions,
      rt_ToWksDimensions,
      rt_ToWksIsVarDims,
      rt_ToWksCurrSigDims,
      rt_ToWksCurrSigDimsSize,
      rt_ToWksDataTypeIds,
      rt_ToWksComplexSignals,
      rt_ToWksFrameData,
      rt_ToWksLoggingPreprocessingFcnPtrs,

      { rt_ToWksLabels },
      (NULL),
      (NULL),
      (NULL),

      { (NULL) },

      { (NULL) },
      (NULL),
      (NULL)
    };

    static const char_T rt_ToWksBlockName[] =
      "parrot_gettingstarted/Flight_Control_System/To Workspace1";
    parrot_gettingstarted_DW.ToWorkspace1_PWORK.LoggedData =
      rt_CreateStructLogVar(
      parrot_gettingstarted_M->rtwLogInfo,
      0.0,
      rtmGetTFinal(parrot_gettingstarted_M),
      parrot_gettingstarted_M->Timing.stepSize0,
      (&rtmGetErrorStatus(parrot_gettingstarted_M)),
      "mixer_out",
      1,
      0,
      1,
      0.005,
      &rt_ToWksSignalInfo,
      rt_ToWksBlockName);
    if (parrot_gettingstarted_DW.ToWorkspace1_PWORK.LoggedData == (NULL))
      return;
  }

  /* SetupRuntimeResources for ToWorkspace: '<S1>/To Workspace' */
  {
    static int_T rt_ToWksWidths[] = { 1 };

    static int_T rt_ToWksNumDimensions[] = { 1 };

    static int_T rt_ToWksDimensions[] = { 1 };

    static boolean_T rt_ToWksIsVarDims[] = { 0 };

    static void *rt_ToWksCurrSigDims[] = { (NULL) };

    static int_T rt_ToWksCurrSigDimsSize[] = { 4 };

    static BuiltInDTypeId rt_ToWksDataTypeIds[] = { SS_SINGLE };

    static int_T rt_ToWksComplexSignals[] = { 0 };

    static int_T rt_ToWksFrameData[] = { 0 };

    static RTWPreprocessingFcnPtr rt_ToWksLoggingPreprocessingFcnPtrs[] = {
      (NULL)
    };

    static const char_T *rt_ToWksLabels[] = { "" };

    static RTWLogSignalInfo rt_ToWksSignalInfo = {
      1,
      rt_ToWksWidths,
      rt_ToWksNumDimensions,
      rt_ToWksDimensions,
      rt_ToWksIsVarDims,
      rt_ToWksCurrSigDims,
      rt_ToWksCurrSigDimsSize,
      rt_ToWksDataTypeIds,
      rt_ToWksComplexSignals,
      rt_ToWksFrameData,
      rt_ToWksLoggingPreprocessingFcnPtrs,

      { rt_ToWksLabels },
      (NULL),
      (NULL),
      (NULL),

      { (NULL) },

      { (NULL) },
      (NULL),
      (NULL)
    };

    static const char_T rt_ToWksBlockName[] =
      "parrot_gettingstarted/Flight_Control_System/To Workspace";
    parrot_gettingstarted_DW.ToWorkspace_PWORK.LoggedData =
      rt_CreateStructLogVar(
      parrot_gettingstarted_M->rtwLogInfo,
      0.0,
      rtmGetTFinal(parrot_gettingstarted_M),
      parrot_gettingstarted_M->Timing.stepSize0,
      (&rtmGetErrorStatus(parrot_gettingstarted_M)),
      "alt_est",
      1,
      0,
      1,
      0.005,
      &rt_ToWksSignalInfo,
      rt_ToWksBlockName);
    if (parrot_gettingstarted_DW.ToWorkspace_PWORK.LoggedData == (NULL))
      return;
  }

  /* SetupRuntimeResources for ToWorkspace: '<S4>/To Workspace1' */
  {
    static int_T rt_ToWksWidths[] = { 1 };

    static int_T rt_ToWksNumDimensions[] = { 1 };

    static int_T rt_ToWksDimensions[] = { 1 };

    static boolean_T rt_ToWksIsVarDims[] = { 0 };

    static void *rt_ToWksCurrSigDims[] = { (NULL) };

    static int_T rt_ToWksCurrSigDimsSize[] = { 4 };

    static BuiltInDTypeId rt_ToWksDataTypeIds[] = { SS_SINGLE };

    static int_T rt_ToWksComplexSignals[] = { 0 };

    static int_T rt_ToWksFrameData[] = { 0 };

    static RTWPreprocessingFcnPtr rt_ToWksLoggingPreprocessingFcnPtrs[] = {
      (NULL)
    };

    static const char_T *rt_ToWksLabels[] = { "" };

    static RTWLogSignalInfo rt_ToWksSignalInfo = {
      1,
      rt_ToWksWidths,
      rt_ToWksNumDimensions,
      rt_ToWksDimensions,
      rt_ToWksIsVarDims,
      rt_ToWksCurrSigDims,
      rt_ToWksCurrSigDimsSize,
      rt_ToWksDataTypeIds,
      rt_ToWksComplexSignals,
      rt_ToWksFrameData,
      rt_ToWksLoggingPreprocessingFcnPtrs,

      { rt_ToWksLabels },
      (NULL),
      (NULL),
      (NULL),

      { (NULL) },

      { (NULL) },
      (NULL),
      (NULL)
    };

    static const char_T rt_ToWksBlockName[] =
      "parrot_gettingstarted/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/To Workspace1";
    parrot_gettingstarted_DW.ToWorkspace1_PWORK_h.LoggedData =
      rt_CreateStructLogVar(
      parrot_gettingstarted_M->rtwLogInfo,
      0.0,
      rtmGetTFinal(parrot_gettingstarted_M),
      parrot_gettingstarted_M->Timing.stepSize0,
      (&rtmGetErrorStatus(parrot_gettingstarted_M)),
      "w_est",
      1,
      0,
      1,
      0.005,
      &rt_ToWksSignalInfo,
      rt_ToWksBlockName);
    if (parrot_gettingstarted_DW.ToWorkspace1_PWORK_h.LoggedData == (NULL))
      return;
  }

  /* SetupRuntimeResources for ToWorkspace: '<S5>/To Workspace' */
  {
    static int_T rt_ToWksWidths[] = { 1 };

    static int_T rt_ToWksNumDimensions[] = { 1 };

    static int_T rt_ToWksDimensions[] = { 1 };

    static boolean_T rt_ToWksIsVarDims[] = { 0 };

    static void *rt_ToWksCurrSigDims[] = { (NULL) };

    static int_T rt_ToWksCurrSigDimsSize[] = { 4 };

    static BuiltInDTypeId rt_ToWksDataTypeIds[] = { SS_SINGLE };

    static int_T rt_ToWksComplexSignals[] = { 0 };

    static int_T rt_ToWksFrameData[] = { 0 };

    static RTWPreprocessingFcnPtr rt_ToWksLoggingPreprocessingFcnPtrs[] = {
      (NULL)
    };

    static const char_T *rt_ToWksLabels[] = { "" };

    static RTWLogSignalInfo rt_ToWksSignalInfo = {
      1,
      rt_ToWksWidths,
      rt_ToWksNumDimensions,
      rt_ToWksDimensions,
      rt_ToWksIsVarDims,
      rt_ToWksCurrSigDims,
      rt_ToWksCurrSigDimsSize,
      rt_ToWksDataTypeIds,
      rt_ToWksComplexSignals,
      rt_ToWksFrameData,
      rt_ToWksLoggingPreprocessingFcnPtrs,

      { rt_ToWksLabels },
      (NULL),
      (NULL),
      (NULL),

      { (NULL) },

      { (NULL) },
      (NULL),
      (NULL)
    };

    static const char_T rt_ToWksBlockName[] =
      "parrot_gettingstarted/Flight_Control_System/Kalman Filter: Phi/To Workspace";
    parrot_gettingstarted_DW.ToWorkspace_PWORK_a.LoggedData =
      rt_CreateStructLogVar(
      parrot_gettingstarted_M->rtwLogInfo,
      0.0,
      rtmGetTFinal(parrot_gettingstarted_M),
      parrot_gettingstarted_M->Timing.stepSize0,
      (&rtmGetErrorStatus(parrot_gettingstarted_M)),
      "phi_est",
      1,
      0,
      1,
      0.005,
      &rt_ToWksSignalInfo,
      rt_ToWksBlockName);
    if (parrot_gettingstarted_DW.ToWorkspace_PWORK_a.LoggedData == (NULL))
      return;
  }

  /* SetupRuntimeResources for ToWorkspace: '<S6>/To Workspace' */
  {
    static int_T rt_ToWksWidths[] = { 1 };

    static int_T rt_ToWksNumDimensions[] = { 1 };

    static int_T rt_ToWksDimensions[] = { 1 };

    static boolean_T rt_ToWksIsVarDims[] = { 0 };

    static void *rt_ToWksCurrSigDims[] = { (NULL) };

    static int_T rt_ToWksCurrSigDimsSize[] = { 4 };

    static BuiltInDTypeId rt_ToWksDataTypeIds[] = { SS_SINGLE };

    static int_T rt_ToWksComplexSignals[] = { 0 };

    static int_T rt_ToWksFrameData[] = { 0 };

    static RTWPreprocessingFcnPtr rt_ToWksLoggingPreprocessingFcnPtrs[] = {
      (NULL)
    };

    static const char_T *rt_ToWksLabels[] = { "" };

    static RTWLogSignalInfo rt_ToWksSignalInfo = {
      1,
      rt_ToWksWidths,
      rt_ToWksNumDimensions,
      rt_ToWksDimensions,
      rt_ToWksIsVarDims,
      rt_ToWksCurrSigDims,
      rt_ToWksCurrSigDimsSize,
      rt_ToWksDataTypeIds,
      rt_ToWksComplexSignals,
      rt_ToWksFrameData,
      rt_ToWksLoggingPreprocessingFcnPtrs,

      { rt_ToWksLabels },
      (NULL),
      (NULL),
      (NULL),

      { (NULL) },

      { (NULL) },
      (NULL),
      (NULL)
    };

    static const char_T rt_ToWksBlockName[] =
      "parrot_gettingstarted/Flight_Control_System/Kalman Filter: Theta/To Workspace";
    parrot_gettingstarted_DW.ToWorkspace_PWORK_c.LoggedData =
      rt_CreateStructLogVar(
      parrot_gettingstarted_M->rtwLogInfo,
      0.0,
      rtmGetTFinal(parrot_gettingstarted_M),
      parrot_gettingstarted_M->Timing.stepSize0,
      (&rtmGetErrorStatus(parrot_gettingstarted_M)),
      "theta_est",
      1,
      0,
      1,
      0.005,
      &rt_ToWksSignalInfo,
      rt_ToWksBlockName);
    if (parrot_gettingstarted_DW.ToWorkspace_PWORK_c.LoggedData == (NULL))
      return;
  }

  /* SetupRuntimeResources for ToWorkspace: '<S7>/To Workspace' */
  {
    static int_T rt_ToWksWidths[] = { 1 };

    static int_T rt_ToWksNumDimensions[] = { 1 };

    static int_T rt_ToWksDimensions[] = { 1 };

    static boolean_T rt_ToWksIsVarDims[] = { 0 };

    static void *rt_ToWksCurrSigDims[] = { (NULL) };

    static int_T rt_ToWksCurrSigDimsSize[] = { 4 };

    static BuiltInDTypeId rt_ToWksDataTypeIds[] = { SS_SINGLE };

    static int_T rt_ToWksComplexSignals[] = { 0 };

    static int_T rt_ToWksFrameData[] = { 0 };

    static RTWPreprocessingFcnPtr rt_ToWksLoggingPreprocessingFcnPtrs[] = {
      (NULL)
    };

    static const char_T *rt_ToWksLabels[] = { "" };

    static RTWLogSignalInfo rt_ToWksSignalInfo = {
      1,
      rt_ToWksWidths,
      rt_ToWksNumDimensions,
      rt_ToWksDimensions,
      rt_ToWksIsVarDims,
      rt_ToWksCurrSigDims,
      rt_ToWksCurrSigDimsSize,
      rt_ToWksDataTypeIds,
      rt_ToWksComplexSignals,
      rt_ToWksFrameData,
      rt_ToWksLoggingPreprocessingFcnPtrs,

      { rt_ToWksLabels },
      (NULL),
      (NULL),
      (NULL),

      { (NULL) },

      { (NULL) },
      (NULL),
      (NULL)
    };

    static const char_T rt_ToWksBlockName[] =
      "parrot_gettingstarted/Flight_Control_System/Kalman Filter: U/To Workspace";
    parrot_gettingstarted_DW.ToWorkspace_PWORK_j.LoggedData =
      rt_CreateStructLogVar(
      parrot_gettingstarted_M->rtwLogInfo,
      0.0,
      rtmGetTFinal(parrot_gettingstarted_M),
      parrot_gettingstarted_M->Timing.stepSize0,
      (&rtmGetErrorStatus(parrot_gettingstarted_M)),
      "u_est",
      1,
      0,
      1,
      0.005,
      &rt_ToWksSignalInfo,
      rt_ToWksBlockName);
    if (parrot_gettingstarted_DW.ToWorkspace_PWORK_j.LoggedData == (NULL))
      return;
  }

  /* SetupRuntimeResources for ToWorkspace: '<S8>/To Workspace' */
  {
    static int_T rt_ToWksWidths[] = { 1 };

    static int_T rt_ToWksNumDimensions[] = { 1 };

    static int_T rt_ToWksDimensions[] = { 1 };

    static boolean_T rt_ToWksIsVarDims[] = { 0 };

    static void *rt_ToWksCurrSigDims[] = { (NULL) };

    static int_T rt_ToWksCurrSigDimsSize[] = { 4 };

    static BuiltInDTypeId rt_ToWksDataTypeIds[] = { SS_SINGLE };

    static int_T rt_ToWksComplexSignals[] = { 0 };

    static int_T rt_ToWksFrameData[] = { 0 };

    static RTWPreprocessingFcnPtr rt_ToWksLoggingPreprocessingFcnPtrs[] = {
      (NULL)
    };

    static const char_T *rt_ToWksLabels[] = { "" };

    static RTWLogSignalInfo rt_ToWksSignalInfo = {
      1,
      rt_ToWksWidths,
      rt_ToWksNumDimensions,
      rt_ToWksDimensions,
      rt_ToWksIsVarDims,
      rt_ToWksCurrSigDims,
      rt_ToWksCurrSigDimsSize,
      rt_ToWksDataTypeIds,
      rt_ToWksComplexSignals,
      rt_ToWksFrameData,
      rt_ToWksLoggingPreprocessingFcnPtrs,

      { rt_ToWksLabels },
      (NULL),
      (NULL),
      (NULL),

      { (NULL) },

      { (NULL) },
      (NULL),
      (NULL)
    };

    static const char_T rt_ToWksBlockName[] =
      "parrot_gettingstarted/Flight_Control_System/Kalman Filter: V_est/To Workspace";
    parrot_gettingstarted_DW.ToWorkspace_PWORK_d.LoggedData =
      rt_CreateStructLogVar(
      parrot_gettingstarted_M->rtwLogInfo,
      0.0,
      rtmGetTFinal(parrot_gettingstarted_M),
      parrot_gettingstarted_M->Timing.stepSize0,
      (&rtmGetErrorStatus(parrot_gettingstarted_M)),
      "v_est",
      1,
      0,
      1,
      0.005,
      &rt_ToWksSignalInfo,
      rt_ToWksBlockName);
    if (parrot_gettingstarted_DW.ToWorkspace_PWORK_d.LoggedData == (NULL))
      return;
  }

  /* SetupRuntimeResources for ToWorkspace: '<S1>/To Workspace2' */
  {
    static int_T rt_ToWksWidths[] = { 4 };

    static int_T rt_ToWksNumDimensions[] = { 1 };

    static int_T rt_ToWksDimensions[] = { 4 };

    static boolean_T rt_ToWksIsVarDims[] = { 0 };

    static void *rt_ToWksCurrSigDims[] = { (NULL) };

    static int_T rt_ToWksCurrSigDimsSize[] = { 4 };

    static BuiltInDTypeId rt_ToWksDataTypeIds[] = { SS_DOUBLE };

    static int_T rt_ToWksComplexSignals[] = { 0 };

    static int_T rt_ToWksFrameData[] = { 0 };

    static RTWPreprocessingFcnPtr rt_ToWksLoggingPreprocessingFcnPtrs[] = {
      (NULL)
    };

    static const char_T *rt_ToWksLabels[] = { "" };

    static RTWLogSignalInfo rt_ToWksSignalInfo = {
      1,
      rt_ToWksWidths,
      rt_ToWksNumDimensions,
      rt_ToWksDimensions,
      rt_ToWksIsVarDims,
      rt_ToWksCurrSigDims,
      rt_ToWksCurrSigDimsSize,
      rt_ToWksDataTypeIds,
      rt_ToWksComplexSignals,
      rt_ToWksFrameData,
      rt_ToWksLoggingPreprocessingFcnPtrs,

      { rt_ToWksLabels },
      (NULL),
      (NULL),
      (NULL),

      { (NULL) },

      { (NULL) },
      (NULL),
      (NULL)
    };

    static const char_T rt_ToWksBlockName[] =
      "parrot_gettingstarted/Flight_Control_System/To Workspace2";
    parrot_gettingstarted_DW.ToWorkspace2_PWORK.LoggedData =
      rt_CreateStructLogVar(
      parrot_gettingstarted_M->rtwLogInfo,
      0.0,
      rtmGetTFinal(parrot_gettingstarted_M),
      parrot_gettingstarted_M->Timing.stepSize0,
      (&rtmGetErrorStatus(parrot_gettingstarted_M)),
      "test_mixer",
      1,
      0,
      1,
      0.005,
      &rt_ToWksSignalInfo,
      rt_ToWksBlockName);
    if (parrot_gettingstarted_DW.ToWorkspace2_PWORK.LoggedData == (NULL))
      return;
  }

  /* SetupRuntimeResources for ToWorkspace: '<S12>/To Workspace' */
  {
    static int_T rt_ToWksWidths[] = { 1 };

    static int_T rt_ToWksNumDimensions[] = { 1 };

    static int_T rt_ToWksDimensions[] = { 1 };

    static boolean_T rt_ToWksIsVarDims[] = { 0 };

    static void *rt_ToWksCurrSigDims[] = { (NULL) };

    static int_T rt_ToWksCurrSigDimsSize[] = { 4 };

    static BuiltInDTypeId rt_ToWksDataTypeIds[] = { SS_DOUBLE };

    static int_T rt_ToWksComplexSignals[] = { 0 };

    static int_T rt_ToWksFrameData[] = { 0 };

    static RTWPreprocessingFcnPtr rt_ToWksLoggingPreprocessingFcnPtrs[] = {
      (NULL)
    };

    static const char_T *rt_ToWksLabels[] = { "Thrust" };

    static RTWLogSignalInfo rt_ToWksSignalInfo = {
      1,
      rt_ToWksWidths,
      rt_ToWksNumDimensions,
      rt_ToWksDimensions,
      rt_ToWksIsVarDims,
      rt_ToWksCurrSigDims,
      rt_ToWksCurrSigDimsSize,
      rt_ToWksDataTypeIds,
      rt_ToWksComplexSignals,
      rt_ToWksFrameData,
      rt_ToWksLoggingPreprocessingFcnPtrs,

      { rt_ToWksLabels },
      (NULL),
      (NULL),
      (NULL),

      { (NULL) },

      { (NULL) },
      (NULL),
      (NULL)
    };

    static const char_T rt_ToWksBlockName[] =
      "parrot_gettingstarted/Flight_Control_System/Thrust Regulator/To Workspace";
    parrot_gettingstarted_DW.ToWorkspace_PWORK_h.LoggedData =
      rt_CreateStructLogVar(
      parrot_gettingstarted_M->rtwLogInfo,
      0.0,
      rtmGetTFinal(parrot_gettingstarted_M),
      parrot_gettingstarted_M->Timing.stepSize0,
      (&rtmGetErrorStatus(parrot_gettingstarted_M)),
      "thrust_out",
      1,
      0,
      1,
      0.005,
      &rt_ToWksSignalInfo,
      rt_ToWksBlockName);
    if (parrot_gettingstarted_DW.ToWorkspace_PWORK_h.LoggedData == (NULL))
      return;
  }

  /* Start for Enabled SubSystem: '<S41>/Enabled Subsystem' */
  parrot_gettingstarted_DW.EnabledSubsystem_MODE_d = false;

  /* End of Start for SubSystem: '<S41>/Enabled Subsystem' */

  /* Start for Enabled SubSystem: '<S96>/Enabled Subsystem' */
  parrot_g_EnabledSubsystem_Start(&parrot_gettingstarted_DW.EnabledSubsystem_o);

  /* End of Start for SubSystem: '<S96>/Enabled Subsystem' */

  /* Start for Enabled SubSystem: '<S151>/Enabled Subsystem' */
  parrot_gettingstarted_DW.EnabledSubsystem_MODE = false;

  /* End of Start for SubSystem: '<S151>/Enabled Subsystem' */

  /* Start for Enabled SubSystem: '<S34>/MeasurementUpdate' */
  parrot_gettingstarted_DW.MeasurementUpdate_MODE_j = false;

  /* End of Start for SubSystem: '<S34>/MeasurementUpdate' */

  /* Start for Enabled SubSystem: '<S89>/MeasurementUpdate' */
  parrot__MeasurementUpdate_Start(&parrot_gettingstarted_DW.MeasurementUpdate_h);

  /* End of Start for SubSystem: '<S89>/MeasurementUpdate' */

  /* Start for Enabled SubSystem: '<S144>/MeasurementUpdate' */
  parrot_gettingstarted_DW.MeasurementUpdate_MODE = false;

  /* End of Start for SubSystem: '<S144>/MeasurementUpdate' */

  /* Start for Enabled SubSystem: '<S207>/Enabled Subsystem' */
  parrot_g_EnabledSubsystem_Start(&parrot_gettingstarted_DW.EnabledSubsystem_d);

  /* End of Start for SubSystem: '<S207>/Enabled Subsystem' */

  /* Start for Enabled SubSystem: '<S200>/MeasurementUpdate' */
  parrot__MeasurementUpdate_Start(&parrot_gettingstarted_DW.MeasurementUpdate_d);

  /* End of Start for SubSystem: '<S200>/MeasurementUpdate' */

  /* Start for Enabled SubSystem: '<S263>/Enabled Subsystem' */
  parrot_g_EnabledSubsystem_Start(&parrot_gettingstarted_DW.EnabledSubsystem_j);

  /* End of Start for SubSystem: '<S263>/Enabled Subsystem' */

  /* Start for Enabled SubSystem: '<S256>/MeasurementUpdate' */
  parrot__MeasurementUpdate_Start(&parrot_gettingstarted_DW.MeasurementUpdate_b);

  /* End of Start for SubSystem: '<S256>/MeasurementUpdate' */

  /* InitializeConditions for Delay: '<S13>/MemoryX' */
  parrot_gettingstarted_DW.icLoad = true;

  /* InitializeConditions for Delay: '<S68>/MemoryX' */
  parrot_gettingstarted_DW.icLoad_g = true;

  /* InitializeConditions for Delay: '<S123>/MemoryX' */
  parrot_gettingstarted_DW.icLoad_o = true;

  /* InitializeConditions for Delay: '<S179>/MemoryX' */
  parrot_gettingstarted_DW.icLoad_n = true;

  /* InitializeConditions for Delay: '<S235>/MemoryX' */
  parrot_gettingstarted_DW.icLoad_k = true;

  /* SystemInitialize for Enabled SubSystem: '<S41>/Enabled Subsystem' */
  /* SystemInitialize for Product: '<S67>/Product2' incorporates:
   *  Outport: '<S67>/deltax'
   */
  parrot_gettingstarted_B.Product2[0] = parrot_gettingstarted_P.deltax_Y0;
  parrot_gettingstarted_B.Product2[1] = parrot_gettingstarted_P.deltax_Y0;

  /* End of SystemInitialize for SubSystem: '<S41>/Enabled Subsystem' */

  /* SystemInitialize for Enabled SubSystem: '<S96>/Enabled Subsystem' */
  parrot_ge_EnabledSubsystem_Init(&parrot_gettingstarted_B.EnabledSubsystem_o,
    &parrot_gettingstarted_P.EnabledSubsystem_o);

  /* End of SystemInitialize for SubSystem: '<S96>/Enabled Subsystem' */

  /* SystemInitialize for Enabled SubSystem: '<S151>/Enabled Subsystem' */
  /* SystemInitialize for Product: '<S177>/Product2' incorporates:
   *  Outport: '<S177>/deltax'
   */
  parrot_gettingstarted_B.Product2_c = parrot_gettingstarted_P.deltax_Y0_k;

  /* End of SystemInitialize for SubSystem: '<S151>/Enabled Subsystem' */

  /* SystemInitialize for Enabled SubSystem: '<S34>/MeasurementUpdate' */
  /* SystemInitialize for Product: '<S65>/Product3' incorporates:
   *  Outport: '<S65>/L*(y[k]-yhat[k|k-1])'
   */
  parrot_gettingstarted_B.Product3[0] = parrot_gettingstarted_P.Lykyhatkk1_Y0;
  parrot_gettingstarted_B.Product3[1] = parrot_gettingstarted_P.Lykyhatkk1_Y0;

  /* End of SystemInitialize for SubSystem: '<S34>/MeasurementUpdate' */

  /* SystemInitialize for Enabled SubSystem: '<S89>/MeasurementUpdate' */
  parrot_g_MeasurementUpdate_Init(&parrot_gettingstarted_B.MeasurementUpdate_h,
    &parrot_gettingstarted_P.MeasurementUpdate_h);

  /* End of SystemInitialize for SubSystem: '<S89>/MeasurementUpdate' */

  /* SystemInitialize for Enabled SubSystem: '<S144>/MeasurementUpdate' */
  /* SystemInitialize for Product: '<S175>/Product3' incorporates:
   *  Outport: '<S175>/L*(y[k]-yhat[k|k-1])'
   */
  parrot_gettingstarted_B.Product3_o = parrot_gettingstarted_P.Lykyhatkk1_Y0_f;

  /* End of SystemInitialize for SubSystem: '<S144>/MeasurementUpdate' */

  /* SystemInitialize for Enabled SubSystem: '<S207>/Enabled Subsystem' */
  parrot_ge_EnabledSubsystem_Init(&parrot_gettingstarted_B.EnabledSubsystem_d,
    &parrot_gettingstarted_P.EnabledSubsystem_d);

  /* End of SystemInitialize for SubSystem: '<S207>/Enabled Subsystem' */

  /* SystemInitialize for Enabled SubSystem: '<S200>/MeasurementUpdate' */
  parrot_g_MeasurementUpdate_Init(&parrot_gettingstarted_B.MeasurementUpdate_d,
    &parrot_gettingstarted_P.MeasurementUpdate_d);

  /* End of SystemInitialize for SubSystem: '<S200>/MeasurementUpdate' */

  /* SystemInitialize for Enabled SubSystem: '<S263>/Enabled Subsystem' */
  parrot_ge_EnabledSubsystem_Init(&parrot_gettingstarted_B.EnabledSubsystem_j,
    &parrot_gettingstarted_P.EnabledSubsystem_j);

  /* End of SystemInitialize for SubSystem: '<S263>/Enabled Subsystem' */

  /* SystemInitialize for Enabled SubSystem: '<S256>/MeasurementUpdate' */
  parrot_g_MeasurementUpdate_Init(&parrot_gettingstarted_B.MeasurementUpdate_b,
    &parrot_gettingstarted_P.MeasurementUpdate_b);

  /* End of SystemInitialize for SubSystem: '<S256>/MeasurementUpdate' */
}

/* Model terminate function */
void parrot_gettingstarted_terminate(void)
{
  /* (no terminate code required) */
}
