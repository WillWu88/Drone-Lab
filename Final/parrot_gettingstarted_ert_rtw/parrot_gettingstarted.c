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
 * C source code generated on : Tue May  3 11:11:51 2022
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
 * Start for enable system:
 *    '<S200>/MeasurementUpdate'
 *    '<S256>/MeasurementUpdate'
 */
void parrot__MeasurementUpdate_Start(DW_MeasurementUpdate_parrot_g_T *localDW)
{
  localDW->MeasurementUpdate_MODE = false;
}

/*
 * Start for enable system:
 *    '<S207>/Enabled Subsystem'
 *    '<S263>/Enabled Subsystem'
 */
void parrot_g_EnabledSubsystem_Start(DW_EnabledSubsystem_parrot_ge_T *localDW)
{
  localDW->EnabledSubsystem_MODE = false;
}

/* Model step function */
void parrot_gettingstarted_step(void)
{
  real_T rtb_Sum5;
  real_T rtb_Sum_a;
  real_T tmp;
  int32_T aoffset;
  int32_T coffset;
  int32_T i;
  int32_T j;
  real32_T Product3_o_tmp;
  real32_T rtb_CastToSingle_e;
  real32_T rtb_Linearizedtheta_dot;
  real32_T rtb_theta_measure;

  /* SignalConversion generated from: '<S1>/M* Wrench' incorporates:
   *  Constant: '<S1>/Constant8'
   */
  rtb_Sum_a = parrot_gettingstarted_P.m * parrot_gettingstarted_P.g;

  /* DataTypeConversion: '<S1>/Cast To Single' incorporates:
   *  Constant: '<S1>/Constant3'
   *  Constant: '<S1>/Constant4'
   *  Constant: '<S1>/Constant5'
   *  Constant: '<S1>/Constant6'
   *  Sum: '<S1>/Sum'
   */
  parrot_gettingstarted_B.dv[0] = (real32_T)
    parrot_gettingstarted_P.Constant3_Value;
  parrot_gettingstarted_B.dv[1] = (real32_T)
    parrot_gettingstarted_P.Constant4_Value;
  parrot_gettingstarted_B.dv[2] = (real32_T)
    parrot_gettingstarted_P.Constant5_Value;
  parrot_gettingstarted_B.dv[3] = (real32_T)
    parrot_gettingstarted_P.Constant6_Value;
  for (i = 0; i < 4; i++) {
    /* DataTypeConversion: '<S1>/Cast To Single1' incorporates:
     *  Constant: '<S1>/Constant'
     *  Constant: '<S1>/Constant7'
     *  Product: '<S1>/M* Wrench'
     *  Sum: '<S1>/Sum'
     */
    motors_outport[i] = (real32_T)((((parrot_gettingstarted_P.Mixer[i + 4] *
      parrot_gettingstarted_P.Constant7_Value + parrot_gettingstarted_P.Mixer[i]
      * rtb_Sum_a) + parrot_gettingstarted_P.Mixer[i + 8] *
      parrot_gettingstarted_P.Constant7_Value) + parrot_gettingstarted_P.Mixer[i
      + 12] * parrot_gettingstarted_P.Constant7_Value) +
      parrot_gettingstarted_B.dv[i]);

    /* Outport: '<Root>/Motors' incorporates:
     *  DataTypeConversion: '<S1>/Cast To Single1'
     */
    parrot_gettingstarted_Y.Motors[i] = motors_outport[i];
  }

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
    rtb_Sum_a = sensor_inport.HALSensors.HAL_ultrasound_SI.altitude -
      (parrot_gettingstarted_P.C_Value[0] *
       parrot_gettingstarted_DW.MemoryX_DSTATE[0] +
       parrot_gettingstarted_P.C_Value[1] *
       parrot_gettingstarted_DW.MemoryX_DSTATE[1]);

    /* Product: '<S67>/Product2' incorporates:
     *  Constant: '<S14>/KalmanGainM'
     *  DataTypeConversion: '<S58>/Conversion'
     */
    parrot_gettingstarted_B.Product2_e[0] =
      parrot_gettingstarted_P.KalmanGainM_Value_d[0] * rtb_Sum_a;
    parrot_gettingstarted_B.Product2_e[1] =
      parrot_gettingstarted_P.KalmanGainM_Value_d[1] * rtb_Sum_a;
  } else if (parrot_gettingstarted_DW.EnabledSubsystem_MODE_d) {
    /* Disable for Product: '<S67>/Product2' incorporates:
     *  Outport: '<S67>/deltax'
     */
    parrot_gettingstarted_B.Product2_e[0] = parrot_gettingstarted_P.deltax_Y0;
    parrot_gettingstarted_B.Product2_e[1] = parrot_gettingstarted_P.deltax_Y0;
    parrot_gettingstarted_DW.EnabledSubsystem_MODE_d = false;
  }

  /* End of Outputs for SubSystem: '<S41>/Enabled Subsystem' */

  /* Sum: '<S4>/Sum5' incorporates:
   *  Constant: '<S4>/Constant6'
   *  DataTypeConversion: '<S4>/Data Type Conversion'
   *  Inport: '<Root>/Sensors'
   */
  rtb_Sum5 = sensor_inport.HALSensors.HAL_acc_SI.z -
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
    rtb_Sum_a = sensor_inport.HALSensors.HAL_ultrasound_SI.altitude -
      ((parrot_gettingstarted_P.C_Value[0] *
        parrot_gettingstarted_DW.MemoryX_DSTATE[0] +
        parrot_gettingstarted_P.C_Value[1] *
        parrot_gettingstarted_DW.MemoryX_DSTATE[1]) +
       parrot_gettingstarted_P.D_Value * rtb_Sum5);

    /* Product: '<S65>/Product3' incorporates:
     *  Constant: '<S14>/KalmanGainL'
     */
    parrot_gettingstarted_B.Product3_c[0] =
      parrot_gettingstarted_P.KalmanGainL_Value[0] * rtb_Sum_a;
    parrot_gettingstarted_B.Product3_c[1] =
      parrot_gettingstarted_P.KalmanGainL_Value[1] * rtb_Sum_a;
  } else if (parrot_gettingstarted_DW.MeasurementUpdate_MODE_j) {
    /* Disable for Product: '<S65>/Product3' incorporates:
     *  Outport: '<S65>/L*(y[k]-yhat[k|k-1])'
     */
    parrot_gettingstarted_B.Product3_c[0] =
      parrot_gettingstarted_P.Lykyhatkk1_Y0;
    parrot_gettingstarted_B.Product3_c[1] =
      parrot_gettingstarted_P.Lykyhatkk1_Y0;
    parrot_gettingstarted_DW.MeasurementUpdate_MODE_j = false;
  }

  /* End of Outputs for SubSystem: '<S34>/MeasurementUpdate' */

  /* Trigonometry: '<S5>/Atan' incorporates:
   *  DataTypeConversion: '<S5>/Cast To Double1'
   *  DataTypeConversion: '<S5>/Cast To Double2'
   *  Inport: '<Root>/Sensors'
   *  Product: '<S5>/Divide'
   */
  rtb_Sum_a = atan((real_T)sensor_inport.HALSensors.HAL_acc_SI.y /
                   sensor_inport.HALSensors.HAL_acc_SI.z);

  /* Delay: '<S68>/MemoryX' incorporates:
   *  Constant: '<S68>/X0'
   */
  if (parrot_gettingstarted_DW.icLoad_g) {
    parrot_gettingstarted_DW.MemoryX_DSTATE_n =
      parrot_gettingstarted_P.X0_Value_l;
  }

  /* Outputs for Enabled SubSystem: '<S96>/Enabled Subsystem' incorporates:
   *  EnablePort: '<S122>/Enable'
   */
  /* Constant: '<S68>/Enable' */
  if (parrot_gettingstarted_P.Enable_Value_k) {
    parrot_gettingstarted_DW.EnabledSubsystem_MODE_l = true;

    /* Product: '<S122>/Product2' incorporates:
     *  Constant: '<S68>/C'
     *  Constant: '<S69>/KalmanGainM'
     *  Delay: '<S68>/MemoryX'
     *  Product: '<S122>/Product'
     *  Sum: '<S122>/Add1'
     */
    parrot_gettingstarted_B.Product2 = (rtb_Sum_a -
      parrot_gettingstarted_P.C_Value_m *
      parrot_gettingstarted_DW.MemoryX_DSTATE_n) *
      parrot_gettingstarted_P.KalmanGainM_Value;
  } else if (parrot_gettingstarted_DW.EnabledSubsystem_MODE_l) {
    /* Disable for Product: '<S122>/Product2' incorporates:
     *  Outport: '<S122>/deltax'
     */
    parrot_gettingstarted_B.Product2 = parrot_gettingstarted_P.deltax_Y0_k;
    parrot_gettingstarted_DW.EnabledSubsystem_MODE_l = false;
  }

  /* End of Outputs for SubSystem: '<S96>/Enabled Subsystem' */

  /* DataTypeConversion: '<S5>/Cast To Single' incorporates:
   *  Delay: '<S68>/MemoryX'
   *  Sum: '<S96>/Add'
   */
  rtb_CastToSingle_e = (real32_T)(parrot_gettingstarted_B.Product2 +
    parrot_gettingstarted_DW.MemoryX_DSTATE_n);

  /* Outputs for Enabled SubSystem: '<S89>/MeasurementUpdate' incorporates:
   *  EnablePort: '<S120>/Enable'
   */
  /* Constant: '<S68>/Enable' */
  if (parrot_gettingstarted_P.Enable_Value_k) {
    parrot_gettingstarted_DW.MeasurementUpdate_MODE_e = true;

    /* Product: '<S120>/Product3' incorporates:
     *  Constant: '<S68>/C'
     *  Constant: '<S68>/D'
     *  Constant: '<S69>/KalmanGainL'
     *  DataTypeConversion: '<S5>/Cast To Double'
     *  Delay: '<S68>/MemoryX'
     *  Inport: '<Root>/Sensors'
     *  Product: '<S120>/C[k]*xhat[k|k-1]'
     *  Product: '<S120>/D[k]*u[k]'
     *  Sum: '<S120>/Add1'
     *  Sum: '<S120>/Sum'
     */
    parrot_gettingstarted_B.Product3 = (rtb_Sum_a -
      (parrot_gettingstarted_P.C_Value_m *
       parrot_gettingstarted_DW.MemoryX_DSTATE_n +
       parrot_gettingstarted_P.D_Value_e *
       sensor_inport.HALSensors.HAL_gyro_SI.x)) *
      parrot_gettingstarted_P.KalmanGainL_Value_l;
  } else if (parrot_gettingstarted_DW.MeasurementUpdate_MODE_e) {
    /* Disable for Product: '<S120>/Product3' incorporates:
     *  Outport: '<S120>/L*(y[k]-yhat[k|k-1])'
     */
    parrot_gettingstarted_B.Product3 = parrot_gettingstarted_P.Lykyhatkk1_Y0_e;
    parrot_gettingstarted_DW.MeasurementUpdate_MODE_e = false;
  }

  /* End of Outputs for SubSystem: '<S89>/MeasurementUpdate' */

  /* Update for Delay: '<S68>/MemoryX' incorporates:
   *  Constant: '<S68>/A'
   *  Constant: '<S68>/B'
   *  DataTypeConversion: '<S5>/Cast To Double'
   *  Inport: '<Root>/Sensors'
   *  Product: '<S89>/A[k]*xhat[k|k-1]'
   *  Product: '<S89>/B[k]*u[k]'
   *  Sum: '<S89>/Add'
   */
  parrot_gettingstarted_DW.MemoryX_DSTATE_n = (parrot_gettingstarted_P.B_Value_i
    * sensor_inport.HALSensors.HAL_gyro_SI.x + parrot_gettingstarted_P.A_Value_c
    * parrot_gettingstarted_DW.MemoryX_DSTATE_n) +
    parrot_gettingstarted_B.Product3;

  /* Trigonometry: '<S6>/Atan1' incorporates:
   *  Gain: '<S6>/Gain1'
   *  Inport: '<Root>/Sensors'
   *  Math: '<S6>/Square'
   *  Math: '<S6>/Square1'
   *  Product: '<S6>/Divide1'
   *  Sqrt: '<S6>/Sqrt'
   *  Sum: '<S6>/Sum'
   */
  rtb_theta_measure = (real32_T)atan(parrot_gettingstarted_P.Gain1_Gain *
    sensor_inport.HALSensors.HAL_acc_SI.x / (real32_T)sqrt
    (sensor_inport.HALSensors.HAL_acc_SI.y *
     sensor_inport.HALSensors.HAL_acc_SI.y +
     sensor_inport.HALSensors.HAL_acc_SI.z *
     sensor_inport.HALSensors.HAL_acc_SI.z));

  /* Gain: '<S6>/Gain' incorporates:
   *  Inport: '<Root>/Sensors'
   */
  rtb_Linearizedtheta_dot = parrot_gettingstarted_P.Gain_Gain *
    sensor_inport.HALSensors.HAL_gyro_SI.y;

  /* Delay: '<S123>/MemoryX' incorporates:
   *  Constant: '<S123>/X0'
   */
  /* MATLAB Function 'Kalman Filter/CovarianceOutputConfigurator/decideOutput/SqrtUsedFcn': '<S174>:1' */
  if (parrot_gettingstarted_DW.icLoad_o) {
    parrot_gettingstarted_DW.MemoryX_DSTATE_c =
      parrot_gettingstarted_P.X0_Value_i;
  }

  /* Outputs for Enabled SubSystem: '<S151>/Enabled Subsystem' incorporates:
   *  EnablePort: '<S177>/Enable'
   */
  /* Outputs for Enabled SubSystem: '<S144>/MeasurementUpdate' incorporates:
   *  EnablePort: '<S175>/Enable'
   */
  /* Constant: '<S123>/Enable' */
  if (parrot_gettingstarted_P.Enable_Value_j) {
    parrot_gettingstarted_DW.MeasurementUpdate_MODE = true;

    /* Product: '<S175>/C[k]*xhat[k|k-1]' incorporates:
     *  Constant: '<S123>/C'
     *  Delay: '<S123>/MemoryX'
     *  Product: '<S177>/Product'
     */
    Product3_o_tmp = parrot_gettingstarted_P.C_Value_c *
      parrot_gettingstarted_DW.MemoryX_DSTATE_c;

    /* Product: '<S175>/Product3' incorporates:
     *  Constant: '<S123>/D'
     *  Constant: '<S124>/KalmanGainL'
     *  DataTypeConversion: '<S167>/Conversion'
     *  Product: '<S175>/C[k]*xhat[k|k-1]'
     *  Product: '<S175>/D[k]*u[k]'
     *  Sum: '<S175>/Add1'
     *  Sum: '<S175>/Sum'
     */
    parrot_gettingstarted_B.Product3_o = (rtb_theta_measure -
      (parrot_gettingstarted_P.D_Value_o * rtb_Linearizedtheta_dot +
       Product3_o_tmp)) * (real32_T)parrot_gettingstarted_P.KalmanGainL_Value_a;
    parrot_gettingstarted_DW.EnabledSubsystem_MODE = true;

    /* Product: '<S177>/Product2' incorporates:
     *  Constant: '<S124>/KalmanGainM'
     *  DataTypeConversion: '<S168>/Conversion'
     *  Sum: '<S177>/Add1'
     */
    parrot_gettingstarted_B.Product2_c = (rtb_theta_measure - Product3_o_tmp) *
      (real32_T)parrot_gettingstarted_P.KalmanGainM_Value_h;
  } else {
    if (parrot_gettingstarted_DW.MeasurementUpdate_MODE) {
      /* Disable for Product: '<S175>/Product3' incorporates:
       *  Outport: '<S175>/L*(y[k]-yhat[k|k-1])'
       */
      parrot_gettingstarted_B.Product3_o =
        parrot_gettingstarted_P.Lykyhatkk1_Y0_f;
      parrot_gettingstarted_DW.MeasurementUpdate_MODE = false;
    }

    if (parrot_gettingstarted_DW.EnabledSubsystem_MODE) {
      /* Disable for Product: '<S177>/Product2' incorporates:
       *  Outport: '<S177>/deltax'
       */
      parrot_gettingstarted_B.Product2_c = parrot_gettingstarted_P.deltax_Y0_ks;
      parrot_gettingstarted_DW.EnabledSubsystem_MODE = false;
    }
  }

  /* End of Constant: '<S123>/Enable' */
  /* End of Outputs for SubSystem: '<S144>/MeasurementUpdate' */
  /* End of Outputs for SubSystem: '<S151>/Enabled Subsystem' */

  /* Sum: '<S151>/Add' incorporates:
   *  Delay: '<S123>/MemoryX'
   */
  rtb_theta_measure = parrot_gettingstarted_B.Product2_c +
    parrot_gettingstarted_DW.MemoryX_DSTATE_c;

  /* MATLAB Function: '<S1>/PD rotate' */
  /* MATLAB Function 'Kalman Filter/CovarianceOutputConfigurator/decideOutput/SqrtUsedFcn': '<S230>:1' */
  /* MATLAB Function 'Flight_Control_System/PD rotate': '<S9>:1' */
  Product3_o_tmp = (real32_T)sin(rtb_CastToSingle_e);
  rtb_CastToSingle_e = (real32_T)cos(rtb_CastToSingle_e);
  parrot_gettingstarted_B.A[1] = 0.0F;
  parrot_gettingstarted_B.A[4] = rtb_CastToSingle_e;
  parrot_gettingstarted_B.A[7] = Product3_o_tmp;
  parrot_gettingstarted_B.A[2] = 0.0F;
  parrot_gettingstarted_B.A[5] = -Product3_o_tmp;
  parrot_gettingstarted_B.A[8] = rtb_CastToSingle_e;
  rtb_CastToSingle_e = (real32_T)sin(rtb_theta_measure);
  rtb_theta_measure = (real32_T)cos(rtb_theta_measure);
  parrot_gettingstarted_B.B[0] = rtb_theta_measure;
  parrot_gettingstarted_B.B[3] = 0.0F;
  parrot_gettingstarted_B.B[6] = -rtb_CastToSingle_e;
  parrot_gettingstarted_B.A[0] = 1.0F;
  parrot_gettingstarted_B.B[1] = 0.0F;
  parrot_gettingstarted_B.A[3] = 0.0F;
  parrot_gettingstarted_B.B[4] = 1.0F;
  parrot_gettingstarted_B.A[6] = 0.0F;
  parrot_gettingstarted_B.B[7] = 0.0F;
  parrot_gettingstarted_B.B[2] = rtb_CastToSingle_e;
  parrot_gettingstarted_B.B[5] = 0.0F;
  parrot_gettingstarted_B.B[8] = rtb_theta_measure;

  /* '<S9>:1:5' */
  for (j = 0; j < 3; j++) {
    coffset = j * 3;
    for (i = 0; i < 3; i++) {
      aoffset = i * 3;
      parrot_gettingstarted_B.y[coffset + i] =
        (parrot_gettingstarted_B.A[aoffset + 1] * parrot_gettingstarted_B.B[j +
         3] + parrot_gettingstarted_B.A[aoffset] * parrot_gettingstarted_B.B[j])
        + parrot_gettingstarted_B.A[aoffset + 2] * parrot_gettingstarted_B.B[j +
        6];
    }
  }

  /* Gain: '<S12>/K_PD' incorporates:
   *  Constant: '<S12>/Constant10'
   *  Constant: '<S1>/Altitude'
   *  DataTypeConversion: '<S4>/Cast To Single'
   *  Delay: '<S13>/MemoryX'
   *  MATLAB Function: '<S1>/PD rotate'
   *  Sum: '<S12>/Subtract'
   *  Sum: '<S12>/Subtract4'
   *  Sum: '<S41>/Add'
   */
  /* '<S9>:1:6' */
  rtb_Sum_a = (parrot_gettingstarted_P.Altitude_Value - (real32_T)
               (parrot_gettingstarted_B.Product2_e[0] +
                parrot_gettingstarted_DW.MemoryX_DSTATE[0]) *
               parrot_gettingstarted_B.y[2]) * parrot_gettingstarted_P.K_PD[0] +
    (parrot_gettingstarted_P.Constant10_Value - (real32_T)
     (parrot_gettingstarted_B.Product2_e[1] +
      parrot_gettingstarted_DW.MemoryX_DSTATE[1])) *
    parrot_gettingstarted_P.K_PD[1];

  /* ToWorkspace: '<S12>/To Workspace' */
  {
    double locTime = parrot_gettingstarted_M->Timing.taskTime0
      ;
    rt_UpdateStructLogVar((StructLogVar *)
                          parrot_gettingstarted_DW.ToWorkspace_PWORK.LoggedData,
                          &locTime, &rtb_Sum_a);
  }

  /* Update for Delay: '<S13>/MemoryX' */
  parrot_gettingstarted_DW.icLoad = false;

  /* Product: '<S34>/A[k]*xhat[k|k-1]' incorporates:
   *  Constant: '<S13>/A'
   *  Delay: '<S13>/MemoryX'
   */
  rtb_Sum_a = parrot_gettingstarted_P.A_Value[0] *
    parrot_gettingstarted_DW.MemoryX_DSTATE[0] +
    parrot_gettingstarted_DW.MemoryX_DSTATE[1] *
    parrot_gettingstarted_P.A_Value[2];
  tmp = parrot_gettingstarted_DW.MemoryX_DSTATE[0] *
    parrot_gettingstarted_P.A_Value[1] +
    parrot_gettingstarted_DW.MemoryX_DSTATE[1] *
    parrot_gettingstarted_P.A_Value[3];

  /* Update for Delay: '<S13>/MemoryX' incorporates:
   *  Constant: '<S13>/B'
   *  Product: '<S34>/B[k]*u[k]'
   *  Product: '<S65>/Product3'
   *  Sum: '<S34>/Add'
   */
  parrot_gettingstarted_DW.MemoryX_DSTATE[0] = (parrot_gettingstarted_P.B_Value
    [0] * rtb_Sum5 + rtb_Sum_a) + parrot_gettingstarted_B.Product3_c[0];
  parrot_gettingstarted_DW.MemoryX_DSTATE[1] = (parrot_gettingstarted_P.B_Value
    [1] * rtb_Sum5 + tmp) + parrot_gettingstarted_B.Product3_c[1];

  /* Update for Delay: '<S68>/MemoryX' */
  parrot_gettingstarted_DW.icLoad_g = false;

  /* Update for Delay: '<S123>/MemoryX' incorporates:
   *  Constant: '<S123>/A'
   *  Constant: '<S123>/B'
   *  Product: '<S144>/A[k]*xhat[k|k-1]'
   *  Product: '<S144>/B[k]*u[k]'
   *  Sum: '<S144>/Add'
   */
  parrot_gettingstarted_DW.icLoad_o = false;
  parrot_gettingstarted_DW.MemoryX_DSTATE_c = (parrot_gettingstarted_P.B_Value_n
    * rtb_Linearizedtheta_dot + parrot_gettingstarted_P.A_Value_k *
    parrot_gettingstarted_DW.MemoryX_DSTATE_c) +
    parrot_gettingstarted_B.Product3_o;

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
    parrot_gettingstarted_DW.ToWorkspace_PWORK.LoggedData =
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
    if (parrot_gettingstarted_DW.ToWorkspace_PWORK.LoggedData == (NULL))
      return;
  }

  /* Start for Enabled SubSystem: '<S41>/Enabled Subsystem' */
  parrot_gettingstarted_DW.EnabledSubsystem_MODE_d = false;

  /* End of Start for SubSystem: '<S41>/Enabled Subsystem' */

  /* Start for Enabled SubSystem: '<S34>/MeasurementUpdate' */
  parrot_gettingstarted_DW.MeasurementUpdate_MODE_j = false;

  /* End of Start for SubSystem: '<S34>/MeasurementUpdate' */

  /* Start for Enabled SubSystem: '<S96>/Enabled Subsystem' */
  parrot_gettingstarted_DW.EnabledSubsystem_MODE_l = false;

  /* End of Start for SubSystem: '<S96>/Enabled Subsystem' */

  /* Start for Enabled SubSystem: '<S89>/MeasurementUpdate' */
  parrot_gettingstarted_DW.MeasurementUpdate_MODE_e = false;

  /* End of Start for SubSystem: '<S89>/MeasurementUpdate' */

  /* Start for Enabled SubSystem: '<S144>/MeasurementUpdate' */
  parrot_gettingstarted_DW.MeasurementUpdate_MODE = false;

  /* End of Start for SubSystem: '<S144>/MeasurementUpdate' */

  /* Start for Enabled SubSystem: '<S151>/Enabled Subsystem' */
  parrot_gettingstarted_DW.EnabledSubsystem_MODE = false;

  /* End of Start for SubSystem: '<S151>/Enabled Subsystem' */

  /* Start for Enabled SubSystem: '<S200>/MeasurementUpdate' */
  parrot__MeasurementUpdate_Start(&parrot_gettingstarted_DW.MeasurementUpdate_d);

  /* End of Start for SubSystem: '<S200>/MeasurementUpdate' */

  /* Start for Enabled SubSystem: '<S207>/Enabled Subsystem' */
  parrot_g_EnabledSubsystem_Start(&parrot_gettingstarted_DW.EnabledSubsystem_d);

  /* End of Start for SubSystem: '<S207>/Enabled Subsystem' */

  /* Start for Enabled SubSystem: '<S256>/MeasurementUpdate' */
  parrot__MeasurementUpdate_Start(&parrot_gettingstarted_DW.MeasurementUpdate_b);

  /* End of Start for SubSystem: '<S256>/MeasurementUpdate' */

  /* Start for Enabled SubSystem: '<S263>/Enabled Subsystem' */
  parrot_g_EnabledSubsystem_Start(&parrot_gettingstarted_DW.EnabledSubsystem_j);

  /* End of Start for SubSystem: '<S263>/Enabled Subsystem' */

  /* InitializeConditions for Delay: '<S13>/MemoryX' */
  parrot_gettingstarted_DW.icLoad = true;

  /* InitializeConditions for Delay: '<S68>/MemoryX' */
  parrot_gettingstarted_DW.icLoad_g = true;

  /* InitializeConditions for Delay: '<S123>/MemoryX' */
  parrot_gettingstarted_DW.icLoad_o = true;

  /* SystemInitialize for Enabled SubSystem: '<S41>/Enabled Subsystem' */
  /* SystemInitialize for Product: '<S67>/Product2' incorporates:
   *  Outport: '<S67>/deltax'
   */
  parrot_gettingstarted_B.Product2_e[0] = parrot_gettingstarted_P.deltax_Y0;

  /* End of SystemInitialize for SubSystem: '<S41>/Enabled Subsystem' */

  /* SystemInitialize for Enabled SubSystem: '<S34>/MeasurementUpdate' */
  /* SystemInitialize for Product: '<S65>/Product3' incorporates:
   *  Outport: '<S65>/L*(y[k]-yhat[k|k-1])'
   */
  parrot_gettingstarted_B.Product3_c[0] = parrot_gettingstarted_P.Lykyhatkk1_Y0;

  /* End of SystemInitialize for SubSystem: '<S34>/MeasurementUpdate' */

  /* SystemInitialize for Enabled SubSystem: '<S41>/Enabled Subsystem' */
  /* SystemInitialize for Product: '<S67>/Product2' incorporates:
   *  Outport: '<S67>/deltax'
   */
  parrot_gettingstarted_B.Product2_e[1] = parrot_gettingstarted_P.deltax_Y0;

  /* End of SystemInitialize for SubSystem: '<S41>/Enabled Subsystem' */

  /* SystemInitialize for Enabled SubSystem: '<S34>/MeasurementUpdate' */
  /* SystemInitialize for Product: '<S65>/Product3' incorporates:
   *  Outport: '<S65>/L*(y[k]-yhat[k|k-1])'
   */
  parrot_gettingstarted_B.Product3_c[1] = parrot_gettingstarted_P.Lykyhatkk1_Y0;

  /* End of SystemInitialize for SubSystem: '<S34>/MeasurementUpdate' */

  /* SystemInitialize for Enabled SubSystem: '<S96>/Enabled Subsystem' */
  /* SystemInitialize for Product: '<S122>/Product2' incorporates:
   *  Outport: '<S122>/deltax'
   */
  parrot_gettingstarted_B.Product2 = parrot_gettingstarted_P.deltax_Y0_k;

  /* End of SystemInitialize for SubSystem: '<S96>/Enabled Subsystem' */

  /* SystemInitialize for Enabled SubSystem: '<S89>/MeasurementUpdate' */
  /* SystemInitialize for Product: '<S120>/Product3' incorporates:
   *  Outport: '<S120>/L*(y[k]-yhat[k|k-1])'
   */
  parrot_gettingstarted_B.Product3 = parrot_gettingstarted_P.Lykyhatkk1_Y0_e;

  /* End of SystemInitialize for SubSystem: '<S89>/MeasurementUpdate' */

  /* SystemInitialize for Enabled SubSystem: '<S144>/MeasurementUpdate' */
  /* SystemInitialize for Product: '<S175>/Product3' incorporates:
   *  Outport: '<S175>/L*(y[k]-yhat[k|k-1])'
   */
  parrot_gettingstarted_B.Product3_o = parrot_gettingstarted_P.Lykyhatkk1_Y0_f;

  /* End of SystemInitialize for SubSystem: '<S144>/MeasurementUpdate' */

  /* SystemInitialize for Enabled SubSystem: '<S151>/Enabled Subsystem' */
  /* SystemInitialize for Product: '<S177>/Product2' incorporates:
   *  Outport: '<S177>/deltax'
   */
  parrot_gettingstarted_B.Product2_c = parrot_gettingstarted_P.deltax_Y0_ks;

  /* End of SystemInitialize for SubSystem: '<S151>/Enabled Subsystem' */
}

/* Model terminate function */
void parrot_gettingstarted_terminate(void)
{
  /* (no terminate code required) */
}
