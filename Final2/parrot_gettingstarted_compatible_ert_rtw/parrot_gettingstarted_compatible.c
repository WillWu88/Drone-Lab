/*
 * parrot_gettingstarted_compatible.c
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
#include "rtwtypes.h"
#include "parrot_gettingstarted_compatible_private.h"
#include <math.h>
#include "parrot_gettingstarted_compatible_types.h"
#include <string.h>
#include "rt_nonfinite.h"

/* Exported block signals */
CommandBus cmd_inport;                 /* '<Root>/AC cmd' */
SensorsBus sensor_inport;              /* '<Root>/Sensors' */
real32_T motors_outport[4];            /* '<S1>/Cast To Single1' */
uint8_T flag_outport;                  /* '<S1>/Manual Switch' */

/* Block signals (default storage) */
B_parrot_gettingstarted_compa_T parrot_gettingstarted_compati_B;

/* Block states (default storage) */
DW_parrot_gettingstarted_comp_T parrot_gettingstarted_compat_DW;

/* External outputs (root outports fed by signals with default storage) */
ExtY_parrot_gettingstarted_co_T parrot_gettingstarted_compati_Y;

/* Real-time model */
static RT_MODEL_parrot_gettingstarte_T parrot_gettingstarted_compat_M_;
RT_MODEL_parrot_gettingstarte_T *const parrot_gettingstarted_compat_M =
  &parrot_gettingstarted_compat_M_;

/*
 * System initialize for enable system:
 *    '<S43>/Enabled Subsystem'
 *    '<S98>/Enabled Subsystem'
 *    '<S153>/Enabled Subsystem'
 */
void parrot_ge_EnabledSubsystem_Init(B_EnabledSubsystem_parrot_get_T *localB,
  P_EnabledSubsystem_parrot_get_T *localP)
{
  /* SystemInitialize for Product: '<S69>/Product2' incorporates:
   *  Outport: '<S69>/deltax'
   */
  localB->Product2[0] = localP->deltax_Y0;
  localB->Product2[1] = localP->deltax_Y0;
}

/*
 * Disable for enable system:
 *    '<S43>/Enabled Subsystem'
 *    '<S98>/Enabled Subsystem'
 *    '<S153>/Enabled Subsystem'
 */
void parrot_EnabledSubsystem_Disable(B_EnabledSubsystem_parrot_get_T *localB,
  DW_EnabledSubsystem_parrot_ge_T *localDW, P_EnabledSubsystem_parrot_get_T
  *localP)
{
  /* Disable for Product: '<S69>/Product2' incorporates:
   *  Outport: '<S69>/deltax'
   */
  localB->Product2[0] = localP->deltax_Y0;
  localB->Product2[1] = localP->deltax_Y0;
  localDW->EnabledSubsystem_MODE = false;
}

/*
 * Start for enable system:
 *    '<S43>/Enabled Subsystem'
 *    '<S98>/Enabled Subsystem'
 *    '<S153>/Enabled Subsystem'
 */
void parrot_g_EnabledSubsystem_Start(DW_EnabledSubsystem_parrot_ge_T *localDW)
{
  localDW->EnabledSubsystem_MODE = false;
}

/*
 * Output and update for enable system:
 *    '<S43>/Enabled Subsystem'
 *    '<S98>/Enabled Subsystem'
 *    '<S153>/Enabled Subsystem'
 */
void parrot_getting_EnabledSubsystem(boolean_T rtu_Enable, const real_T rtu_Mk[2],
  const real_T rtu_Ck[2], real_T rtu_yk, const real_T rtu_xhatkk1[2],
  B_EnabledSubsystem_parrot_get_T *localB, DW_EnabledSubsystem_parrot_ge_T
  *localDW, P_EnabledSubsystem_parrot_get_T *localP)
{
  real_T rtb_Add1;

  /* Outputs for Enabled SubSystem: '<S43>/Enabled Subsystem' incorporates:
   *  EnablePort: '<S69>/Enable'
   */
  if (rtu_Enable) {
    localDW->EnabledSubsystem_MODE = true;

    /* Sum: '<S69>/Add1' incorporates:
     *  Product: '<S69>/Product'
     */
    rtb_Add1 = rtu_yk - (rtu_Ck[0] * rtu_xhatkk1[0] + rtu_Ck[1] * rtu_xhatkk1[1]);

    /* Product: '<S69>/Product2' */
    localB->Product2[0] = rtu_Mk[0] * rtb_Add1;
    localB->Product2[1] = rtu_Mk[1] * rtb_Add1;
  } else if (localDW->EnabledSubsystem_MODE) {
    parrot_EnabledSubsystem_Disable(localB, localDW, localP);
  }

  /* End of Outputs for SubSystem: '<S43>/Enabled Subsystem' */
}

/*
 * System initialize for enable system:
 *    '<S91>/MeasurementUpdate'
 *    '<S146>/MeasurementUpdate'
 */
void parrot_g_MeasurementUpdate_Init(B_MeasurementUpdate_parrot_ge_T *localB,
  P_MeasurementUpdate_parrot_ge_T *localP)
{
  /* SystemInitialize for Product: '<S122>/Product3' incorporates:
   *  Outport: '<S122>/L*(y[k]-yhat[k|k-1])'
   */
  localB->Product3[0] = localP->Lykyhatkk1_Y0;
  localB->Product3[1] = localP->Lykyhatkk1_Y0;
}

/*
 * Disable for enable system:
 *    '<S91>/MeasurementUpdate'
 *    '<S146>/MeasurementUpdate'
 */
void parro_MeasurementUpdate_Disable(B_MeasurementUpdate_parrot_ge_T *localB,
  DW_MeasurementUpdate_parrot_g_T *localDW, P_MeasurementUpdate_parrot_ge_T
  *localP)
{
  /* Disable for Product: '<S122>/Product3' incorporates:
   *  Outport: '<S122>/L*(y[k]-yhat[k|k-1])'
   */
  localB->Product3[0] = localP->Lykyhatkk1_Y0;
  localB->Product3[1] = localP->Lykyhatkk1_Y0;
  localDW->MeasurementUpdate_MODE = false;
}

/*
 * Start for enable system:
 *    '<S91>/MeasurementUpdate'
 *    '<S146>/MeasurementUpdate'
 */
void parrot__MeasurementUpdate_Start(DW_MeasurementUpdate_parrot_g_T *localDW)
{
  localDW->MeasurementUpdate_MODE = false;
}

/*
 * Output and update for enable system:
 *    '<S91>/MeasurementUpdate'
 *    '<S146>/MeasurementUpdate'
 */
void parrot_gettin_MeasurementUpdate(boolean_T rtu_Enable, const real_T rtu_Lk[2],
  real_T rtu_yk, const real_T rtu_Ck[2], const real_T rtu_xhatkk1[2], const
  real_T rtu_Dk[2], const real_T rtu_uk[2], B_MeasurementUpdate_parrot_ge_T
  *localB, DW_MeasurementUpdate_parrot_g_T *localDW,
  P_MeasurementUpdate_parrot_ge_T *localP)
{
  real_T rtb_Sum_k;

  /* Outputs for Enabled SubSystem: '<S91>/MeasurementUpdate' incorporates:
   *  EnablePort: '<S122>/Enable'
   */
  if (rtu_Enable) {
    localDW->MeasurementUpdate_MODE = true;

    /* Sum: '<S122>/Sum' incorporates:
     *  Product: '<S122>/C[k]*xhat[k|k-1]'
     *  Product: '<S122>/D[k]*u[k]'
     *  Sum: '<S122>/Add1'
     */
    rtb_Sum_k = rtu_yk - ((rtu_Ck[0] * rtu_xhatkk1[0] + rtu_Ck[1] * rtu_xhatkk1
      [1]) + (rtu_Dk[0] * rtu_uk[0] + rtu_Dk[1] * rtu_uk[1]));

    /* Product: '<S122>/Product3' */
    localB->Product3[0] = rtu_Lk[0] * rtb_Sum_k;
    localB->Product3[1] = rtu_Lk[1] * rtb_Sum_k;
  } else if (localDW->MeasurementUpdate_MODE) {
    parro_MeasurementUpdate_Disable(localB, localDW, localP);
  }

  /* End of Outputs for SubSystem: '<S91>/MeasurementUpdate' */
}

/*
 * Output and update for atomic system:
 *    '<S12>/MATLAB Function1'
 *    '<S13>/MATLAB Function1'
 */
void parrot_gettings_MATLABFunction1(real32_T rtu_P,
  B_MATLABFunction1_parrot_gett_T *localB)
{
  /* MATLAB Function 'Flight_Control_System/Subsystem3/MATLAB Function1': '<S180>:1' */
  /* '<S180>:1:9' */
  localB->y = (real32_T)log(rtu_P / 101325.0F) * -8440.23926F;

  /* '<S180>:1:10' */
}

/* Model step function */
void parrot_gettingstarted_compatible_step(void)
{
  real_T rtb_Dkuk_0;
  real_T rtb_Sum_1;
  real_T rtb_Thrust_idx_3;
  int32_T aoffset;
  int32_T coffset;
  int32_T i;
  int32_T j;
  real32_T B_tmp;
  real32_T rtb_theta_measure;
  real32_T s;

  /* DataTypeConversion: '<S60>/Conversion' incorporates:
   *  Constant: '<S16>/KalmanGainM'
   */
  parrot_gettingstarted_compati_B.Conversion[0] =
    parrot_gettingstarted_compati_P.KalmanGainM_Value[0];
  parrot_gettingstarted_compati_B.Conversion[1] =
    parrot_gettingstarted_compati_P.KalmanGainM_Value[1];

  /* Delay: '<S15>/MemoryX' incorporates:
   *  Constant: '<S15>/X0'
   */
  if (parrot_gettingstarted_compat_DW.icLoad) {
    parrot_gettingstarted_compat_DW.MemoryX_DSTATE[0] =
      parrot_gettingstarted_compati_P.X0_Value[0];
    parrot_gettingstarted_compat_DW.MemoryX_DSTATE[1] =
      parrot_gettingstarted_compati_P.X0_Value[1];
  }

  /* Outputs for Enabled SubSystem: '<S43>/Enabled Subsystem' */
  /* Constant: '<S15>/Enable' incorporates:
   *  Constant: '<S15>/C'
   *  DataTypeConversion: '<S4>/Data Type Conversion1'
   *  Delay: '<S15>/MemoryX'
   *  Inport: '<Root>/Sensors'
   */
  parrot_getting_EnabledSubsystem(parrot_gettingstarted_compati_P.Enable_Value,
    parrot_gettingstarted_compati_B.Conversion,
    parrot_gettingstarted_compati_P.C_Value, (real_T)
    sensor_inport.HALSensors.HAL_ultrasound_SI.altitude,
    parrot_gettingstarted_compat_DW.MemoryX_DSTATE,
    &parrot_gettingstarted_compati_B.EnabledSubsystem,
    &parrot_gettingstarted_compat_DW.EnabledSubsystem,
    &parrot_gettingstarted_compati_P.EnabledSubsystem);

  /* End of Outputs for SubSystem: '<S43>/Enabled Subsystem' */

  /* Sum: '<S43>/Add' incorporates:
   *  Delay: '<S15>/MemoryX'
   */
  parrot_gettingstarted_compati_B.Conversion[0] =
    parrot_gettingstarted_compati_B.EnabledSubsystem.Product2[0] +
    parrot_gettingstarted_compat_DW.MemoryX_DSTATE[0];
  parrot_gettingstarted_compati_B.Conversion[1] =
    parrot_gettingstarted_compati_B.EnabledSubsystem.Product2[1] +
    parrot_gettingstarted_compat_DW.MemoryX_DSTATE[1];

  /* DataTypeConversion: '<S4>/Cast To Single' */
  parrot_gettingstarted_compati_B.CastToSingle[0] = (real32_T)
    parrot_gettingstarted_compati_B.Conversion[0];
  parrot_gettingstarted_compati_B.CastToSingle[1] = (real32_T)
    parrot_gettingstarted_compati_B.Conversion[1];

  /* DataTypeConversion: '<S5>/Cast To Double2' incorporates:
   *  Inport: '<Root>/Sensors'
   */
  parrot_gettingstarted_compati_B.Thrust = sensor_inport.HALSensors.HAL_acc_SI.z;

  /* Trigonometry: '<S5>/Atan' incorporates:
   *  DataTypeConversion: '<S5>/Cast To Double1'
   *  Inport: '<Root>/Sensors'
   *  Product: '<S5>/Divide'
   */
  parrot_gettingstarted_compati_B.Phi_measure = atan
    (sensor_inport.HALSensors.HAL_acc_SI.y /
     parrot_gettingstarted_compati_B.Thrust);

  /* Trigonometry: '<S6>/Atan1' incorporates:
   *  Gain: '<S6>/Gain1'
   *  Inport: '<Root>/Sensors'
   *  Math: '<S6>/Square'
   *  Math: '<S6>/Square1'
   *  Product: '<S6>/Divide1'
   *  Sqrt: '<S6>/Sqrt'
   *  Sum: '<S6>/Sum'
   */
  rtb_theta_measure = (real32_T)atan(parrot_gettingstarted_compati_P.Gain1_Gain *
    sensor_inport.HALSensors.HAL_acc_SI.x / (real32_T)sqrt
    (sensor_inport.HALSensors.HAL_acc_SI.y *
     sensor_inport.HALSensors.HAL_acc_SI.y +
     sensor_inport.HALSensors.HAL_acc_SI.z *
     sensor_inport.HALSensors.HAL_acc_SI.z));

  /* MATLAB Function: '<S1>/PD rotate' */
  /* MATLAB Function 'Flight_Control_System/PD rotate': '<S7>:1' */
  /* '<S7>:1:2' */
  parrot_gettingstarted_compati_B.vmeasure = sin
    (parrot_gettingstarted_compati_B.Phi_measure);
  parrot_gettingstarted_compati_B.Thrust = cos
    (parrot_gettingstarted_compati_B.Phi_measure);
  parrot_gettingstarted_compati_B.A[1] = 0.0;
  parrot_gettingstarted_compati_B.A[4] = parrot_gettingstarted_compati_B.Thrust;
  parrot_gettingstarted_compati_B.A[7] =
    parrot_gettingstarted_compati_B.vmeasure;
  parrot_gettingstarted_compati_B.A[2] = 0.0;
  parrot_gettingstarted_compati_B.A[5] =
    -parrot_gettingstarted_compati_B.vmeasure;
  parrot_gettingstarted_compati_B.A[8] = parrot_gettingstarted_compati_B.Thrust;
  s = (real32_T)sin(rtb_theta_measure);
  B_tmp = (real32_T)cos(rtb_theta_measure);
  parrot_gettingstarted_compati_B.B[0] = B_tmp;
  parrot_gettingstarted_compati_B.B[3] = 0.0F;
  parrot_gettingstarted_compati_B.B[6] = -s;
  parrot_gettingstarted_compati_B.A[0] = 1.0;
  parrot_gettingstarted_compati_B.B[1] = 0.0F;
  parrot_gettingstarted_compati_B.A[3] = 0.0;
  parrot_gettingstarted_compati_B.B[4] = 1.0F;
  parrot_gettingstarted_compati_B.A[6] = 0.0;
  parrot_gettingstarted_compati_B.B[7] = 0.0F;
  parrot_gettingstarted_compati_B.B[2] = s;
  parrot_gettingstarted_compati_B.B[5] = 0.0F;
  parrot_gettingstarted_compati_B.B[8] = B_tmp;

  /* '<S7>:1:5' */
  for (j = 0; j < 3; j++) {
    coffset = j * 3;
    for (i = 0; i < 3; i++) {
      aoffset = i * 3;
      s = (real32_T)parrot_gettingstarted_compati_B.A[aoffset] *
        parrot_gettingstarted_compati_B.B[j];
      parrot_gettingstarted_compati_B.y[coffset + i] = ((real32_T)
        parrot_gettingstarted_compati_B.A[aoffset + 1] *
        parrot_gettingstarted_compati_B.B[j + 3] + s) + (real32_T)
        parrot_gettingstarted_compati_B.A[aoffset + 2] *
        parrot_gettingstarted_compati_B.B[j + 6];
    }
  }

  /* '<S7>:1:6' */
  s = parrot_gettingstarted_compati_B.CastToSingle[0] *
    parrot_gettingstarted_compati_B.y[2];

  /* End of MATLAB Function: '<S1>/PD rotate' */

  /* SignalConversion generated from: '<S14>/K_PD' incorporates:
   *  Constant: '<S14>/Constant10'
   *  Constant: '<S1>/Altitude'
   *  Sum: '<S14>/Subtract'
   *  Sum: '<S14>/Subtract4'
   */
  parrot_gettingstarted_compati_B.Conversion[1] =
    parrot_gettingstarted_compati_P.Constant10_Value -
    parrot_gettingstarted_compati_B.CastToSingle[1];
  parrot_gettingstarted_compati_B.Conversion[0] =
    parrot_gettingstarted_compati_P.Altitude_Value - s;

  /* Gain: '<S14>/K_PD' */
  parrot_gettingstarted_compati_B.Thrust = parrot_gettingstarted_compati_P.K_PD
    [0] * parrot_gettingstarted_compati_B.Conversion[0];

  /* DataTypeConversion: '<S115>/Conversion' incorporates:
   *  Constant: '<S71>/KalmanGainM'
   */
  parrot_gettingstarted_compati_B.Conversion[0] =
    parrot_gettingstarted_compati_P.KalmanGainM_Value_a[0];

  /* Gain: '<S14>/K_PD' */
  parrot_gettingstarted_compati_B.Thrust +=
    parrot_gettingstarted_compati_P.K_PD[1] *
    parrot_gettingstarted_compati_B.Conversion[1];

  /* DataTypeConversion: '<S115>/Conversion' incorporates:
   *  Constant: '<S71>/KalmanGainM'
   */
  parrot_gettingstarted_compati_B.Conversion[1] =
    parrot_gettingstarted_compati_P.KalmanGainM_Value_a[1];

  /* MATLAB Function: '<S12>/MATLAB Function1' incorporates:
   *  Inport: '<Root>/Sensors'
   */
  parrot_gettings_MATLABFunction1
    (sensor_inport.HALSensors.HAL_pressure_SI.pressure,
     &parrot_gettingstarted_compati_B.sf_MATLABFunction1);

  /* Product: '<S12>/Product1' incorporates:
   *  Constant: '<S12>/Constant10'
   *  Constant: '<S12>/Constant9'
   *  Inport: '<Root>/Sensors'
   *  Sum: '<S12>/Sum2'
   */
  parrot_gettingstarted_compati_B.vmeasure =
    (parrot_gettingstarted_compati_B.sf_MATLABFunction1.y -
     parrot_gettingstarted_compati_P.ground_alt) *
    parrot_gettingstarted_compati_P.ff *
    sensor_inport.VisionSensors.opticalFlow_data[1];

  /* Delay: '<S70>/MemoryX' incorporates:
   *  Constant: '<S70>/X0'
   */
  if (parrot_gettingstarted_compat_DW.icLoad_k) {
    parrot_gettingstarted_compat_DW.MemoryX_DSTATE_p[0] =
      parrot_gettingstarted_compati_P.X0_Value_d[0];
    parrot_gettingstarted_compat_DW.MemoryX_DSTATE_p[1] =
      parrot_gettingstarted_compati_P.X0_Value_d[1];
  }

  /* Outputs for Enabled SubSystem: '<S98>/Enabled Subsystem' */
  /* Constant: '<S70>/Enable' incorporates:
   *  Constant: '<S70>/C'
   *  Delay: '<S70>/MemoryX'
   */
  parrot_getting_EnabledSubsystem(parrot_gettingstarted_compati_P.Enable_Value_l,
    parrot_gettingstarted_compati_B.Conversion,
    parrot_gettingstarted_compati_P.C_Value_k,
    parrot_gettingstarted_compati_B.vmeasure,
    parrot_gettingstarted_compat_DW.MemoryX_DSTATE_p,
    &parrot_gettingstarted_compati_B.EnabledSubsystem_a,
    &parrot_gettingstarted_compat_DW.EnabledSubsystem_a,
    &parrot_gettingstarted_compati_P.EnabledSubsystem_a);

  /* End of Outputs for SubSystem: '<S98>/Enabled Subsystem' */

  /* Sum: '<S98>/Add' incorporates:
   *  Delay: '<S70>/MemoryX'
   */
  parrot_gettingstarted_compati_B.Conversion[0] =
    parrot_gettingstarted_compati_B.EnabledSubsystem_a.Product2[0] +
    parrot_gettingstarted_compat_DW.MemoryX_DSTATE_p[0];
  parrot_gettingstarted_compati_B.Conversion[1] =
    parrot_gettingstarted_compati_B.EnabledSubsystem_a.Product2[1] +
    parrot_gettingstarted_compat_DW.MemoryX_DSTATE_p[1];

  /* Gain: '<S2>/K_v' incorporates:
   *  Constant: '<S1>/v'
   *  Constant: '<S2>/Constant10'
   *  Constant: '<S2>/Constant11'
   *  Inport: '<Root>/Sensors'
   *  Sum: '<S2>/Subtract2'
   *  Sum: '<S2>/Subtract4'
   *  Sum: '<S2>/Subtract5'
   */
  rtb_Dkuk_0 = ((parrot_gettingstarted_compati_P.v_Value -
                 parrot_gettingstarted_compati_B.Conversion[0]) *
                parrot_gettingstarted_compati_P.K_v[0] +
                (parrot_gettingstarted_compati_P.Constant11_Value -
                 parrot_gettingstarted_compati_B.Phi_measure) *
                parrot_gettingstarted_compati_P.K_v[1]) +
    (parrot_gettingstarted_compati_P.Constant10_Value_j -
     sensor_inport.HALSensors.HAL_gyro_SI.x) *
    parrot_gettingstarted_compati_P.K_v[2];

  /* DataTypeConversion: '<S170>/Conversion' incorporates:
   *  Constant: '<S126>/KalmanGainM'
   */
  parrot_gettingstarted_compati_B.Conversion_n[0] =
    parrot_gettingstarted_compati_P.KalmanGainM_Value_o[0];
  parrot_gettingstarted_compati_B.Conversion_n[1] =
    parrot_gettingstarted_compati_P.KalmanGainM_Value_o[1];

  /* MATLAB Function: '<S13>/MATLAB Function1' incorporates:
   *  Inport: '<Root>/Sensors'
   */
  parrot_gettings_MATLABFunction1
    (sensor_inport.HALSensors.HAL_pressure_SI.pressure,
     &parrot_gettingstarted_compati_B.sf_MATLABFunction1_k);

  /* Product: '<S13>/Product1' incorporates:
   *  Constant: '<S13>/Constant10'
   *  Constant: '<S13>/Constant9'
   *  Inport: '<Root>/Sensors'
   *  Sum: '<S13>/Sum2'
   */
  parrot_gettingstarted_compati_B.Phi_measure =
    (parrot_gettingstarted_compati_B.sf_MATLABFunction1_k.y -
     parrot_gettingstarted_compati_P.ground_alt) *
    parrot_gettingstarted_compati_P.ff *
    sensor_inport.VisionSensors.opticalFlow_data[0];

  /* Delay: '<S125>/MemoryX' incorporates:
   *  Constant: '<S125>/X0'
   */
  if (parrot_gettingstarted_compat_DW.icLoad_h) {
    parrot_gettingstarted_compat_DW.MemoryX_DSTATE_d[0] =
      parrot_gettingstarted_compati_P.X0_Value_j[0];
    parrot_gettingstarted_compat_DW.MemoryX_DSTATE_d[1] =
      parrot_gettingstarted_compati_P.X0_Value_j[1];
  }

  /* Outputs for Enabled SubSystem: '<S153>/Enabled Subsystem' */
  /* Constant: '<S125>/Enable' incorporates:
   *  Constant: '<S125>/C'
   *  Delay: '<S125>/MemoryX'
   */
  parrot_getting_EnabledSubsystem(parrot_gettingstarted_compati_P.Enable_Value_k,
    parrot_gettingstarted_compati_B.Conversion_n,
    parrot_gettingstarted_compati_P.C_Value_n,
    parrot_gettingstarted_compati_B.Phi_measure,
    parrot_gettingstarted_compat_DW.MemoryX_DSTATE_d,
    &parrot_gettingstarted_compati_B.EnabledSubsystem_m,
    &parrot_gettingstarted_compat_DW.EnabledSubsystem_m,
    &parrot_gettingstarted_compati_P.EnabledSubsystem_m);

  /* End of Outputs for SubSystem: '<S153>/Enabled Subsystem' */

  /* DataTypeConversion: '<S11>/Cast To Single' incorporates:
   *  Delay: '<S125>/MemoryX'
   *  Sum: '<S153>/Add'
   */
  parrot_gettingstarted_compati_B.CastToSingle_i[0] = (real32_T)
    (parrot_gettingstarted_compati_B.EnabledSubsystem_m.Product2[0] +
     parrot_gettingstarted_compat_DW.MemoryX_DSTATE_d[0]);
  parrot_gettingstarted_compati_B.CastToSingle_i[1] = (real32_T)
    (parrot_gettingstarted_compati_B.EnabledSubsystem_m.Product2[1] +
     parrot_gettingstarted_compat_DW.MemoryX_DSTATE_d[1]);

  /* Gain: '<S3>/K_u' incorporates:
   *  Constant: '<S1>/u'
   *  Constant: '<S3>/Constant10'
   *  Constant: '<S3>/Constant11'
   *  Inport: '<Root>/Sensors'
   *  Sum: '<S3>/Subtract1'
   *  Sum: '<S3>/Subtract2'
   *  Sum: '<S3>/Subtract5'
   */
  rtb_Sum_1 = ((parrot_gettingstarted_compati_P.u_Value -
                parrot_gettingstarted_compati_B.CastToSingle_i[0]) *
               parrot_gettingstarted_compati_P.K_u[0] +
               (parrot_gettingstarted_compati_P.Constant11_Value_p -
                rtb_theta_measure) * parrot_gettingstarted_compati_P.K_u[1]) +
    (parrot_gettingstarted_compati_P.Constant10_Value_c -
     sensor_inport.HALSensors.HAL_gyro_SI.y) *
    parrot_gettingstarted_compati_P.K_u[2];

  /* Gain: '<S8>/K_r' incorporates:
   *  Constant: '<S1>/r'
   *  Inport: '<Root>/Sensors'
   *  Sum: '<S8>/Subtract3'
   */
  parrot_gettingstarted_compati_B.Rudder =
    (parrot_gettingstarted_compati_P.r_Value -
     sensor_inport.HALSensors.HAL_gyro_SI.z) *
    parrot_gettingstarted_compati_P.K_psi[0];

  /* SignalConversion generated from: '<S1>/M* Wrench' incorporates:
   *  Constant: '<S1>/Constant9'
   *  Sum: '<S1>/Sum1'
   */
  rtb_Thrust_idx_3 = parrot_gettingstarted_compati_B.Rudder +
    parrot_gettingstarted_compati_P.Constant9_Value;

  /* Product: '<S1>/M* Wrench' incorporates:
   *  Constant: '<S1>/Constant'
   *  Gain: '<S2>/K_v'
   *  Gain: '<S3>/K_u'
   *  SignalConversion generated from: '<S1>/M* Wrench'
   */
  for (j = 0; j < 4; j++) {
    parrot_gettingstarted_compati_B.TmpSignalConversionAtToWork[j] =
      ((parrot_gettingstarted_compati_P.Mixer[j + 4] * rtb_Dkuk_0 +
        parrot_gettingstarted_compati_P.Mixer[j] *
        parrot_gettingstarted_compati_B.Thrust) +
       parrot_gettingstarted_compati_P.Mixer[j + 8] * rtb_Sum_1) +
      parrot_gettingstarted_compati_P.Mixer[j + 12] * rtb_Thrust_idx_3;
  }

  /* End of Product: '<S1>/M* Wrench' */

  /* Sum: '<S1>/Sum' incorporates:
   *  Constant: '<S1>/Constant3'
   *  DataTypeConversion: '<S1>/Cast To Single'
   */
  rtb_Thrust_idx_3 = (real32_T)parrot_gettingstarted_compati_P.Constant3_Value +
    parrot_gettingstarted_compati_B.TmpSignalConversionAtToWork[0];

  /* Saturate: '<S1>/Saturation' */
  if (rtb_Thrust_idx_3 > parrot_gettingstarted_compati_P.Saturation_UpperSat) {
    /* DataTypeConversion: '<S1>/Cast To Single1' */
    motors_outport[0] = (real32_T)
      parrot_gettingstarted_compati_P.Saturation_UpperSat;
  } else if (rtb_Thrust_idx_3 <
             parrot_gettingstarted_compati_P.Saturation_LowerSat) {
    /* DataTypeConversion: '<S1>/Cast To Single1' */
    motors_outport[0] = (real32_T)
      parrot_gettingstarted_compati_P.Saturation_LowerSat;
  } else {
    /* DataTypeConversion: '<S1>/Cast To Single1' */
    motors_outport[0] = (real32_T)rtb_Thrust_idx_3;
  }

  /* Sum: '<S1>/Sum' incorporates:
   *  Constant: '<S1>/Constant4'
   *  DataTypeConversion: '<S1>/Cast To Single'
   */
  rtb_Thrust_idx_3 = (real32_T)parrot_gettingstarted_compati_P.Constant4_Value +
    parrot_gettingstarted_compati_B.TmpSignalConversionAtToWork[1];

  /* Saturate: '<S1>/Saturation' */
  if (rtb_Thrust_idx_3 > parrot_gettingstarted_compati_P.Saturation_UpperSat) {
    /* DataTypeConversion: '<S1>/Cast To Single1' */
    motors_outport[1] = (real32_T)
      parrot_gettingstarted_compati_P.Saturation_UpperSat;
  } else if (rtb_Thrust_idx_3 <
             parrot_gettingstarted_compati_P.Saturation_LowerSat) {
    /* DataTypeConversion: '<S1>/Cast To Single1' */
    motors_outport[1] = (real32_T)
      parrot_gettingstarted_compati_P.Saturation_LowerSat;
  } else {
    /* DataTypeConversion: '<S1>/Cast To Single1' */
    motors_outport[1] = (real32_T)rtb_Thrust_idx_3;
  }

  /* Sum: '<S1>/Sum' incorporates:
   *  Constant: '<S1>/Constant5'
   *  DataTypeConversion: '<S1>/Cast To Single'
   */
  rtb_Thrust_idx_3 = (real32_T)parrot_gettingstarted_compati_P.Constant5_Value +
    parrot_gettingstarted_compati_B.TmpSignalConversionAtToWork[2];

  /* Saturate: '<S1>/Saturation' */
  if (rtb_Thrust_idx_3 > parrot_gettingstarted_compati_P.Saturation_UpperSat) {
    /* DataTypeConversion: '<S1>/Cast To Single1' */
    motors_outport[2] = (real32_T)
      parrot_gettingstarted_compati_P.Saturation_UpperSat;
  } else if (rtb_Thrust_idx_3 <
             parrot_gettingstarted_compati_P.Saturation_LowerSat) {
    /* DataTypeConversion: '<S1>/Cast To Single1' */
    motors_outport[2] = (real32_T)
      parrot_gettingstarted_compati_P.Saturation_LowerSat;
  } else {
    /* DataTypeConversion: '<S1>/Cast To Single1' */
    motors_outport[2] = (real32_T)rtb_Thrust_idx_3;
  }

  /* Sum: '<S1>/Sum' incorporates:
   *  Constant: '<S1>/Constant6'
   *  DataTypeConversion: '<S1>/Cast To Single'
   */
  rtb_Thrust_idx_3 = (real32_T)parrot_gettingstarted_compati_P.Constant6_Value +
    parrot_gettingstarted_compati_B.TmpSignalConversionAtToWork[3];

  /* Saturate: '<S1>/Saturation' */
  if (rtb_Thrust_idx_3 > parrot_gettingstarted_compati_P.Saturation_UpperSat) {
    /* DataTypeConversion: '<S1>/Cast To Single1' */
    motors_outport[3] = (real32_T)
      parrot_gettingstarted_compati_P.Saturation_UpperSat;
  } else if (rtb_Thrust_idx_3 <
             parrot_gettingstarted_compati_P.Saturation_LowerSat) {
    /* DataTypeConversion: '<S1>/Cast To Single1' */
    motors_outport[3] = (real32_T)
      parrot_gettingstarted_compati_P.Saturation_LowerSat;
  } else {
    /* DataTypeConversion: '<S1>/Cast To Single1' */
    motors_outport[3] = (real32_T)rtb_Thrust_idx_3;
  }

  /* Outport: '<Root>/Motors' incorporates:
   *  DataTypeConversion: '<S1>/Cast To Single1'
   */
  parrot_gettingstarted_compati_Y.Motors[0] = motors_outport[0];
  parrot_gettingstarted_compati_Y.Motors[1] = motors_outport[1];
  parrot_gettingstarted_compati_Y.Motors[2] = motors_outport[2];
  parrot_gettingstarted_compati_Y.Motors[3] = motors_outport[3];

  /* ManualSwitch: '<S1>/Manual Switch' */
  if (parrot_gettingstarted_compati_P.ManualSwitch_CurrentSetting == 1) {
    /* ManualSwitch: '<S1>/Manual Switch' incorporates:
     *  Constant: '<S1>/Constant2'
     */
    flag_outport = parrot_gettingstarted_compati_P.Constant2_Value;
  } else {
    /* ManualSwitch: '<S1>/Manual Switch' incorporates:
     *  Constant: '<S1>/Constant1'
     */
    flag_outport = parrot_gettingstarted_compati_P.Constant1_Value;
  }

  /* End of ManualSwitch: '<S1>/Manual Switch' */

  /* Outport: '<Root>/Flag' */
  parrot_gettingstarted_compati_Y.Flag = flag_outport;

  /* ToWorkspace: '<S1>/To Workspace1' */
  {
    double locTime = parrot_gettingstarted_compat_M->Timing.taskTime0
      ;
    rt_UpdateStructLogVar((StructLogVar *)
                          parrot_gettingstarted_compat_DW.ToWorkspace1_PWORK.LoggedData,
                          &locTime,
                          &parrot_gettingstarted_compati_B.TmpSignalConversionAtToWork
                          [0]);
  }

  /* SignalConversion generated from: '<S1>/To Workspace2' incorporates:
   *  Gain: '<S2>/K_v'
   *  Gain: '<S3>/K_u'
   */
  parrot_gettingstarted_compati_B.TmpSignalConversionAtToWork[0] =
    parrot_gettingstarted_compati_B.Thrust;
  parrot_gettingstarted_compati_B.TmpSignalConversionAtToWork[1] = rtb_Dkuk_0;
  parrot_gettingstarted_compati_B.TmpSignalConversionAtToWork[2] = rtb_Sum_1;
  parrot_gettingstarted_compati_B.TmpSignalConversionAtToWork[3] =
    parrot_gettingstarted_compati_B.Rudder;

  /* ToWorkspace: '<S1>/To Workspace2' */
  {
    double locTime = parrot_gettingstarted_compat_M->Timing.taskTime0
      ;
    rt_UpdateStructLogVar((StructLogVar *)
                          parrot_gettingstarted_compat_DW.ToWorkspace2_PWORK.LoggedData,
                          &locTime,
                          &parrot_gettingstarted_compati_B.TmpSignalConversionAtToWork
                          [0]);
  }

  /* ToWorkspace: '<S14>/To Workspace' */
  {
    double locTime = parrot_gettingstarted_compat_M->Timing.taskTime0
      ;
    rt_UpdateStructLogVar((StructLogVar *)
                          parrot_gettingstarted_compat_DW.ToWorkspace_PWORK.LoggedData,
                          &locTime, &parrot_gettingstarted_compati_B.Thrust);
  }

  /* ToWorkspace: '<S1>/To Workspace' */
  {
    double locTime = parrot_gettingstarted_compat_M->Timing.taskTime0
      ;
    rt_UpdateStructLogVar((StructLogVar *)
                          parrot_gettingstarted_compat_DW.ToWorkspace_PWORK_k.LoggedData,
                          &locTime, &s);
  }

  /* ToWorkspace: '<S4>/To Workspace1' */
  {
    double locTime = parrot_gettingstarted_compat_M->Timing.taskTime0
      ;
    rt_UpdateStructLogVar((StructLogVar *)
                          parrot_gettingstarted_compat_DW.ToWorkspace1_PWORK_c.LoggedData,
                          &locTime,
                          &parrot_gettingstarted_compati_B.CastToSingle[1]);
  }

  /* Sum: '<S4>/Sum5' incorporates:
   *  Constant: '<S4>/Constant6'
   *  DataTypeConversion: '<S5>/Cast To Double2'
   *  Inport: '<Root>/Sensors'
   */
  parrot_gettingstarted_compati_B.Thrust = sensor_inport.HALSensors.HAL_acc_SI.z
    - parrot_gettingstarted_compati_P.Constant6_Value_g;

  /* Outputs for Enabled SubSystem: '<S36>/MeasurementUpdate' incorporates:
   *  EnablePort: '<S67>/Enable'
   */
  /* Constant: '<S15>/Enable' */
  if (parrot_gettingstarted_compati_P.Enable_Value) {
    parrot_gettingstarted_compat_DW.MeasurementUpdate_MODE = true;

    /* Sum: '<S67>/Sum' incorporates:
     *  Constant: '<S15>/C'
     *  Constant: '<S15>/D'
     *  DataTypeConversion: '<S4>/Data Type Conversion1'
     *  Delay: '<S15>/MemoryX'
     *  Inport: '<Root>/Sensors'
     *  Product: '<S67>/C[k]*xhat[k|k-1]'
     *  Product: '<S67>/D[k]*u[k]'
     *  Sum: '<S67>/Add1'
     */
    rtb_Sum_1 = sensor_inport.HALSensors.HAL_ultrasound_SI.altitude -
      ((parrot_gettingstarted_compati_P.C_Value[0] *
        parrot_gettingstarted_compat_DW.MemoryX_DSTATE[0] +
        parrot_gettingstarted_compati_P.C_Value[1] *
        parrot_gettingstarted_compat_DW.MemoryX_DSTATE[1]) +
       parrot_gettingstarted_compati_P.D_Value *
       parrot_gettingstarted_compati_B.Thrust);

    /* Product: '<S67>/Product3' incorporates:
     *  Constant: '<S16>/KalmanGainL'
     */
    parrot_gettingstarted_compati_B.Product3[0] =
      parrot_gettingstarted_compati_P.KalmanGainL_Value[0] * rtb_Sum_1;
    parrot_gettingstarted_compati_B.Product3[1] =
      parrot_gettingstarted_compati_P.KalmanGainL_Value[1] * rtb_Sum_1;
  } else if (parrot_gettingstarted_compat_DW.MeasurementUpdate_MODE) {
    /* Disable for Product: '<S67>/Product3' incorporates:
     *  Outport: '<S67>/L*(y[k]-yhat[k|k-1])'
     */
    parrot_gettingstarted_compati_B.Product3[0] =
      parrot_gettingstarted_compati_P.Lykyhatkk1_Y0;
    parrot_gettingstarted_compati_B.Product3[1] =
      parrot_gettingstarted_compati_P.Lykyhatkk1_Y0;
    parrot_gettingstarted_compat_DW.MeasurementUpdate_MODE = false;
  }

  /* End of Outputs for SubSystem: '<S36>/MeasurementUpdate' */

  /* ToWorkspace: '<S10>/To Workspace3' */
  {
    double locTime = parrot_gettingstarted_compat_M->Timing.taskTime0
      ;
    rt_UpdateStructLogVar((StructLogVar *)
                          parrot_gettingstarted_compat_DW.ToWorkspace3_PWORK.LoggedData,
                          &locTime, &parrot_gettingstarted_compati_B.Conversion
                          [0]);
  }

  /* ToWorkspace: '<S10>/To Workspace4' */
  {
    double locTime = parrot_gettingstarted_compat_M->Timing.taskTime0
      ;
    rt_UpdateStructLogVar((StructLogVar *)
                          parrot_gettingstarted_compat_DW.ToWorkspace4_PWORK.LoggedData,
                          &locTime, &parrot_gettingstarted_compati_B.Conversion
                          [1]);
  }

  /* DataTypeConversion: '<S10>/Cast To Double' incorporates:
   *  Inport: '<Root>/Sensors'
   */
  parrot_gettingstarted_compati_B.Conversion[0] =
    sensor_inport.HALSensors.HAL_acc_SI.y;
  parrot_gettingstarted_compati_B.Conversion[1] =
    sensor_inport.HALSensors.HAL_gyro_SI.x;

  /* Outputs for Enabled SubSystem: '<S91>/MeasurementUpdate' */
  /* Constant: '<S70>/Enable' incorporates:
   *  Constant: '<S70>/C'
   *  Constant: '<S70>/D'
   *  Constant: '<S71>/KalmanGainL'
   *  Delay: '<S70>/MemoryX'
   */
  parrot_gettin_MeasurementUpdate(parrot_gettingstarted_compati_P.Enable_Value_l,
    parrot_gettingstarted_compati_P.KalmanGainL_Value_p,
    parrot_gettingstarted_compati_B.vmeasure,
    parrot_gettingstarted_compati_P.C_Value_k,
    parrot_gettingstarted_compat_DW.MemoryX_DSTATE_p,
    parrot_gettingstarted_compati_P.D_Value_e,
    parrot_gettingstarted_compati_B.Conversion,
    &parrot_gettingstarted_compati_B.MeasurementUpdate_d,
    &parrot_gettingstarted_compat_DW.MeasurementUpdate_d,
    &parrot_gettingstarted_compati_P.MeasurementUpdate_d);

  /* End of Outputs for SubSystem: '<S91>/MeasurementUpdate' */

  /* ToWorkspace: '<S11>/To Workspace5' */
  {
    double locTime = parrot_gettingstarted_compat_M->Timing.taskTime0
      ;
    rt_UpdateStructLogVar((StructLogVar *)
                          parrot_gettingstarted_compat_DW.ToWorkspace5_PWORK.LoggedData,
                          &locTime,
                          &parrot_gettingstarted_compati_B.CastToSingle_i[0]);
  }

  /* ToWorkspace: '<S11>/To Workspace6' */
  {
    double locTime = parrot_gettingstarted_compat_M->Timing.taskTime0
      ;
    rt_UpdateStructLogVar((StructLogVar *)
                          parrot_gettingstarted_compat_DW.ToWorkspace6_PWORK.LoggedData,
                          &locTime,
                          &parrot_gettingstarted_compati_B.CastToSingle_i[1]);
  }

  /* DataTypeConversion: '<S11>/Cast To Double' incorporates:
   *  Inport: '<Root>/Sensors'
   */
  parrot_gettingstarted_compati_B.Conversion_n[0] =
    sensor_inport.HALSensors.HAL_acc_SI.x;
  parrot_gettingstarted_compati_B.Conversion_n[1] =
    sensor_inport.HALSensors.HAL_gyro_SI.y;

  /* Outputs for Enabled SubSystem: '<S146>/MeasurementUpdate' */
  /* Constant: '<S125>/Enable' incorporates:
   *  Constant: '<S125>/C'
   *  Constant: '<S125>/D'
   *  Constant: '<S126>/KalmanGainL'
   *  Delay: '<S125>/MemoryX'
   */
  parrot_gettin_MeasurementUpdate(parrot_gettingstarted_compati_P.Enable_Value_k,
    parrot_gettingstarted_compati_P.KalmanGainL_Value_j,
    parrot_gettingstarted_compati_B.Phi_measure,
    parrot_gettingstarted_compati_P.C_Value_n,
    parrot_gettingstarted_compat_DW.MemoryX_DSTATE_d,
    parrot_gettingstarted_compati_P.D_Value_n,
    parrot_gettingstarted_compati_B.Conversion_n,
    &parrot_gettingstarted_compati_B.MeasurementUpdate_b,
    &parrot_gettingstarted_compat_DW.MeasurementUpdate_b,
    &parrot_gettingstarted_compati_P.MeasurementUpdate_b);

  /* End of Outputs for SubSystem: '<S146>/MeasurementUpdate' */

  /* Update for Delay: '<S15>/MemoryX' */
  parrot_gettingstarted_compat_DW.icLoad = false;

  /* Product: '<S36>/A[k]*xhat[k|k-1]' incorporates:
   *  Constant: '<S15>/A'
   *  Delay: '<S15>/MemoryX'
   */
  parrot_gettingstarted_compati_B.Phi_measure =
    parrot_gettingstarted_compati_P.A_Value[0] *
    parrot_gettingstarted_compat_DW.MemoryX_DSTATE[0] +
    parrot_gettingstarted_compat_DW.MemoryX_DSTATE[1] *
    parrot_gettingstarted_compati_P.A_Value[2];
  parrot_gettingstarted_compati_B.vmeasure =
    parrot_gettingstarted_compat_DW.MemoryX_DSTATE[0] *
    parrot_gettingstarted_compati_P.A_Value[1] +
    parrot_gettingstarted_compat_DW.MemoryX_DSTATE[1] *
    parrot_gettingstarted_compati_P.A_Value[3];

  /* Update for Delay: '<S70>/MemoryX' */
  parrot_gettingstarted_compat_DW.icLoad_k = false;

  /* Update for Delay: '<S15>/MemoryX' incorporates:
   *  Constant: '<S15>/B'
   *  Product: '<S36>/B[k]*u[k]'
   *  Product: '<S67>/Product3'
   *  Sum: '<S36>/Add'
   */
  parrot_gettingstarted_compat_DW.MemoryX_DSTATE[0] =
    (parrot_gettingstarted_compati_P.B_Value[0] *
     parrot_gettingstarted_compati_B.Thrust +
     parrot_gettingstarted_compati_B.Phi_measure) +
    parrot_gettingstarted_compati_B.Product3[0];

  /* Product: '<S91>/A[k]*xhat[k|k-1]' incorporates:
   *  Constant: '<S70>/A'
   *  Delay: '<S70>/MemoryX'
   */
  parrot_gettingstarted_compati_B.Phi_measure =
    parrot_gettingstarted_compati_P.A_Value_p[0] *
    parrot_gettingstarted_compat_DW.MemoryX_DSTATE_p[0] +
    parrot_gettingstarted_compat_DW.MemoryX_DSTATE_p[1] *
    parrot_gettingstarted_compati_P.A_Value_p[2];

  /* Update for Delay: '<S15>/MemoryX' incorporates:
   *  Constant: '<S15>/B'
   *  Product: '<S36>/B[k]*u[k]'
   *  Product: '<S67>/Product3'
   *  Sum: '<S36>/Add'
   */
  parrot_gettingstarted_compat_DW.MemoryX_DSTATE[1] =
    (parrot_gettingstarted_compati_P.B_Value[1] *
     parrot_gettingstarted_compati_B.Thrust +
     parrot_gettingstarted_compati_B.vmeasure) +
    parrot_gettingstarted_compati_B.Product3[1];

  /* Product: '<S91>/A[k]*xhat[k|k-1]' incorporates:
   *  Constant: '<S70>/A'
   *  Delay: '<S70>/MemoryX'
   */
  parrot_gettingstarted_compati_B.vmeasure =
    parrot_gettingstarted_compat_DW.MemoryX_DSTATE_p[0] *
    parrot_gettingstarted_compati_P.A_Value_p[1] +
    parrot_gettingstarted_compat_DW.MemoryX_DSTATE_p[1] *
    parrot_gettingstarted_compati_P.A_Value_p[3];

  /* Update for Delay: '<S70>/MemoryX' incorporates:
   *  Constant: '<S70>/B'
   *  Product: '<S91>/B[k]*u[k]'
   *  Sum: '<S91>/Add'
   */
  parrot_gettingstarted_compat_DW.MemoryX_DSTATE_p[0] =
    ((parrot_gettingstarted_compati_P.B_Value_o[0] *
      parrot_gettingstarted_compati_B.Conversion[0] +
      parrot_gettingstarted_compati_B.Conversion[1] *
      parrot_gettingstarted_compati_P.B_Value_o[2]) +
     parrot_gettingstarted_compati_B.Phi_measure) +
    parrot_gettingstarted_compati_B.MeasurementUpdate_d.Product3[0];
  parrot_gettingstarted_compat_DW.MemoryX_DSTATE_p[1] =
    ((parrot_gettingstarted_compati_B.Conversion[0] *
      parrot_gettingstarted_compati_P.B_Value_o[1] +
      parrot_gettingstarted_compati_B.Conversion[1] *
      parrot_gettingstarted_compati_P.B_Value_o[3]) +
     parrot_gettingstarted_compati_B.vmeasure) +
    parrot_gettingstarted_compati_B.MeasurementUpdate_d.Product3[1];

  /* Update for Delay: '<S125>/MemoryX' */
  parrot_gettingstarted_compat_DW.icLoad_h = false;

  /* Product: '<S146>/A[k]*xhat[k|k-1]' incorporates:
   *  Constant: '<S125>/A'
   *  Delay: '<S125>/MemoryX'
   */
  parrot_gettingstarted_compati_B.Phi_measure =
    parrot_gettingstarted_compati_P.A_Value_n[0] *
    parrot_gettingstarted_compat_DW.MemoryX_DSTATE_d[0] +
    parrot_gettingstarted_compat_DW.MemoryX_DSTATE_d[1] *
    parrot_gettingstarted_compati_P.A_Value_n[2];
  parrot_gettingstarted_compati_B.vmeasure =
    parrot_gettingstarted_compat_DW.MemoryX_DSTATE_d[0] *
    parrot_gettingstarted_compati_P.A_Value_n[1] +
    parrot_gettingstarted_compat_DW.MemoryX_DSTATE_d[1] *
    parrot_gettingstarted_compati_P.A_Value_n[3];

  /* Update for Delay: '<S125>/MemoryX' incorporates:
   *  Constant: '<S125>/B'
   *  DataTypeConversion: '<S11>/Cast To Double'
   *  Inport: '<Root>/Sensors'
   *  Product: '<S146>/B[k]*u[k]'
   *  Sum: '<S146>/Add'
   */
  parrot_gettingstarted_compat_DW.MemoryX_DSTATE_d[0] =
    ((parrot_gettingstarted_compati_P.B_Value_e[0] *
      sensor_inport.HALSensors.HAL_acc_SI.x +
      sensor_inport.HALSensors.HAL_gyro_SI.y *
      parrot_gettingstarted_compati_P.B_Value_e[2]) +
     parrot_gettingstarted_compati_B.Phi_measure) +
    parrot_gettingstarted_compati_B.MeasurementUpdate_b.Product3[0];
  parrot_gettingstarted_compat_DW.MemoryX_DSTATE_d[1] =
    ((sensor_inport.HALSensors.HAL_acc_SI.x *
      parrot_gettingstarted_compati_P.B_Value_e[1] +
      sensor_inport.HALSensors.HAL_gyro_SI.y *
      parrot_gettingstarted_compati_P.B_Value_e[3]) +
     parrot_gettingstarted_compati_B.vmeasure) +
    parrot_gettingstarted_compati_B.MeasurementUpdate_b.Product3[1];

  /* Matfile logging */
  rt_UpdateTXYLogVars(parrot_gettingstarted_compat_M->rtwLogInfo,
                      (&parrot_gettingstarted_compat_M->Timing.taskTime0));

  /* signal main to stop simulation */
  {                                    /* Sample time: [0.005s, 0.0s] */
    if ((rtmGetTFinal(parrot_gettingstarted_compat_M)!=-1) &&
        !((rtmGetTFinal(parrot_gettingstarted_compat_M)-
           parrot_gettingstarted_compat_M->Timing.taskTime0) >
          parrot_gettingstarted_compat_M->Timing.taskTime0 * (DBL_EPSILON))) {
      rtmSetErrorStatus(parrot_gettingstarted_compat_M, "Simulation finished");
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
  if (!(++parrot_gettingstarted_compat_M->Timing.clockTick0)) {
    ++parrot_gettingstarted_compat_M->Timing.clockTickH0;
  }

  parrot_gettingstarted_compat_M->Timing.taskTime0 =
    parrot_gettingstarted_compat_M->Timing.clockTick0 *
    parrot_gettingstarted_compat_M->Timing.stepSize0 +
    parrot_gettingstarted_compat_M->Timing.clockTickH0 *
    parrot_gettingstarted_compat_M->Timing.stepSize0 * 4294967296.0;
}

/* Model initialize function */
void parrot_gettingstarted_compatible_initialize(void)
{
  /* Registration code */

  /* initialize non-finites */
  rt_InitInfAndNaN(sizeof(real_T));

  /* initialize real-time model */
  (void) memset((void *)parrot_gettingstarted_compat_M, 0,
                sizeof(RT_MODEL_parrot_gettingstarte_T));
  rtmSetTFinal(parrot_gettingstarted_compat_M, 100.0);
  parrot_gettingstarted_compat_M->Timing.stepSize0 = 0.005;

  /* Setup for data logging */
  {
    static RTWLogInfo rt_DataLoggingInfo;
    rt_DataLoggingInfo.loggingInterval = (NULL);
    parrot_gettingstarted_compat_M->rtwLogInfo = &rt_DataLoggingInfo;
  }

  /* Setup for data logging */
  {
    rtliSetLogXSignalInfo(parrot_gettingstarted_compat_M->rtwLogInfo, (NULL));
    rtliSetLogXSignalPtrs(parrot_gettingstarted_compat_M->rtwLogInfo, (NULL));
    rtliSetLogT(parrot_gettingstarted_compat_M->rtwLogInfo, "tout");
    rtliSetLogX(parrot_gettingstarted_compat_M->rtwLogInfo, "");
    rtliSetLogXFinal(parrot_gettingstarted_compat_M->rtwLogInfo, "");
    rtliSetLogVarNameModifier(parrot_gettingstarted_compat_M->rtwLogInfo, "rt_");
    rtliSetLogFormat(parrot_gettingstarted_compat_M->rtwLogInfo, 4);
    rtliSetLogMaxRows(parrot_gettingstarted_compat_M->rtwLogInfo, 0);
    rtliSetLogDecimation(parrot_gettingstarted_compat_M->rtwLogInfo, 1);
    rtliSetLogY(parrot_gettingstarted_compat_M->rtwLogInfo, "");
    rtliSetLogYSignalInfo(parrot_gettingstarted_compat_M->rtwLogInfo, (NULL));
    rtliSetLogYSignalPtrs(parrot_gettingstarted_compat_M->rtwLogInfo, (NULL));
  }

  /* block I/O */
  (void) memset(((void *) &parrot_gettingstarted_compati_B), 0,
                sizeof(B_parrot_gettingstarted_compa_T));

  /* exported global signals */
  motors_outport[0] = 0.0F;
  motors_outport[1] = 0.0F;
  motors_outport[2] = 0.0F;
  motors_outport[3] = 0.0F;
  flag_outport = 0U;

  /* states (dwork) */
  (void) memset((void *)&parrot_gettingstarted_compat_DW, 0,
                sizeof(DW_parrot_gettingstarted_comp_T));

  /* external inputs */
  (void)memset(&cmd_inport, 0, sizeof(CommandBus));
  (void)memset(&sensor_inport, 0, sizeof(SensorsBus));

  /* external outputs */
  (void)memset(&parrot_gettingstarted_compati_Y, 0, sizeof
               (ExtY_parrot_gettingstarted_co_T));

  /* Matfile logging */
  rt_StartDataLoggingWithStartTime(parrot_gettingstarted_compat_M->rtwLogInfo,
    0.0, rtmGetTFinal(parrot_gettingstarted_compat_M),
    parrot_gettingstarted_compat_M->Timing.stepSize0, (&rtmGetErrorStatus
    (parrot_gettingstarted_compat_M)));

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
      "parrot_gettingstarted_compatible/Flight_Control_System/To Workspace1";
    parrot_gettingstarted_compat_DW.ToWorkspace1_PWORK.LoggedData =
      rt_CreateStructLogVar(
      parrot_gettingstarted_compat_M->rtwLogInfo,
      0.0,
      rtmGetTFinal(parrot_gettingstarted_compat_M),
      parrot_gettingstarted_compat_M->Timing.stepSize0,
      (&rtmGetErrorStatus(parrot_gettingstarted_compat_M)),
      "mixer_out",
      1,
      0,
      1,
      0.005,
      &rt_ToWksSignalInfo,
      rt_ToWksBlockName);
    if (parrot_gettingstarted_compat_DW.ToWorkspace1_PWORK.LoggedData == (NULL))
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
      "parrot_gettingstarted_compatible/Flight_Control_System/To Workspace2";
    parrot_gettingstarted_compat_DW.ToWorkspace2_PWORK.LoggedData =
      rt_CreateStructLogVar(
      parrot_gettingstarted_compat_M->rtwLogInfo,
      0.0,
      rtmGetTFinal(parrot_gettingstarted_compat_M),
      parrot_gettingstarted_compat_M->Timing.stepSize0,
      (&rtmGetErrorStatus(parrot_gettingstarted_compat_M)),
      "test_mixer",
      1,
      0,
      1,
      0.005,
      &rt_ToWksSignalInfo,
      rt_ToWksBlockName);
    if (parrot_gettingstarted_compat_DW.ToWorkspace2_PWORK.LoggedData == (NULL))
      return;
  }

  /* SetupRuntimeResources for ToWorkspace: '<S14>/To Workspace' */
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
      "parrot_gettingstarted_compatible/Flight_Control_System/Thrust Regulator/To Workspace";
    parrot_gettingstarted_compat_DW.ToWorkspace_PWORK.LoggedData =
      rt_CreateStructLogVar(
      parrot_gettingstarted_compat_M->rtwLogInfo,
      0.0,
      rtmGetTFinal(parrot_gettingstarted_compat_M),
      parrot_gettingstarted_compat_M->Timing.stepSize0,
      (&rtmGetErrorStatus(parrot_gettingstarted_compat_M)),
      "thrust_out",
      1,
      0,
      1,
      0.005,
      &rt_ToWksSignalInfo,
      rt_ToWksBlockName);
    if (parrot_gettingstarted_compat_DW.ToWorkspace_PWORK.LoggedData == (NULL))
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
      "parrot_gettingstarted_compatible/Flight_Control_System/To Workspace";
    parrot_gettingstarted_compat_DW.ToWorkspace_PWORK_k.LoggedData =
      rt_CreateStructLogVar(
      parrot_gettingstarted_compat_M->rtwLogInfo,
      0.0,
      rtmGetTFinal(parrot_gettingstarted_compat_M),
      parrot_gettingstarted_compat_M->Timing.stepSize0,
      (&rtmGetErrorStatus(parrot_gettingstarted_compat_M)),
      "alt_est",
      1,
      0,
      1,
      0.005,
      &rt_ToWksSignalInfo,
      rt_ToWksBlockName);
    if (parrot_gettingstarted_compat_DW.ToWorkspace_PWORK_k.LoggedData == (NULL))
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
      "parrot_gettingstarted_compatible/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate1/To Workspace1";
    parrot_gettingstarted_compat_DW.ToWorkspace1_PWORK_c.LoggedData =
      rt_CreateStructLogVar(
      parrot_gettingstarted_compat_M->rtwLogInfo,
      0.0,
      rtmGetTFinal(parrot_gettingstarted_compat_M),
      parrot_gettingstarted_compat_M->Timing.stepSize0,
      (&rtmGetErrorStatus(parrot_gettingstarted_compat_M)),
      "w_est",
      1,
      0,
      1,
      0.005,
      &rt_ToWksSignalInfo,
      rt_ToWksBlockName);
    if (parrot_gettingstarted_compat_DW.ToWorkspace1_PWORK_c.LoggedData == (NULL))
      return;
  }

  /* SetupRuntimeResources for ToWorkspace: '<S10>/To Workspace3' */
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

    static const char_T *rt_ToWksLabels[] = { "v_est" };

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
      "parrot_gettingstarted_compatible/Flight_Control_System/Subsystem1/To Workspace3";
    parrot_gettingstarted_compat_DW.ToWorkspace3_PWORK.LoggedData =
      rt_CreateStructLogVar(
      parrot_gettingstarted_compat_M->rtwLogInfo,
      0.0,
      rtmGetTFinal(parrot_gettingstarted_compat_M),
      parrot_gettingstarted_compat_M->Timing.stepSize0,
      (&rtmGetErrorStatus(parrot_gettingstarted_compat_M)),
      "v_est",
      1,
      0,
      1,
      0.005,
      &rt_ToWksSignalInfo,
      rt_ToWksBlockName);
    if (parrot_gettingstarted_compat_DW.ToWorkspace3_PWORK.LoggedData == (NULL))
      return;
  }

  /* SetupRuntimeResources for ToWorkspace: '<S10>/To Workspace4' */
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

    static const char_T *rt_ToWksLabels[] = { "phi_est" };

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
      "parrot_gettingstarted_compatible/Flight_Control_System/Subsystem1/To Workspace4";
    parrot_gettingstarted_compat_DW.ToWorkspace4_PWORK.LoggedData =
      rt_CreateStructLogVar(
      parrot_gettingstarted_compat_M->rtwLogInfo,
      0.0,
      rtmGetTFinal(parrot_gettingstarted_compat_M),
      parrot_gettingstarted_compat_M->Timing.stepSize0,
      (&rtmGetErrorStatus(parrot_gettingstarted_compat_M)),
      "phi_est",
      1,
      0,
      1,
      0.005,
      &rt_ToWksSignalInfo,
      rt_ToWksBlockName);
    if (parrot_gettingstarted_compat_DW.ToWorkspace4_PWORK.LoggedData == (NULL))
      return;
  }

  /* SetupRuntimeResources for ToWorkspace: '<S11>/To Workspace5' */
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

    static const char_T *rt_ToWksLabels[] = { "u_est" };

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
      "parrot_gettingstarted_compatible/Flight_Control_System/Subsystem2/To Workspace5";
    parrot_gettingstarted_compat_DW.ToWorkspace5_PWORK.LoggedData =
      rt_CreateStructLogVar(
      parrot_gettingstarted_compat_M->rtwLogInfo,
      0.0,
      rtmGetTFinal(parrot_gettingstarted_compat_M),
      parrot_gettingstarted_compat_M->Timing.stepSize0,
      (&rtmGetErrorStatus(parrot_gettingstarted_compat_M)),
      "u_est",
      1,
      0,
      1,
      0.005,
      &rt_ToWksSignalInfo,
      rt_ToWksBlockName);
    if (parrot_gettingstarted_compat_DW.ToWorkspace5_PWORK.LoggedData == (NULL))
      return;
  }

  /* SetupRuntimeResources for ToWorkspace: '<S11>/To Workspace6' */
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

    static const char_T *rt_ToWksLabels[] = { "theta_est" };

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
      "parrot_gettingstarted_compatible/Flight_Control_System/Subsystem2/To Workspace6";
    parrot_gettingstarted_compat_DW.ToWorkspace6_PWORK.LoggedData =
      rt_CreateStructLogVar(
      parrot_gettingstarted_compat_M->rtwLogInfo,
      0.0,
      rtmGetTFinal(parrot_gettingstarted_compat_M),
      parrot_gettingstarted_compat_M->Timing.stepSize0,
      (&rtmGetErrorStatus(parrot_gettingstarted_compat_M)),
      "theta_est",
      1,
      0,
      1,
      0.005,
      &rt_ToWksSignalInfo,
      rt_ToWksBlockName);
    if (parrot_gettingstarted_compat_DW.ToWorkspace6_PWORK.LoggedData == (NULL))
      return;
  }

  /* Start for Enabled SubSystem: '<S43>/Enabled Subsystem' */
  parrot_g_EnabledSubsystem_Start
    (&parrot_gettingstarted_compat_DW.EnabledSubsystem);

  /* End of Start for SubSystem: '<S43>/Enabled Subsystem' */

  /* Start for Enabled SubSystem: '<S98>/Enabled Subsystem' */
  parrot_g_EnabledSubsystem_Start
    (&parrot_gettingstarted_compat_DW.EnabledSubsystem_a);

  /* End of Start for SubSystem: '<S98>/Enabled Subsystem' */

  /* Start for Enabled SubSystem: '<S153>/Enabled Subsystem' */
  parrot_g_EnabledSubsystem_Start
    (&parrot_gettingstarted_compat_DW.EnabledSubsystem_m);

  /* End of Start for SubSystem: '<S153>/Enabled Subsystem' */

  /* Start for Enabled SubSystem: '<S36>/MeasurementUpdate' */
  parrot_gettingstarted_compat_DW.MeasurementUpdate_MODE = false;

  /* End of Start for SubSystem: '<S36>/MeasurementUpdate' */

  /* Start for Enabled SubSystem: '<S91>/MeasurementUpdate' */
  parrot__MeasurementUpdate_Start
    (&parrot_gettingstarted_compat_DW.MeasurementUpdate_d);

  /* End of Start for SubSystem: '<S91>/MeasurementUpdate' */

  /* Start for Enabled SubSystem: '<S146>/MeasurementUpdate' */
  parrot__MeasurementUpdate_Start
    (&parrot_gettingstarted_compat_DW.MeasurementUpdate_b);

  /* End of Start for SubSystem: '<S146>/MeasurementUpdate' */

  /* InitializeConditions for Delay: '<S15>/MemoryX' */
  parrot_gettingstarted_compat_DW.icLoad = true;

  /* InitializeConditions for Delay: '<S70>/MemoryX' */
  parrot_gettingstarted_compat_DW.icLoad_k = true;

  /* InitializeConditions for Delay: '<S125>/MemoryX' */
  parrot_gettingstarted_compat_DW.icLoad_h = true;

  /* SystemInitialize for Enabled SubSystem: '<S43>/Enabled Subsystem' */
  parrot_ge_EnabledSubsystem_Init
    (&parrot_gettingstarted_compati_B.EnabledSubsystem,
     &parrot_gettingstarted_compati_P.EnabledSubsystem);

  /* End of SystemInitialize for SubSystem: '<S43>/Enabled Subsystem' */

  /* SystemInitialize for Enabled SubSystem: '<S98>/Enabled Subsystem' */
  parrot_ge_EnabledSubsystem_Init
    (&parrot_gettingstarted_compati_B.EnabledSubsystem_a,
     &parrot_gettingstarted_compati_P.EnabledSubsystem_a);

  /* End of SystemInitialize for SubSystem: '<S98>/Enabled Subsystem' */

  /* SystemInitialize for Enabled SubSystem: '<S153>/Enabled Subsystem' */
  parrot_ge_EnabledSubsystem_Init
    (&parrot_gettingstarted_compati_B.EnabledSubsystem_m,
     &parrot_gettingstarted_compati_P.EnabledSubsystem_m);

  /* End of SystemInitialize for SubSystem: '<S153>/Enabled Subsystem' */

  /* SystemInitialize for Enabled SubSystem: '<S36>/MeasurementUpdate' */
  /* SystemInitialize for Product: '<S67>/Product3' incorporates:
   *  Outport: '<S67>/L*(y[k]-yhat[k|k-1])'
   */
  parrot_gettingstarted_compati_B.Product3[0] =
    parrot_gettingstarted_compati_P.Lykyhatkk1_Y0;
  parrot_gettingstarted_compati_B.Product3[1] =
    parrot_gettingstarted_compati_P.Lykyhatkk1_Y0;

  /* End of SystemInitialize for SubSystem: '<S36>/MeasurementUpdate' */

  /* SystemInitialize for Enabled SubSystem: '<S91>/MeasurementUpdate' */
  parrot_g_MeasurementUpdate_Init
    (&parrot_gettingstarted_compati_B.MeasurementUpdate_d,
     &parrot_gettingstarted_compati_P.MeasurementUpdate_d);

  /* End of SystemInitialize for SubSystem: '<S91>/MeasurementUpdate' */

  /* SystemInitialize for Enabled SubSystem: '<S146>/MeasurementUpdate' */
  parrot_g_MeasurementUpdate_Init
    (&parrot_gettingstarted_compati_B.MeasurementUpdate_b,
     &parrot_gettingstarted_compati_P.MeasurementUpdate_b);

  /* End of SystemInitialize for SubSystem: '<S146>/MeasurementUpdate' */
}

/* Model terminate function */
void parrot_gettingstarted_compatible_terminate(void)
{
  /* (no terminate code required) */
}
