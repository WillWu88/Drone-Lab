/*
 * Controller.c
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

/* Exported block signals */
CommandBus cmd_inport;                 /* '<Root>/AC cmd' */
SensorsBus sensor_inport;              /* '<Root>/Sensors' */
real32_T motors_outport[4];            /* '<S1>/Sum' */
uint8_T flag_outport;                  /* '<S1>/Manual Switch' */

/* Block signals (default storage) */
B_Controller_T Controller_B;

/* Block states (default storage) */
DW_Controller_T Controller_DW;

/* External outputs (root outports fed by signals with default storage) */
ExtY_Controller_T Controller_Y;

/* Real-time model */
static RT_MODEL_Controller_T Controller_M_;
RT_MODEL_Controller_T *const Controller_M = &Controller_M_;

/*
 * System initialize for enable system:
 *    '<S90>/MeasurementUpdate'
 *    '<S201>/MeasurementUpdate'
 *    '<S257>/MeasurementUpdate'
 */
void Controll_MeasurementUpdate_Init(B_MeasurementUpdate_Controlle_T *localB,
  P_MeasurementUpdate_Controlle_T *localP)
{
  /* SystemInitialize for Product: '<S121>/Product3' incorporates:
   *  Outport: '<S121>/L*(y[k]-yhat[k|k-1])'
   */
  localB->Product3[0] = localP->Lykyhatkk1_Y0;
  localB->Product3[1] = localP->Lykyhatkk1_Y0;
}

/*
 * Disable for enable system:
 *    '<S90>/MeasurementUpdate'
 *    '<S201>/MeasurementUpdate'
 *    '<S257>/MeasurementUpdate'
 */
void Contr_MeasurementUpdate_Disable(B_MeasurementUpdate_Controlle_T *localB,
  DW_MeasurementUpdate_Controll_T *localDW, P_MeasurementUpdate_Controlle_T
  *localP)
{
  /* Disable for Product: '<S121>/Product3' incorporates:
   *  Outport: '<S121>/L*(y[k]-yhat[k|k-1])'
   */
  localB->Product3[0] = localP->Lykyhatkk1_Y0;
  localB->Product3[1] = localP->Lykyhatkk1_Y0;
  localDW->MeasurementUpdate_MODE = false;
}

/*
 * Start for enable system:
 *    '<S90>/MeasurementUpdate'
 *    '<S201>/MeasurementUpdate'
 *    '<S257>/MeasurementUpdate'
 */
void Control_MeasurementUpdate_Start(DW_MeasurementUpdate_Controll_T *localDW)
{
  localDW->MeasurementUpdate_MODE = false;
}

/*
 * Output and update for enable system:
 *    '<S90>/MeasurementUpdate'
 *    '<S201>/MeasurementUpdate'
 *    '<S257>/MeasurementUpdate'
 */
void Controller_MeasurementUpdate(boolean_T rtu_Enable, const real_T rtu_Lk[2],
  real_T rtu_yk, const real_T rtu_Ck[2], const real_T rtu_xhatkk1[2], real_T
  rtu_Dk, real_T rtu_uk, B_MeasurementUpdate_Controlle_T *localB,
  DW_MeasurementUpdate_Controll_T *localDW, P_MeasurementUpdate_Controlle_T
  *localP)
{
  real_T rtb_Sum_i;

  /* Outputs for Enabled SubSystem: '<S90>/MeasurementUpdate' incorporates:
   *  EnablePort: '<S121>/Enable'
   */
  if (rtu_Enable) {
    localDW->MeasurementUpdate_MODE = true;

    /* Sum: '<S121>/Sum' incorporates:
     *  Product: '<S121>/C[k]*xhat[k|k-1]'
     *  Product: '<S121>/D[k]*u[k]'
     *  Sum: '<S121>/Add1'
     */
    rtb_Sum_i = rtu_yk - ((rtu_Ck[0] * rtu_xhatkk1[0] + rtu_Ck[1] * rtu_xhatkk1
      [1]) + rtu_Dk * rtu_uk);

    /* Product: '<S121>/Product3' */
    localB->Product3[0] = rtu_Lk[0] * rtb_Sum_i;
    localB->Product3[1] = rtu_Lk[1] * rtb_Sum_i;
  } else if (localDW->MeasurementUpdate_MODE) {
    Contr_MeasurementUpdate_Disable(localB, localDW, localP);
  }

  /* End of Outputs for SubSystem: '<S90>/MeasurementUpdate' */
}

/*
 * System initialize for enable system:
 *    '<S97>/Enabled Subsystem'
 *    '<S208>/Enabled Subsystem'
 *    '<S264>/Enabled Subsystem'
 */
void Controlle_EnabledSubsystem_Init(B_EnabledSubsystem_Controller_T *localB,
  P_EnabledSubsystem_Controller_T *localP)
{
  /* SystemInitialize for Product: '<S123>/Product2' incorporates:
   *  Outport: '<S123>/deltax'
   */
  localB->Product2[0] = localP->deltax_Y0;
  localB->Product2[1] = localP->deltax_Y0;
}

/*
 * Disable for enable system:
 *    '<S97>/Enabled Subsystem'
 *    '<S208>/Enabled Subsystem'
 *    '<S264>/Enabled Subsystem'
 */
void Contro_EnabledSubsystem_Disable(B_EnabledSubsystem_Controller_T *localB,
  DW_EnabledSubsystem_Controlle_T *localDW, P_EnabledSubsystem_Controller_T
  *localP)
{
  /* Disable for Product: '<S123>/Product2' incorporates:
   *  Outport: '<S123>/deltax'
   */
  localB->Product2[0] = localP->deltax_Y0;
  localB->Product2[1] = localP->deltax_Y0;
  localDW->EnabledSubsystem_MODE = false;
}

/*
 * Start for enable system:
 *    '<S97>/Enabled Subsystem'
 *    '<S208>/Enabled Subsystem'
 *    '<S264>/Enabled Subsystem'
 */
void Controll_EnabledSubsystem_Start(DW_EnabledSubsystem_Controlle_T *localDW)
{
  localDW->EnabledSubsystem_MODE = false;
}

/*
 * Output and update for enable system:
 *    '<S97>/Enabled Subsystem'
 *    '<S208>/Enabled Subsystem'
 *    '<S264>/Enabled Subsystem'
 */
void Controller_EnabledSubsystem(boolean_T rtu_Enable, const real_T rtu_Mk[2],
  const real_T rtu_Ck[2], real_T rtu_yk, const real_T rtu_xhatkk1[2],
  B_EnabledSubsystem_Controller_T *localB, DW_EnabledSubsystem_Controlle_T
  *localDW, P_EnabledSubsystem_Controller_T *localP)
{
  real_T rtb_Add1;

  /* Outputs for Enabled SubSystem: '<S97>/Enabled Subsystem' incorporates:
   *  EnablePort: '<S123>/Enable'
   */
  if (rtu_Enable) {
    localDW->EnabledSubsystem_MODE = true;

    /* Sum: '<S123>/Add1' incorporates:
     *  Product: '<S123>/Product'
     */
    rtb_Add1 = rtu_yk - (rtu_Ck[0] * rtu_xhatkk1[0] + rtu_Ck[1] * rtu_xhatkk1[1]);

    /* Product: '<S123>/Product2' */
    localB->Product2[0] = rtu_Mk[0] * rtb_Add1;
    localB->Product2[1] = rtu_Mk[1] * rtb_Add1;
  } else if (localDW->EnabledSubsystem_MODE) {
    Contro_EnabledSubsystem_Disable(localB, localDW, localP);
  }

  /* End of Outputs for SubSystem: '<S97>/Enabled Subsystem' */
}

/*
 * Output and update for atomic system:
 *    '<S7>/MATLAB Function'
 *    '<S8>/MATLAB Function1'
 */
void Controller_MATLABFunction(real32_T rtu_P, B_MATLABFunction_Controller_T
  *localB)
{
  /* MATLAB Function 'Flight_Control_System/Kalman Filter: U/MATLAB Function': '<S179>:1' */
  /* '<S179>:1:9' */
  /* '<S179>:1:10' */
  localB->y = (real32_T)log(rtu_P / 101325.0F) * -8440.23926F;
}

/* Model step function */
void Controller_step(void)
{
  /* local block i/o variables */
  real_T rtb_DataTypeConversion2;
  real_T rtb_Reshapeu_c;
  real32_T rtb_Add_g[2];
  int32_T aoffset;
  int32_T coffset;
  int32_T i;
  int32_T j;
  real32_T a_tmp;
  real32_T rtb_Add_pl_idx_0;
  real32_T rtb_Sum3;

  /* DataTypeConversion: '<S1>/Cast To Single' incorporates:
   *  Constant: '<S1>/Constant3'
   *  Constant: '<S1>/Constant4'
   *  Constant: '<S1>/Constant5'
   *  Constant: '<S1>/Constant6'
   */
  Controller_B.CastToSingle[0] = (real32_T)Controller_P.Constant3_Value;
  Controller_B.CastToSingle[1] = (real32_T)Controller_P.Constant4_Value;
  Controller_B.CastToSingle[2] = (real32_T)Controller_P.Constant5_Value;
  Controller_B.CastToSingle[3] = (real32_T)Controller_P.Constant6_Value;

  /* Clock: '<S12>/Clock1' */
  Controller_B.Clock1 = Controller_M->Timing.t[0];

  /* DataTypeConversion: '<S4>/Data Type Conversion1' incorporates:
   *  Inport: '<Root>/Sensors'
   */
  Controller_B.PbZandW = sensor_inport.HALSensors.HAL_ultrasound_SI.altitude;

  /* Delay: '<S14>/MemoryX' incorporates:
   *  Constant: '<S14>/X0'
   */
  if (Controller_DW.icLoad) {
    Controller_DW.MemoryX_DSTATE[0] = Controller_P.X0_Value[0];
    Controller_DW.MemoryX_DSTATE[1] = Controller_P.X0_Value[1];
    Controller_DW.MemoryX_DSTATE[2] = Controller_P.X0_Value[2];
  }

  /* Outputs for Enabled SubSystem: '<S42>/Enabled Subsystem' incorporates:
   *  EnablePort: '<S68>/Enable'
   */
  /* Constant: '<S14>/Enable' */
  if (Controller_P.Enable_Value) {
    Controller_DW.EnabledSubsystem_MODE_k = true;

    /* Sum: '<S68>/Add1' incorporates:
     *  Constant: '<S14>/C'
     *  Delay: '<S14>/MemoryX'
     *  Product: '<S68>/Product'
     *  Reshape: '<S14>/Reshapey'
     */
    Controller_B.Ckxhatkk1 = Controller_B.PbZandW - ((Controller_P.C_Value[0] *
      Controller_DW.MemoryX_DSTATE[0] + Controller_P.C_Value[1] *
      Controller_DW.MemoryX_DSTATE[1]) + Controller_P.C_Value[2] *
      Controller_DW.MemoryX_DSTATE[2]);

    /* Product: '<S68>/Product2' incorporates:
     *  Constant: '<S15>/KalmanGainM'
     *  DataTypeConversion: '<S59>/Conversion'
     */
    Controller_B.Product2[0] = Controller_P.KalmanGainM_Value_j[0] *
      Controller_B.Ckxhatkk1;
    Controller_B.Product2[1] = Controller_P.KalmanGainM_Value_j[1] *
      Controller_B.Ckxhatkk1;
    Controller_B.Product2[2] = Controller_P.KalmanGainM_Value_j[2] *
      Controller_B.Ckxhatkk1;
  } else if (Controller_DW.EnabledSubsystem_MODE_k) {
    /* Disable for Product: '<S68>/Product2' incorporates:
     *  Outport: '<S68>/deltax'
     */
    Controller_B.Product2[0] = Controller_P.deltax_Y0;
    Controller_B.Product2[1] = Controller_P.deltax_Y0;
    Controller_B.Product2[2] = Controller_P.deltax_Y0;
    Controller_DW.EnabledSubsystem_MODE_k = false;
  }

  /* End of Outputs for SubSystem: '<S42>/Enabled Subsystem' */

  /* Trigonometry: '<S5>/Atan' incorporates:
   *  DataTypeConversion: '<S5>/Cast To Double1'
   *  DataTypeConversion: '<S5>/Cast To Double2'
   *  Inport: '<Root>/Sensors'
   *  Product: '<S5>/Divide'
   */
  Controller_B.Phi_measure = atan((real_T)sensor_inport.HALSensors.HAL_acc_SI.y /
    sensor_inport.HALSensors.HAL_acc_SI.z);

  /* Reshape: '<S69>/Reshapey' */
  Controller_B.Reshapey_c = Controller_B.Phi_measure;

  /* Delay: '<S69>/MemoryX' incorporates:
   *  Constant: '<S69>/X0'
   */
  if (Controller_DW.icLoad_p) {
    Controller_DW.MemoryX_DSTATE_n[0] = Controller_P.X0_Value_n[0];
    Controller_DW.MemoryX_DSTATE_n[1] = Controller_P.X0_Value_n[1];
  }

  /* Delay: '<S69>/MemoryX' */
  Controller_B.MemoryX_k[0] = Controller_DW.MemoryX_DSTATE_n[0];
  Controller_B.MemoryX_k[1] = Controller_DW.MemoryX_DSTATE_n[1];

  /* Outputs for Enabled SubSystem: '<S97>/Enabled Subsystem' */
  /* Constant: '<S69>/Enable' incorporates:
   *  Constant: '<S69>/C'
   *  Constant: '<S70>/KalmanGainM'
   */
  Controller_EnabledSubsystem(Controller_P.Enable_Value_p,
    Controller_P.KalmanGainM_Value, Controller_P.C_Value_h,
    Controller_B.Reshapey_c, Controller_B.MemoryX_k,
    &Controller_B.EnabledSubsystem_e, &Controller_DW.EnabledSubsystem_e,
    &Controller_P.EnabledSubsystem_e);

  /* End of Outputs for SubSystem: '<S97>/Enabled Subsystem' */

  /* Sum: '<S97>/Add' */
  Controller_B.Ckxhatkk1 = Controller_B.EnabledSubsystem_e.Product2[0] +
    Controller_B.MemoryX_k[0];

  /* Trigonometry: '<S6>/Atan1' incorporates:
   *  Gain: '<S6>/Gain1'
   *  Inport: '<Root>/Sensors'
   *  Math: '<S6>/Square'
   *  Math: '<S6>/Square1'
   *  Product: '<S6>/Divide1'
   *  Sqrt: '<S6>/Sqrt'
   *  Sum: '<S6>/Sum'
   */
  Controller_B.theta_measure = (real32_T)atan(Controller_P.Gain1_Gain *
    sensor_inport.HALSensors.HAL_acc_SI.x / (real32_T)sqrt
    (sensor_inport.HALSensors.HAL_acc_SI.y *
     sensor_inport.HALSensors.HAL_acc_SI.y +
     sensor_inport.HALSensors.HAL_acc_SI.z *
     sensor_inport.HALSensors.HAL_acc_SI.z));

  /* Delay: '<S124>/MemoryX' incorporates:
   *  Constant: '<S124>/X0'
   */
  if (Controller_DW.icLoad_g) {
    Controller_DW.MemoryX_DSTATE_l[0] = Controller_P.X0_Value_e[0];
    Controller_DW.MemoryX_DSTATE_l[1] = Controller_P.X0_Value_e[1];
  }

  /* Outputs for Enabled SubSystem: '<S152>/Enabled Subsystem' incorporates:
   *  EnablePort: '<S178>/Enable'
   */
  /* Constant: '<S124>/Enable' */
  if (Controller_P.Enable_Value_a) {
    Controller_DW.EnabledSubsystem_MODE = true;

    /* Sum: '<S178>/Add1' incorporates:
     *  Constant: '<S124>/C'
     *  Delay: '<S124>/MemoryX'
     *  Product: '<S178>/Product'
     */
    rtb_Sum3 = Controller_B.theta_measure - (Controller_P.C_Value_l[0] *
      Controller_DW.MemoryX_DSTATE_l[0] + Controller_P.C_Value_l[1] *
      Controller_DW.MemoryX_DSTATE_l[1]);

    /* Product: '<S178>/Product2' incorporates:
     *  Constant: '<S125>/KalmanGainM'
     *  DataTypeConversion: '<S169>/Conversion'
     */
    Controller_B.Product2_l[0] = (real32_T)Controller_P.KalmanGainM_Value_c[0] *
      rtb_Sum3;
    Controller_B.Product2_l[1] = (real32_T)Controller_P.KalmanGainM_Value_c[1] *
      rtb_Sum3;
  } else if (Controller_DW.EnabledSubsystem_MODE) {
    /* Disable for Product: '<S178>/Product2' incorporates:
     *  Outport: '<S178>/deltax'
     */
    Controller_B.Product2_l[0] = Controller_P.deltax_Y0_m;
    Controller_B.Product2_l[1] = Controller_P.deltax_Y0_m;
    Controller_DW.EnabledSubsystem_MODE = false;
  }

  /* End of Outputs for SubSystem: '<S152>/Enabled Subsystem' */

  /* Sum: '<S152>/Add' incorporates:
   *  Delay: '<S124>/MemoryX'
   */
  rtb_Add_pl_idx_0 = Controller_B.Product2_l[0] +
    Controller_DW.MemoryX_DSTATE_l[0];

  /* MATLAB Function: '<S1>/PD rotate' incorporates:
   *  DataTypeConversion: '<S5>/Cast To Single'
   *  Sum: '<S97>/Add'
   */
  /* MATLAB Function 'Flight_Control_System/PD rotate': '<S9>:1' */
  rtb_Sum3 = (real32_T)sin((real32_T)Controller_B.Ckxhatkk1);
  a_tmp = (real32_T)cos((real32_T)Controller_B.Ckxhatkk1);
  Controller_B.a[1] = 0.0F;
  Controller_B.a[4] = a_tmp;
  Controller_B.a[7] = rtb_Sum3;
  Controller_B.a[2] = 0.0F;
  Controller_B.a[5] = -rtb_Sum3;
  Controller_B.a[8] = a_tmp;
  rtb_Sum3 = (real32_T)sin(rtb_Add_pl_idx_0);
  a_tmp = (real32_T)cos(rtb_Add_pl_idx_0);
  Controller_B.b[0] = a_tmp;
  Controller_B.b[3] = 0.0F;
  Controller_B.b[6] = -rtb_Sum3;
  Controller_B.a[0] = 1.0F;
  Controller_B.b[1] = 0.0F;
  Controller_B.a[3] = 0.0F;
  Controller_B.b[4] = 1.0F;
  Controller_B.a[6] = 0.0F;
  Controller_B.b[7] = 0.0F;
  Controller_B.b[2] = rtb_Sum3;
  Controller_B.b[5] = 0.0F;
  Controller_B.b[8] = a_tmp;

  /* '<S9>:1:5' */
  for (j = 0; j < 3; j++) {
    coffset = j * 3;
    for (i = 0; i < 3; i++) {
      aoffset = i * 3;
      Controller_B.y[coffset + i] = (Controller_B.a[aoffset + 1] *
        Controller_B.b[j + 3] + Controller_B.a[aoffset] * Controller_B.b[j]) +
        Controller_B.a[aoffset + 2] * Controller_B.b[j + 6];
    }
  }

  /* DataTypeConversion: '<S13>/Cast To Single' incorporates:
   *  Constant: '<S13>/Constant10'
   *  Constant: '<S1>/Altitude'
   *  DataTypeConversion: '<S4>/Cast To Single'
   *  Delay: '<S14>/MemoryX'
   *  Gain: '<S13>/K_PD'
   *  MATLAB Function: '<S1>/PD rotate'
   *  Sum: '<S13>/Subtract'
   *  Sum: '<S13>/Subtract4'
   *  Sum: '<S42>/Add'
   */
  /* '<S9>:1:6' */
  Controller_B.CastToSingle_l = (real32_T)((Controller_P.Altitude_Value -
    (real32_T)(Controller_B.Product2[0] + Controller_DW.MemoryX_DSTATE[0]) *
    Controller_B.y[2]) * Controller_P.K_PD[0] + (Controller_P.Constant10_Value -
    (real32_T)(Controller_B.Product2[1] + Controller_DW.MemoryX_DSTATE[1])) *
    Controller_P.K_PD[1]);

  /* Switch: '<S12>/Engine Off!' incorporates:
   *  Constant: '<S12>/Zero'
   *  Switch: '<S12>/Descend'
   *  Switch: '<S12>/Switch'
   */
  if (Controller_B.Clock1 >= Controller_P.EngineOff_Threshold) {
    Controller_B.Clock1 = Controller_P.Zero_Value;
  } else if (Controller_B.Clock1 >= Controller_P.Descend_Threshold) {
    /* Switch: '<S12>/Descend' incorporates:
     *  Constant: '<S12>/Descend Thrust'
     */
    Controller_B.Clock1 = Controller_P.DescendThrust_Value;
  } else if (Controller_B.Clock1 >= Controller_P.Switch_Threshold) {
    /* Switch: '<S12>/Switch' incorporates:
     *  Switch: '<S12>/Descend'
     */
    Controller_B.Clock1 = Controller_B.CastToSingle_l;
  } else {
    /* Switch: '<S12>/Descend' incorporates:
     *  Constant: '<S12>/Take Off Thrust'
     */
    Controller_B.Clock1 = Controller_P.TakeOffThrust_Value;
  }

  /* End of Switch: '<S12>/Engine Off!' */

  /* MATLAB Function: '<S8>/MATLAB Function1' incorporates:
   *  Inport: '<Root>/Sensors'
   */
  Controller_MATLABFunction(sensor_inport.HALSensors.HAL_pressure_SI.pressure,
    &Controller_B.sf_MATLABFunction1);

  /* Product: '<S8>/Product1' incorporates:
   *  Constant: '<S8>/Constant3'
   *  Constant: '<S8>/Constant4'
   *  Inport: '<Root>/Sensors'
   *  Sum: '<S8>/Sum2'
   */
  Controller_B.vmeasure = (Controller_B.sf_MATLABFunction1.y -
    Controller_P.ground_alt) * Controller_P.ff *
    sensor_inport.VisionSensors.opticalFlow_data[1];

  /* Reshape: '<S236>/Reshapey' */
  Controller_B.Reshapey_k = Controller_B.vmeasure;

  /* Delay: '<S236>/MemoryX' incorporates:
   *  Constant: '<S236>/X0'
   */
  if (Controller_DW.icLoad_i) {
    Controller_DW.MemoryX_DSTATE_p[0] = Controller_P.X0_Value_i[0];
    Controller_DW.MemoryX_DSTATE_p[1] = Controller_P.X0_Value_i[1];
  }

  /* Delay: '<S236>/MemoryX' */
  Controller_B.MemoryX_d[0] = Controller_DW.MemoryX_DSTATE_p[0];
  Controller_B.MemoryX_d[1] = Controller_DW.MemoryX_DSTATE_p[1];

  /* Outputs for Enabled SubSystem: '<S264>/Enabled Subsystem' */
  /* Constant: '<S236>/Enable' incorporates:
   *  Constant: '<S236>/C'
   *  Constant: '<S237>/KalmanGainM'
   */
  Controller_EnabledSubsystem(Controller_P.Enable_Value_k,
    Controller_P.KalmanGainM_Value_m, Controller_P.C_Value_c,
    Controller_B.Reshapey_k, Controller_B.MemoryX_d,
    &Controller_B.EnabledSubsystem_m, &Controller_DW.EnabledSubsystem_m,
    &Controller_P.EnabledSubsystem_m);

  /* End of Outputs for SubSystem: '<S264>/Enabled Subsystem' */

  /* Sum: '<S2>/Subtract2' incorporates:
   *  Constant: '<S1>/v'
   *  DataTypeConversion: '<S8>/Cast To Single'
   *  Sum: '<S264>/Add'
   */
  Controller_B.v_Error = Controller_P.v_Value - (real32_T)
    (Controller_B.EnabledSubsystem_m.Product2[0] + Controller_B.MemoryX_d[0]);

  /* Sum: '<S2>/Subtract5' incorporates:
   *  Constant: '<S2>/Constant11'
   *  DataTypeConversion: '<S5>/Cast To Single'
   */
  Controller_B.phi_error = Controller_P.Constant11_Value - (real32_T)
    Controller_B.Ckxhatkk1;

  /* DataTypeConversion: '<S225>/Conversion' incorporates:
   *  Constant: '<S181>/KalmanGainM'
   */
  Controller_B.Conversion_k[0] = Controller_P.KalmanGainM_Value_n[0];
  Controller_B.Conversion_k[1] = Controller_P.KalmanGainM_Value_n[1];

  /* MATLAB Function: '<S7>/MATLAB Function' incorporates:
   *  Inport: '<Root>/Sensors'
   */
  Controller_MATLABFunction(sensor_inport.HALSensors.HAL_pressure_SI.pressure,
    &Controller_B.sf_MATLABFunction);

  /* Product: '<S7>/Product' incorporates:
   *  Constant: '<S7>/Constant'
   *  Constant: '<S7>/Constant5'
   *  Inport: '<Root>/Sensors'
   *  Sum: '<S7>/Sum1'
   */
  Controller_B.umeasure = (Controller_B.sf_MATLABFunction.y -
    Controller_P.ground_alt) * Controller_P.ff *
    sensor_inport.VisionSensors.opticalFlow_data[0];

  /* Reshape: '<S180>/Reshapey' */
  Controller_B.Reshapey_b = Controller_B.umeasure;

  /* Delay: '<S180>/MemoryX' incorporates:
   *  Constant: '<S180>/X0'
   */
  if (Controller_DW.icLoad_o) {
    Controller_DW.MemoryX_DSTATE_i[0] = Controller_P.X0_Value_l[0];
    Controller_DW.MemoryX_DSTATE_i[1] = Controller_P.X0_Value_l[1];
  }

  /* Delay: '<S180>/MemoryX' */
  Controller_B.MemoryX_g[0] = Controller_DW.MemoryX_DSTATE_i[0];
  Controller_B.MemoryX_g[1] = Controller_DW.MemoryX_DSTATE_i[1];

  /* Outputs for Enabled SubSystem: '<S208>/Enabled Subsystem' */
  /* Constant: '<S180>/Enable' incorporates:
   *  Constant: '<S180>/C'
   */
  Controller_EnabledSubsystem(Controller_P.Enable_Value_n,
    Controller_B.Conversion_k, Controller_P.C_Value_g, Controller_B.Reshapey_b,
    Controller_B.MemoryX_g, &Controller_B.EnabledSubsystem_o,
    &Controller_DW.EnabledSubsystem_o, &Controller_P.EnabledSubsystem_o);

  /* End of Outputs for SubSystem: '<S208>/Enabled Subsystem' */

  /* Sum: '<S3>/Subtract1' incorporates:
   *  Constant: '<S1>/u'
   *  DataTypeConversion: '<S7>/Cast To Single'
   *  Sum: '<S208>/Add'
   */
  Controller_B.u_error = Controller_P.u_Value - (real32_T)
    (Controller_B.EnabledSubsystem_o.Product2[0] + Controller_B.MemoryX_g[0]);

  /* Sum: '<S3>/Subtract5' incorporates:
   *  Constant: '<S3>/Constant11'
   */
  Controller_B.theta_error = Controller_P.Constant11_Value_b - rtb_Add_pl_idx_0;

  /* Gain: '<S2>/K_v' incorporates:
   *  Constant: '<S2>/Constant10'
   *  Inport: '<Root>/Sensors'
   *  SignalConversion generated from: '<S2>/K_v'
   *  Sum: '<S2>/Subtract4'
   */
  Controller_B.d = (Controller_P.K_v[0] * Controller_B.v_Error +
                    Controller_P.K_v[1] * Controller_B.phi_error) +
    (Controller_P.Constant10_Value_o - sensor_inport.HALSensors.HAL_gyro_SI.x) *
    Controller_P.K_v[2];

  /* Gain: '<S3>/K_u' incorporates:
   *  Constant: '<S3>/Constant10'
   *  Inport: '<Root>/Sensors'
   *  SignalConversion generated from: '<S3>/K_u'
   *  Sum: '<S3>/Subtract2'
   */
  Controller_B.d1 = (Controller_P.K_u[0] * Controller_B.u_error +
                     Controller_P.K_u[1] * Controller_B.theta_error) +
    (Controller_P.Constant10_Value_n - sensor_inport.HALSensors.HAL_gyro_SI.y) *
    Controller_P.K_u[2];

  /* SignalConversion generated from: '<S1>/M* Wrench' incorporates:
   *  Constant: '<S1>/r'
   *  DataTypeConversion: '<S10>/Cast To Single'
   *  Gain: '<S10>/K_r'
   *  Inport: '<Root>/Sensors'
   *  Sum: '<S10>/Subtract3'
   */
  rtb_Sum3 = (real32_T)((Controller_P.r_Value -
    sensor_inport.HALSensors.HAL_gyro_SI.z) * Controller_P.K_psi[0]);
  for (i = 0; i < 4; i++) {
    /* Sum: '<S1>/Sum' incorporates:
     *  Constant: '<S1>/Constant'
     *  DataTypeConversion: '<S12>/Cast To Single'
     *  DataTypeConversion: '<S1>/Cast To Single1'
     *  DataTypeConversion: '<S2>/Cast To Single'
     *  DataTypeConversion: '<S3>/Cast To Single'
     *  Gain: '<S2>/K_v'
     *  Gain: '<S3>/K_u'
     *  Product: '<S1>/M* Wrench'
     */
    motors_outport[i] = (real32_T)(((Controller_P.Mixer[i + 4] * (real32_T)
      Controller_B.d + Controller_P.Mixer[i] * (real32_T)Controller_B.Clock1) +
      Controller_P.Mixer[i + 8] * (real32_T)Controller_B.d1) +
      Controller_P.Mixer[i + 12] * rtb_Sum3) + Controller_B.CastToSingle[i];

    /* Outport: '<Root>/Motors' incorporates:
     *  Sum: '<S1>/Sum'
     */
    Controller_Y.Motors[i] = motors_outport[i];
  }

  /* ManualSwitch: '<S1>/Manual Switch' */
  if (Controller_P.ManualSwitch_CurrentSetting == 1) {
    /* ManualSwitch: '<S1>/Manual Switch' incorporates:
     *  Constant: '<S1>/Constant2'
     */
    flag_outport = Controller_P.Constant2_Value;
  } else {
    /* ManualSwitch: '<S1>/Manual Switch' incorporates:
     *  Constant: '<S1>/Constant1'
     */
    flag_outport = Controller_P.Constant1_Value;
  }

  /* End of ManualSwitch: '<S1>/Manual Switch' */

  /* Outport: '<Root>/Flag' */
  Controller_Y.Flag = flag_outport;

  /* Sum: '<S4>/Sum5' incorporates:
   *  Constant: '<S4>/Constant6'
   *  DataTypeConversion: '<S4>/Data Type Conversion'
   *  Inport: '<Root>/Sensors'
   */
  Controller_B.Sum5 = sensor_inport.HALSensors.HAL_acc_SI.z -
    Controller_P.Constant6_Value_g;

  /* Outputs for Enabled SubSystem: '<S35>/MeasurementUpdate' incorporates:
   *  EnablePort: '<S66>/Enable'
   */
  /* Constant: '<S14>/Enable' */
  /* MATLAB Function 'Kalman Filter/CovarianceOutputConfigurator/decideOutput/SqrtUsedFcn': '<S65>:1' */
  if (Controller_P.Enable_Value) {
    Controller_DW.MeasurementUpdate_MODE_m = true;

    /* Sum: '<S66>/Sum' incorporates:
     *  Constant: '<S14>/C'
     *  Constant: '<S14>/D'
     *  Delay: '<S14>/MemoryX'
     *  Product: '<S66>/C[k]*xhat[k|k-1]'
     *  Product: '<S66>/D[k]*u[k]'
     *  Reshape: '<S14>/Reshapeu'
     *  Reshape: '<S14>/Reshapey'
     *  Sum: '<S66>/Add1'
     */
    Controller_B.Clock1 = Controller_B.PbZandW - (((Controller_P.C_Value[0] *
      Controller_DW.MemoryX_DSTATE[0] + Controller_P.C_Value[1] *
      Controller_DW.MemoryX_DSTATE[1]) + Controller_P.C_Value[2] *
      Controller_DW.MemoryX_DSTATE[2]) + Controller_P.D_Value *
      Controller_B.Sum5);

    /* Product: '<S66>/Product3' incorporates:
     *  Constant: '<S15>/KalmanGainL'
     *  DataTypeConversion: '<S58>/Conversion'
     */
    Controller_B.Product3[0] = Controller_P.KalmanGainL_Value_a[0] *
      Controller_B.Clock1;
    Controller_B.Product3[1] = Controller_P.KalmanGainL_Value_a[1] *
      Controller_B.Clock1;
    Controller_B.Product3[2] = Controller_P.KalmanGainL_Value_a[2] *
      Controller_B.Clock1;
  } else if (Controller_DW.MeasurementUpdate_MODE_m) {
    /* Disable for Product: '<S66>/Product3' incorporates:
     *  Outport: '<S66>/L*(y[k]-yhat[k|k-1])'
     */
    Controller_B.Product3[0] = Controller_P.Lykyhatkk1_Y0;
    Controller_B.Product3[1] = Controller_P.Lykyhatkk1_Y0;
    Controller_B.Product3[2] = Controller_P.Lykyhatkk1_Y0;
    Controller_DW.MeasurementUpdate_MODE_m = false;
  }

  /* End of Outputs for SubSystem: '<S35>/MeasurementUpdate' */
  for (j = 0; j < 3; j++) {
    /* Sum: '<S35>/Add' incorporates:
     *  Constant: '<S14>/A'
     *  Constant: '<S14>/B'
     *  Delay: '<S14>/MemoryX'
     *  Product: '<S35>/A[k]*xhat[k|k-1]'
     *  Product: '<S35>/B[k]*u[k]'
     *  Product: '<S66>/Product3'
     *  Reshape: '<S14>/Reshapeu'
     */
    Controller_B.Add[j] = (Controller_P.B_Value[j] * Controller_B.Sum5 +
      (Controller_P.A_Value[j + 6] * Controller_DW.MemoryX_DSTATE[2] +
       (Controller_P.A_Value[j + 3] * Controller_DW.MemoryX_DSTATE[1] +
        Controller_P.A_Value[j] * Controller_DW.MemoryX_DSTATE[0]))) +
      Controller_B.Product3[j];
  }

  /* DataTypeConversion: '<S5>/Cast To Double' incorporates:
   *  Inport: '<Root>/Sensors'
   */
  Controller_B.CastToDouble = sensor_inport.HALSensors.HAL_gyro_SI.x;

  /* Reshape: '<S69>/Reshapeu' */
  Controller_B.Reshapeu_e = Controller_B.CastToDouble;

  /* Outputs for Enabled SubSystem: '<S90>/MeasurementUpdate' */
  /* Constant: '<S69>/Enable' incorporates:
   *  Constant: '<S69>/C'
   *  Constant: '<S69>/D'
   *  Constant: '<S70>/KalmanGainL'
   */
  Controller_MeasurementUpdate(Controller_P.Enable_Value_p,
    Controller_P.KalmanGainL_Value, Controller_B.Reshapey_c,
    Controller_P.C_Value_h, Controller_B.MemoryX_k, Controller_P.D_Value_c,
    Controller_B.Reshapeu_e, &Controller_B.MeasurementUpdate_d,
    &Controller_DW.MeasurementUpdate_d, &Controller_P.MeasurementUpdate_d);

  /* End of Outputs for SubSystem: '<S90>/MeasurementUpdate' */

  /* Sum: '<S90>/Add' incorporates:
   *  Constant: '<S69>/A'
   *  Constant: '<S69>/B'
   *  Product: '<S121>/Product3'
   *  Product: '<S90>/A[k]*xhat[k|k-1]'
   *  Product: '<S90>/B[k]*u[k]'
   */
  Controller_B.Add_d[0] = ((Controller_P.A_Value_b[0] * Controller_B.MemoryX_k[0]
    + Controller_B.MemoryX_k[1] * Controller_P.A_Value_b[2]) +
    Controller_P.B_Value_p[0] * Controller_B.Reshapeu_e) +
    Controller_B.MeasurementUpdate_d.Product3[0];
  Controller_B.Add_d[1] = ((Controller_B.MemoryX_k[0] * Controller_P.A_Value_b[1]
    + Controller_B.MemoryX_k[1] * Controller_P.A_Value_b[3]) +
    Controller_P.B_Value_p[1] * Controller_B.Reshapeu_e) +
    Controller_B.MeasurementUpdate_d.Product3[1];

  /* Gain: '<S6>/Gain' incorporates:
   *  Inport: '<Root>/Sensors'
   */
  Controller_B.Linearizedtheta_dot = Controller_P.Gain_Gain *
    sensor_inport.HALSensors.HAL_gyro_SI.y;

  /* Outputs for Enabled SubSystem: '<S145>/MeasurementUpdate' incorporates:
   *  EnablePort: '<S176>/Enable'
   */
  /* Constant: '<S124>/Enable' */
  /* MATLAB Function 'Kalman Filter/CovarianceOutputConfigurator/decideOutput/SqrtUsedFcn': '<S175>:1' */
  if (Controller_P.Enable_Value_a) {
    Controller_DW.MeasurementUpdate_MODE = true;

    /* Sum: '<S176>/Sum' incorporates:
     *  Constant: '<S124>/C'
     *  Constant: '<S124>/D'
     *  Delay: '<S124>/MemoryX'
     *  Product: '<S176>/C[k]*xhat[k|k-1]'
     *  Product: '<S176>/D[k]*u[k]'
     *  Sum: '<S176>/Add1'
     */
    rtb_Sum3 = Controller_B.theta_measure - ((Controller_P.C_Value_l[0] *
      Controller_DW.MemoryX_DSTATE_l[0] + Controller_P.C_Value_l[1] *
      Controller_DW.MemoryX_DSTATE_l[1]) + Controller_P.D_Value_e *
      Controller_B.Linearizedtheta_dot);

    /* Product: '<S176>/Product3' incorporates:
     *  Constant: '<S125>/KalmanGainL'
     *  DataTypeConversion: '<S168>/Conversion'
     */
    Controller_B.Product3_j[0] = (real32_T)Controller_P.KalmanGainL_Value_d[0] *
      rtb_Sum3;
    Controller_B.Product3_j[1] = (real32_T)Controller_P.KalmanGainL_Value_d[1] *
      rtb_Sum3;
  } else if (Controller_DW.MeasurementUpdate_MODE) {
    /* Disable for Product: '<S176>/Product3' incorporates:
     *  Outport: '<S176>/L*(y[k]-yhat[k|k-1])'
     */
    Controller_B.Product3_j[0] = Controller_P.Lykyhatkk1_Y0_c;
    Controller_B.Product3_j[1] = Controller_P.Lykyhatkk1_Y0_c;
    Controller_DW.MeasurementUpdate_MODE = false;
  }

  /* End of Outputs for SubSystem: '<S145>/MeasurementUpdate' */

  /* DataTypeConversion: '<S7>/Data Type Conversion2' incorporates:
   *  Gain: '<S7>/Gain2'
   *  Inport: '<Root>/Sensors'
   *  Sum: '<S7>/Sum3'
   */
  rtb_DataTypeConversion2 = Controller_P.Gain2_Gain * rtb_Add_pl_idx_0 +
    sensor_inport.HALSensors.HAL_acc_SI.x;

  /* Sum: '<S145>/Add' incorporates:
   *  Constant: '<S124>/A'
   *  Constant: '<S124>/B'
   *  Delay: '<S124>/MemoryX'
   *  Product: '<S145>/A[k]*xhat[k|k-1]'
   *  Product: '<S145>/B[k]*u[k]'
   *  Product: '<S176>/Product3'
   */
  rtb_Add_g[0] = ((Controller_P.A_Value_p[0] * Controller_DW.MemoryX_DSTATE_l[0]
                   + Controller_DW.MemoryX_DSTATE_l[1] * Controller_P.A_Value_p
                   [2]) + Controller_P.B_Value_e[0] *
                  Controller_B.Linearizedtheta_dot) + Controller_B.Product3_j[0];

  /* DataTypeConversion: '<S224>/Conversion' incorporates:
   *  Constant: '<S181>/KalmanGainL'
   */
  Controller_B.Conversion_n[0] = Controller_P.KalmanGainL_Value_p[0];

  /* Sum: '<S145>/Add' incorporates:
   *  Constant: '<S124>/A'
   *  Constant: '<S124>/B'
   *  Delay: '<S124>/MemoryX'
   *  Product: '<S145>/A[k]*xhat[k|k-1]'
   *  Product: '<S145>/B[k]*u[k]'
   *  Product: '<S176>/Product3'
   */
  rtb_Add_g[1] = ((Controller_DW.MemoryX_DSTATE_l[0] * Controller_P.A_Value_p[1]
                   + Controller_DW.MemoryX_DSTATE_l[1] * Controller_P.A_Value_p
                   [3]) + Controller_P.B_Value_e[1] *
                  Controller_B.Linearizedtheta_dot) + Controller_B.Product3_j[1];

  /* DataTypeConversion: '<S224>/Conversion' incorporates:
   *  Constant: '<S181>/KalmanGainL'
   */
  Controller_B.Conversion_n[1] = Controller_P.KalmanGainL_Value_p[1];

  /* Outputs for Enabled SubSystem: '<S201>/MeasurementUpdate' */
  /* Constant: '<S180>/Enable' incorporates:
   *  Constant: '<S180>/C'
   *  Constant: '<S180>/D'
   */
  /* MATLAB Function 'Kalman Filter/CovarianceOutputConfigurator/decideOutput/SqrtUsedFcn': '<S231>:1' */
  Controller_MeasurementUpdate(Controller_P.Enable_Value_n,
    Controller_B.Conversion_n, Controller_B.Reshapey_b, Controller_P.C_Value_g,
    Controller_B.MemoryX_g, Controller_P.D_Value_j, rtb_DataTypeConversion2,
    &Controller_B.MeasurementUpdate_f, &Controller_DW.MeasurementUpdate_f,
    &Controller_P.MeasurementUpdate_f);

  /* End of Outputs for SubSystem: '<S201>/MeasurementUpdate' */

  /* Sum: '<S201>/Add' incorporates:
   *  Constant: '<S180>/A'
   *  Constant: '<S180>/B'
   *  Product: '<S201>/A[k]*xhat[k|k-1]'
   *  Product: '<S201>/B[k]*u[k]'
   *  Product: '<S232>/Product3'
   */
  Controller_B.Add_p[0] = ((Controller_P.A_Value_l[0] * Controller_B.MemoryX_g[0]
    + Controller_B.MemoryX_g[1] * Controller_P.A_Value_l[2]) +
    Controller_P.B_Value_c[0] * rtb_DataTypeConversion2) +
    Controller_B.MeasurementUpdate_f.Product3[0];
  Controller_B.Add_p[1] = ((Controller_B.MemoryX_g[0] * Controller_P.A_Value_l[1]
    + Controller_B.MemoryX_g[1] * Controller_P.A_Value_l[3]) +
    Controller_P.B_Value_c[1] * rtb_DataTypeConversion2) +
    Controller_B.MeasurementUpdate_f.Product3[1];

  /* Gain: '<S8>/Gain3' incorporates:
   *  DataTypeConversion: '<S5>/Cast To Single'
   */
  Controller_B.Gain3 = Controller_P.Gain3_Gain * (real32_T)
    Controller_B.Ckxhatkk1;

  /* Sum: '<S8>/Sum4' incorporates:
   *  DataTypeConversion: '<S8>/Data Type Conversion3'
   *  Inport: '<Root>/Sensors'
   */
  Controller_B.Sum4 = (real_T)sensor_inport.HALSensors.HAL_acc_SI.y +
    Controller_B.Gain3;

  /* Reshape: '<S236>/Reshapeu' */
  rtb_Reshapeu_c = Controller_B.Sum4;

  /* Outputs for Enabled SubSystem: '<S257>/MeasurementUpdate' */
  /* Constant: '<S236>/Enable' incorporates:
   *  Constant: '<S236>/C'
   *  Constant: '<S236>/D'
   *  Constant: '<S237>/KalmanGainL'
   */
  Controller_MeasurementUpdate(Controller_P.Enable_Value_k,
    Controller_P.KalmanGainL_Value_b, Controller_B.Reshapey_k,
    Controller_P.C_Value_c, Controller_B.MemoryX_d, Controller_P.D_Value_cc,
    rtb_Reshapeu_c, &Controller_B.MeasurementUpdate_fq,
    &Controller_DW.MeasurementUpdate_fq, &Controller_P.MeasurementUpdate_fq);

  /* End of Outputs for SubSystem: '<S257>/MeasurementUpdate' */

  /* Sum: '<S257>/Add' incorporates:
   *  Constant: '<S236>/A'
   *  Constant: '<S236>/B'
   *  Product: '<S257>/A[k]*xhat[k|k-1]'
   *  Product: '<S257>/B[k]*u[k]'
   *  Product: '<S288>/Product3'
   */
  Controller_B.Add_f[0] = ((Controller_P.A_Value_d[0] * Controller_B.MemoryX_d[0]
    + Controller_B.MemoryX_d[1] * Controller_P.A_Value_d[2]) +
    Controller_P.B_Value_pa[0] * rtb_Reshapeu_c) +
    Controller_B.MeasurementUpdate_fq.Product3[0];
  Controller_B.Add_f[1] = ((Controller_B.MemoryX_d[0] * Controller_P.A_Value_d[1]
    + Controller_B.MemoryX_d[1] * Controller_P.A_Value_d[3]) +
    Controller_P.B_Value_pa[1] * rtb_Reshapeu_c) +
    Controller_B.MeasurementUpdate_fq.Product3[1];

  /* Matfile logging */
  rt_UpdateTXYLogVars(Controller_M->rtwLogInfo, (Controller_M->Timing.t));

  /* Update for Delay: '<S14>/MemoryX' */
  Controller_DW.icLoad = false;
  Controller_DW.MemoryX_DSTATE[0] = Controller_B.Add[0];
  Controller_DW.MemoryX_DSTATE[1] = Controller_B.Add[1];
  Controller_DW.MemoryX_DSTATE[2] = Controller_B.Add[2];

  /* Update for Delay: '<S69>/MemoryX' */
  Controller_DW.icLoad_p = false;

  /* Update for Delay: '<S124>/MemoryX' */
  Controller_DW.icLoad_g = false;

  /* Update for Delay: '<S236>/MemoryX' */
  Controller_DW.icLoad_i = false;

  /* Update for Delay: '<S180>/MemoryX' */
  Controller_DW.icLoad_o = false;

  /* Update for Delay: '<S69>/MemoryX' */
  Controller_DW.MemoryX_DSTATE_n[0] = Controller_B.Add_d[0];

  /* Update for Delay: '<S124>/MemoryX' */
  Controller_DW.MemoryX_DSTATE_l[0] = rtb_Add_g[0];

  /* Update for Delay: '<S236>/MemoryX' */
  Controller_DW.MemoryX_DSTATE_p[0] = Controller_B.Add_f[0];

  /* Update for Delay: '<S180>/MemoryX' */
  Controller_DW.MemoryX_DSTATE_i[0] = Controller_B.Add_p[0];

  /* Update for Delay: '<S69>/MemoryX' */
  Controller_DW.MemoryX_DSTATE_n[1] = Controller_B.Add_d[1];

  /* Update for Delay: '<S124>/MemoryX' */
  Controller_DW.MemoryX_DSTATE_l[1] = rtb_Add_g[1];

  /* Update for Delay: '<S236>/MemoryX' */
  Controller_DW.MemoryX_DSTATE_p[1] = Controller_B.Add_f[1];

  /* Update for Delay: '<S180>/MemoryX' */
  Controller_DW.MemoryX_DSTATE_i[1] = Controller_B.Add_p[1];

  /* signal main to stop simulation */
  {                                    /* Sample time: [0.0s, 0.0s] */
    if ((rtmGetTFinal(Controller_M)!=-1) &&
        !((rtmGetTFinal(Controller_M)-Controller_M->Timing.t[0]) >
          Controller_M->Timing.t[0] * (DBL_EPSILON))) {
      rtmSetErrorStatus(Controller_M, "Simulation finished");
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
  if (!(++Controller_M->Timing.clockTick0)) {
    ++Controller_M->Timing.clockTickH0;
  }

  Controller_M->Timing.t[0] = Controller_M->Timing.clockTick0 *
    Controller_M->Timing.stepSize0 + Controller_M->Timing.clockTickH0 *
    Controller_M->Timing.stepSize0 * 4294967296.0;

  {
    /* Update absolute timer for sample time: [0.005s, 0.0s] */
    /* The "clockTick1" counts the number of times the code of this task has
     * been executed. The resolution of this integer timer is 0.005, which is the step size
     * of the task. Size of "clockTick1" ensures timer will not overflow during the
     * application lifespan selected.
     * Timer of this task consists of two 32 bit unsigned integers.
     * The two integers represent the low bits Timing.clockTick1 and the high bits
     * Timing.clockTickH1. When the low bit overflows to 0, the high bits increment.
     */
    Controller_M->Timing.clockTick1++;
    if (!Controller_M->Timing.clockTick1) {
      Controller_M->Timing.clockTickH1++;
    }
  }
}

/* Model initialize function */
void Controller_initialize(void)
{
  /* Registration code */

  /* initialize non-finites */
  rt_InitInfAndNaN(sizeof(real_T));

  /* initialize real-time model */
  (void) memset((void *)Controller_M, 0,
                sizeof(RT_MODEL_Controller_T));

  {
    /* Setup solver object */
    rtsiSetSimTimeStepPtr(&Controller_M->solverInfo,
                          &Controller_M->Timing.simTimeStep);
    rtsiSetTPtr(&Controller_M->solverInfo, &rtmGetTPtr(Controller_M));
    rtsiSetStepSizePtr(&Controller_M->solverInfo,
                       &Controller_M->Timing.stepSize0);
    rtsiSetErrorStatusPtr(&Controller_M->solverInfo, (&rtmGetErrorStatus
      (Controller_M)));
    rtsiSetRTModelPtr(&Controller_M->solverInfo, Controller_M);
  }

  rtsiSetSimTimeStep(&Controller_M->solverInfo, MAJOR_TIME_STEP);
  rtsiSetSolverName(&Controller_M->solverInfo,"FixedStepDiscrete");
  rtmSetTPtr(Controller_M, &Controller_M->Timing.tArray[0]);
  rtmSetTFinal(Controller_M, 100.0);
  Controller_M->Timing.stepSize0 = 0.005;

  /* Setup for data logging */
  {
    static RTWLogInfo rt_DataLoggingInfo;
    rt_DataLoggingInfo.loggingInterval = (NULL);
    Controller_M->rtwLogInfo = &rt_DataLoggingInfo;
  }

  /* Setup for data logging */
  {
    rtliSetLogXSignalInfo(Controller_M->rtwLogInfo, (NULL));
    rtliSetLogXSignalPtrs(Controller_M->rtwLogInfo, (NULL));
    rtliSetLogT(Controller_M->rtwLogInfo, "tout");
    rtliSetLogX(Controller_M->rtwLogInfo, "");
    rtliSetLogXFinal(Controller_M->rtwLogInfo, "");
    rtliSetLogVarNameModifier(Controller_M->rtwLogInfo, "rt_");
    rtliSetLogFormat(Controller_M->rtwLogInfo, 4);
    rtliSetLogMaxRows(Controller_M->rtwLogInfo, 0);
    rtliSetLogDecimation(Controller_M->rtwLogInfo, 1);
    rtliSetLogY(Controller_M->rtwLogInfo, "");
    rtliSetLogYSignalInfo(Controller_M->rtwLogInfo, (NULL));
    rtliSetLogYSignalPtrs(Controller_M->rtwLogInfo, (NULL));
  }

  /* block I/O */
  (void) memset(((void *) &Controller_B), 0,
                sizeof(B_Controller_T));

  /* exported global signals */
  motors_outport[0] = 0.0F;
  motors_outport[1] = 0.0F;
  motors_outport[2] = 0.0F;
  motors_outport[3] = 0.0F;
  flag_outport = 0U;

  /* states (dwork) */
  (void) memset((void *)&Controller_DW, 0,
                sizeof(DW_Controller_T));

  /* external inputs */
  (void)memset(&cmd_inport, 0, sizeof(CommandBus));
  (void)memset(&sensor_inport, 0, sizeof(SensorsBus));

  /* external outputs */
  (void) memset((void *)&Controller_Y, 0,
                sizeof(ExtY_Controller_T));

  /* Matfile logging */
  rt_StartDataLoggingWithStartTime(Controller_M->rtwLogInfo, 0.0, rtmGetTFinal
    (Controller_M), Controller_M->Timing.stepSize0, (&rtmGetErrorStatus
    (Controller_M)));

  /* Start for Enabled SubSystem: '<S42>/Enabled Subsystem' */
  Controller_DW.EnabledSubsystem_MODE_k = false;

  /* End of Start for SubSystem: '<S42>/Enabled Subsystem' */

  /* Start for Enabled SubSystem: '<S97>/Enabled Subsystem' */
  Controll_EnabledSubsystem_Start(&Controller_DW.EnabledSubsystem_e);

  /* End of Start for SubSystem: '<S97>/Enabled Subsystem' */

  /* Start for Enabled SubSystem: '<S152>/Enabled Subsystem' */
  Controller_DW.EnabledSubsystem_MODE = false;

  /* End of Start for SubSystem: '<S152>/Enabled Subsystem' */

  /* Start for Enabled SubSystem: '<S264>/Enabled Subsystem' */
  Controll_EnabledSubsystem_Start(&Controller_DW.EnabledSubsystem_m);

  /* End of Start for SubSystem: '<S264>/Enabled Subsystem' */

  /* Start for Enabled SubSystem: '<S208>/Enabled Subsystem' */
  Controll_EnabledSubsystem_Start(&Controller_DW.EnabledSubsystem_o);

  /* End of Start for SubSystem: '<S208>/Enabled Subsystem' */

  /* Start for Enabled SubSystem: '<S35>/MeasurementUpdate' */
  Controller_DW.MeasurementUpdate_MODE_m = false;

  /* End of Start for SubSystem: '<S35>/MeasurementUpdate' */

  /* Start for Enabled SubSystem: '<S90>/MeasurementUpdate' */
  Control_MeasurementUpdate_Start(&Controller_DW.MeasurementUpdate_d);

  /* End of Start for SubSystem: '<S90>/MeasurementUpdate' */

  /* Start for Enabled SubSystem: '<S145>/MeasurementUpdate' */
  Controller_DW.MeasurementUpdate_MODE = false;

  /* End of Start for SubSystem: '<S145>/MeasurementUpdate' */

  /* Start for Enabled SubSystem: '<S201>/MeasurementUpdate' */
  Control_MeasurementUpdate_Start(&Controller_DW.MeasurementUpdate_f);

  /* End of Start for SubSystem: '<S201>/MeasurementUpdate' */

  /* Start for Enabled SubSystem: '<S257>/MeasurementUpdate' */
  Control_MeasurementUpdate_Start(&Controller_DW.MeasurementUpdate_fq);

  /* End of Start for SubSystem: '<S257>/MeasurementUpdate' */

  /* InitializeConditions for Delay: '<S14>/MemoryX' */
  Controller_DW.icLoad = true;

  /* InitializeConditions for Delay: '<S69>/MemoryX' */
  Controller_DW.icLoad_p = true;

  /* InitializeConditions for Delay: '<S124>/MemoryX' */
  Controller_DW.icLoad_g = true;

  /* InitializeConditions for Delay: '<S236>/MemoryX' */
  Controller_DW.icLoad_i = true;

  /* InitializeConditions for Delay: '<S180>/MemoryX' */
  Controller_DW.icLoad_o = true;

  /* SystemInitialize for Enabled SubSystem: '<S42>/Enabled Subsystem' */
  /* SystemInitialize for Product: '<S68>/Product2' incorporates:
   *  Outport: '<S68>/deltax'
   */
  Controller_B.Product2[0] = Controller_P.deltax_Y0;
  Controller_B.Product2[1] = Controller_P.deltax_Y0;
  Controller_B.Product2[2] = Controller_P.deltax_Y0;

  /* End of SystemInitialize for SubSystem: '<S42>/Enabled Subsystem' */

  /* SystemInitialize for Enabled SubSystem: '<S97>/Enabled Subsystem' */
  Controlle_EnabledSubsystem_Init(&Controller_B.EnabledSubsystem_e,
    &Controller_P.EnabledSubsystem_e);

  /* End of SystemInitialize for SubSystem: '<S97>/Enabled Subsystem' */

  /* SystemInitialize for Enabled SubSystem: '<S152>/Enabled Subsystem' */
  /* SystemInitialize for Product: '<S178>/Product2' incorporates:
   *  Outport: '<S178>/deltax'
   */
  Controller_B.Product2_l[0] = Controller_P.deltax_Y0_m;
  Controller_B.Product2_l[1] = Controller_P.deltax_Y0_m;

  /* End of SystemInitialize for SubSystem: '<S152>/Enabled Subsystem' */

  /* SystemInitialize for Enabled SubSystem: '<S264>/Enabled Subsystem' */
  Controlle_EnabledSubsystem_Init(&Controller_B.EnabledSubsystem_m,
    &Controller_P.EnabledSubsystem_m);

  /* End of SystemInitialize for SubSystem: '<S264>/Enabled Subsystem' */

  /* SystemInitialize for Enabled SubSystem: '<S208>/Enabled Subsystem' */
  Controlle_EnabledSubsystem_Init(&Controller_B.EnabledSubsystem_o,
    &Controller_P.EnabledSubsystem_o);

  /* End of SystemInitialize for SubSystem: '<S208>/Enabled Subsystem' */

  /* SystemInitialize for Enabled SubSystem: '<S35>/MeasurementUpdate' */
  /* SystemInitialize for Product: '<S66>/Product3' incorporates:
   *  Outport: '<S66>/L*(y[k]-yhat[k|k-1])'
   */
  Controller_B.Product3[0] = Controller_P.Lykyhatkk1_Y0;
  Controller_B.Product3[1] = Controller_P.Lykyhatkk1_Y0;
  Controller_B.Product3[2] = Controller_P.Lykyhatkk1_Y0;

  /* End of SystemInitialize for SubSystem: '<S35>/MeasurementUpdate' */

  /* SystemInitialize for Enabled SubSystem: '<S90>/MeasurementUpdate' */
  Controll_MeasurementUpdate_Init(&Controller_B.MeasurementUpdate_d,
    &Controller_P.MeasurementUpdate_d);

  /* End of SystemInitialize for SubSystem: '<S90>/MeasurementUpdate' */

  /* SystemInitialize for Enabled SubSystem: '<S145>/MeasurementUpdate' */
  /* SystemInitialize for Product: '<S176>/Product3' incorporates:
   *  Outport: '<S176>/L*(y[k]-yhat[k|k-1])'
   */
  Controller_B.Product3_j[0] = Controller_P.Lykyhatkk1_Y0_c;
  Controller_B.Product3_j[1] = Controller_P.Lykyhatkk1_Y0_c;

  /* End of SystemInitialize for SubSystem: '<S145>/MeasurementUpdate' */

  /* SystemInitialize for Enabled SubSystem: '<S201>/MeasurementUpdate' */
  Controll_MeasurementUpdate_Init(&Controller_B.MeasurementUpdate_f,
    &Controller_P.MeasurementUpdate_f);

  /* End of SystemInitialize for SubSystem: '<S201>/MeasurementUpdate' */

  /* SystemInitialize for Enabled SubSystem: '<S257>/MeasurementUpdate' */
  Controll_MeasurementUpdate_Init(&Controller_B.MeasurementUpdate_fq,
    &Controller_P.MeasurementUpdate_fq);

  /* End of SystemInitialize for SubSystem: '<S257>/MeasurementUpdate' */
}

/* Model terminate function */
void Controller_terminate(void)
{
  /* (no terminate code required) */
}
