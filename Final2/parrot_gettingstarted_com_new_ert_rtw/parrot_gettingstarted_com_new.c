/*
 * parrot_gettingstarted_com_new.c
 *
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * Code generation for model "parrot_gettingstarted_com_new".
 *
 * Model version              : 2.1
 * Simulink Coder version : 9.5 (R2021a) 14-Nov-2020
 * C source code generated on : Wed May  4 09:25:35 2022
 *
 * Target selection: ert.tlc
 * Note: GRT includes extra infrastructure and instrumentation for prototyping
 * Embedded hardware selection: ARM Compatible->ARM 9
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#include "parrot_gettingstarted_com_new.h"
#include "parrot_gettingstarted_com_new_private.h"

/* Exported block signals */
CommandBus cmd_inport;                 /* '<Root>/AC cmd' */
SensorsBus sensor_inport;              /* '<Root>/Sensors' */
real32_T motors_outport[4];            /* '<S1>/Cast To Single1' */
uint8_T flag_outport;                  /* '<S1>/Manual Switch' */

/* Block states (default storage) */
DW_parrot_gettingstarted_com__T parrot_gettingstarted_com_ne_DW;

/* External outputs (root outports fed by signals with default storage) */
ExtY_parrot_gettingstarted_co_T parrot_gettingstarted_com_new_Y;

/* Real-time model */
static RT_MODEL_parrot_gettingstarte_T parrot_gettingstarted_com_ne_M_;
RT_MODEL_parrot_gettingstarte_T *const parrot_gettingstarted_com_ne_M =
  &parrot_gettingstarted_com_ne_M_;

/* Model step function */
void parrot_gettingstarted_com_new_step(void)
{
  real_T rtb_MWrench[4];
  real_T tmp;
  int32_T i;
  real32_T rtb_opticalFlow_data[3];
  real32_T rtb_pressure;

  /* SignalConversion generated from: '<S1>/M* Wrench' incorporates:
   *  Constant: '<S1>/Constant8'
   */
  tmp = parrot_gettingstarted_com_new_P.m * parrot_gettingstarted_com_new_P.g;

  /* Product: '<S1>/M* Wrench' incorporates:
   *  Constant: '<S1>/Constant'
   *  Constant: '<S1>/Constant7'
   */
  for (i = 0; i < 4; i++) {
    rtb_MWrench[i] = parrot_gettingstarted_com_new_P.Mixer[i + 12] *
      parrot_gettingstarted_com_new_P.Constant7_Value +
      (parrot_gettingstarted_com_new_P.Mixer[i + 8] *
       parrot_gettingstarted_com_new_P.Constant7_Value +
       (parrot_gettingstarted_com_new_P.Mixer[i + 4] *
        parrot_gettingstarted_com_new_P.Constant7_Value +
        parrot_gettingstarted_com_new_P.Mixer[i] * tmp));
  }

  /* End of Product: '<S1>/M* Wrench' */

  /* Sum: '<S1>/Sum' incorporates:
   *  Constant: '<S1>/Constant3'
   *  DataTypeConversion: '<S1>/Cast To Single'
   */
  tmp = (real32_T)parrot_gettingstarted_com_new_P.Constant3_Value + rtb_MWrench
    [0];

  /* Saturate: '<S1>/Saturation' */
  if (tmp > parrot_gettingstarted_com_new_P.Saturation_UpperSat) {
    /* DataTypeConversion: '<S1>/Cast To Single1' */
    motors_outport[0] = (real32_T)
      parrot_gettingstarted_com_new_P.Saturation_UpperSat;
  } else if (tmp < parrot_gettingstarted_com_new_P.Saturation_LowerSat) {
    /* DataTypeConversion: '<S1>/Cast To Single1' */
    motors_outport[0] = (real32_T)
      parrot_gettingstarted_com_new_P.Saturation_LowerSat;
  } else {
    /* DataTypeConversion: '<S1>/Cast To Single1' */
    motors_outport[0] = (real32_T)tmp;
  }

  /* Sum: '<S1>/Sum' incorporates:
   *  Constant: '<S1>/Constant4'
   *  DataTypeConversion: '<S1>/Cast To Single'
   */
  tmp = (real32_T)parrot_gettingstarted_com_new_P.Constant4_Value + rtb_MWrench
    [1];

  /* Saturate: '<S1>/Saturation' */
  if (tmp > parrot_gettingstarted_com_new_P.Saturation_UpperSat) {
    /* DataTypeConversion: '<S1>/Cast To Single1' */
    motors_outport[1] = (real32_T)
      parrot_gettingstarted_com_new_P.Saturation_UpperSat;
  } else if (tmp < parrot_gettingstarted_com_new_P.Saturation_LowerSat) {
    /* DataTypeConversion: '<S1>/Cast To Single1' */
    motors_outport[1] = (real32_T)
      parrot_gettingstarted_com_new_P.Saturation_LowerSat;
  } else {
    /* DataTypeConversion: '<S1>/Cast To Single1' */
    motors_outport[1] = (real32_T)tmp;
  }

  /* Sum: '<S1>/Sum' incorporates:
   *  Constant: '<S1>/Constant5'
   *  DataTypeConversion: '<S1>/Cast To Single'
   */
  tmp = (real32_T)parrot_gettingstarted_com_new_P.Constant5_Value + rtb_MWrench
    [2];

  /* Saturate: '<S1>/Saturation' */
  if (tmp > parrot_gettingstarted_com_new_P.Saturation_UpperSat) {
    /* DataTypeConversion: '<S1>/Cast To Single1' */
    motors_outport[2] = (real32_T)
      parrot_gettingstarted_com_new_P.Saturation_UpperSat;
  } else if (tmp < parrot_gettingstarted_com_new_P.Saturation_LowerSat) {
    /* DataTypeConversion: '<S1>/Cast To Single1' */
    motors_outport[2] = (real32_T)
      parrot_gettingstarted_com_new_P.Saturation_LowerSat;
  } else {
    /* DataTypeConversion: '<S1>/Cast To Single1' */
    motors_outport[2] = (real32_T)tmp;
  }

  /* Sum: '<S1>/Sum' incorporates:
   *  Constant: '<S1>/Constant6'
   *  DataTypeConversion: '<S1>/Cast To Single'
   */
  tmp = (real32_T)parrot_gettingstarted_com_new_P.Constant6_Value + rtb_MWrench
    [3];

  /* Saturate: '<S1>/Saturation' */
  if (tmp > parrot_gettingstarted_com_new_P.Saturation_UpperSat) {
    /* DataTypeConversion: '<S1>/Cast To Single1' */
    motors_outport[3] = (real32_T)
      parrot_gettingstarted_com_new_P.Saturation_UpperSat;
  } else if (tmp < parrot_gettingstarted_com_new_P.Saturation_LowerSat) {
    /* DataTypeConversion: '<S1>/Cast To Single1' */
    motors_outport[3] = (real32_T)
      parrot_gettingstarted_com_new_P.Saturation_LowerSat;
  } else {
    /* DataTypeConversion: '<S1>/Cast To Single1' */
    motors_outport[3] = (real32_T)tmp;
  }

  /* Outport: '<Root>/Motors' incorporates:
   *  DataTypeConversion: '<S1>/Cast To Single1'
   */
  parrot_gettingstarted_com_new_Y.Motors[0] = motors_outport[0];
  parrot_gettingstarted_com_new_Y.Motors[1] = motors_outport[1];
  parrot_gettingstarted_com_new_Y.Motors[2] = motors_outport[2];
  parrot_gettingstarted_com_new_Y.Motors[3] = motors_outport[3];

  /* ManualSwitch: '<S1>/Manual Switch' */
  if (parrot_gettingstarted_com_new_P.ManualSwitch_CurrentSetting == 1) {
    /* ManualSwitch: '<S1>/Manual Switch' incorporates:
     *  Constant: '<S1>/Constant2'
     */
    flag_outport = parrot_gettingstarted_com_new_P.Constant2_Value;
  } else {
    /* ManualSwitch: '<S1>/Manual Switch' incorporates:
     *  Constant: '<S1>/Constant1'
     */
    flag_outport = parrot_gettingstarted_com_new_P.Constant1_Value;
  }

  /* End of ManualSwitch: '<S1>/Manual Switch' */

  /* Outport: '<Root>/Flag' */
  parrot_gettingstarted_com_new_Y.Flag = flag_outport;

  /* ToWorkspace: '<S1>/To Workspace1' */
  {
    double locTime = parrot_gettingstarted_com_ne_M->Timing.taskTime0;
    ;
    rt_UpdateStructLogVar((StructLogVar *)
                          parrot_gettingstarted_com_ne_DW.ToWorkspace1_PWORK.LoggedData,
                          &locTime, &rtb_MWrench[0]);
  }

  /* SignalConversion generated from: '<S4>/Bus Selector1' incorporates:
   *  Inport: '<Root>/Sensors'
   */
  rtb_opticalFlow_data[0] = sensor_inport.VisionSensors.opticalFlow_data[0];
  rtb_opticalFlow_data[1] = sensor_inport.VisionSensors.opticalFlow_data[1];
  rtb_opticalFlow_data[2] = sensor_inport.VisionSensors.opticalFlow_data[2];

  /* ToWorkspace: '<S1>/To Workspace10' */
  {
    double locTime = parrot_gettingstarted_com_ne_M->Timing.taskTime0;
    ;
    rt_UpdateStructLogVar((StructLogVar *)
                          parrot_gettingstarted_com_ne_DW.ToWorkspace10_PWORK.LoggedData,
                          &locTime, &rtb_opticalFlow_data[1]);
  }

  /* SignalConversion generated from: '<S4>/Bus Selector6' incorporates:
   *  Inport: '<Root>/Sensors'
   */
  rtb_pressure = sensor_inport.HALSensors.HAL_ultrasound_SI.altitude;

  /* ToWorkspace: '<S1>/To Workspace11' */
  {
    double locTime = parrot_gettingstarted_com_ne_M->Timing.taskTime0;
    ;
    rt_UpdateStructLogVar((StructLogVar *)
                          parrot_gettingstarted_com_ne_DW.ToWorkspace11_PWORK.LoggedData,
                          &locTime, &rtb_pressure);
  }

  /* ToWorkspace: '<S1>/To Workspace12' */
  {
    double locTime = parrot_gettingstarted_com_ne_M->Timing.taskTime0;
    ;
    rt_UpdateStructLogVar((StructLogVar *)
                          parrot_gettingstarted_com_ne_DW.ToWorkspace12_PWORK.LoggedData,
                          &locTime, &rtb_opticalFlow_data[0]);
  }

  /* SignalConversion generated from: '<S4>/Bus Selector3' incorporates:
   *  Inport: '<Root>/Sensors'
   */
  rtb_pressure = sensor_inport.HALSensors.HAL_acc_SI.x;

  /* ToWorkspace: '<S1>/To Workspace3' */
  {
    double locTime = parrot_gettingstarted_com_ne_M->Timing.taskTime0;
    ;
    rt_UpdateStructLogVar((StructLogVar *)
                          parrot_gettingstarted_com_ne_DW.ToWorkspace3_PWORK.LoggedData,
                          &locTime, &rtb_pressure);
  }

  /* SignalConversion generated from: '<S4>/Bus Selector3' incorporates:
   *  Inport: '<Root>/Sensors'
   */
  rtb_pressure = sensor_inport.HALSensors.HAL_acc_SI.y;

  /* ToWorkspace: '<S1>/To Workspace4' */
  {
    double locTime = parrot_gettingstarted_com_ne_M->Timing.taskTime0;
    ;
    rt_UpdateStructLogVar((StructLogVar *)
                          parrot_gettingstarted_com_ne_DW.ToWorkspace4_PWORK.LoggedData,
                          &locTime, &rtb_pressure);
  }

  /* SignalConversion generated from: '<S4>/Bus Selector3' incorporates:
   *  Inport: '<Root>/Sensors'
   */
  rtb_pressure = sensor_inport.HALSensors.HAL_acc_SI.z;

  /* ToWorkspace: '<S1>/To Workspace5' */
  {
    double locTime = parrot_gettingstarted_com_ne_M->Timing.taskTime0;
    ;
    rt_UpdateStructLogVar((StructLogVar *)
                          parrot_gettingstarted_com_ne_DW.ToWorkspace5_PWORK.LoggedData,
                          &locTime, &rtb_pressure);
  }

  /* SignalConversion generated from: '<S4>/Bus Selector4' incorporates:
   *  Inport: '<Root>/Sensors'
   */
  rtb_pressure = sensor_inport.HALSensors.HAL_gyro_SI.x;

  /* ToWorkspace: '<S1>/To Workspace6' */
  {
    double locTime = parrot_gettingstarted_com_ne_M->Timing.taskTime0;
    ;
    rt_UpdateStructLogVar((StructLogVar *)
                          parrot_gettingstarted_com_ne_DW.ToWorkspace6_PWORK.LoggedData,
                          &locTime, &rtb_pressure);
  }

  /* SignalConversion generated from: '<S4>/Bus Selector4' incorporates:
   *  Inport: '<Root>/Sensors'
   */
  rtb_pressure = sensor_inport.HALSensors.HAL_gyro_SI.y;

  /* ToWorkspace: '<S1>/To Workspace7' */
  {
    double locTime = parrot_gettingstarted_com_ne_M->Timing.taskTime0;
    ;
    rt_UpdateStructLogVar((StructLogVar *)
                          parrot_gettingstarted_com_ne_DW.ToWorkspace7_PWORK.LoggedData,
                          &locTime, &rtb_pressure);
  }

  /* SignalConversion generated from: '<S4>/Bus Selector4' incorporates:
   *  Inport: '<Root>/Sensors'
   */
  rtb_pressure = sensor_inport.HALSensors.HAL_gyro_SI.z;

  /* ToWorkspace: '<S1>/To Workspace8' */
  {
    double locTime = parrot_gettingstarted_com_ne_M->Timing.taskTime0;
    ;
    rt_UpdateStructLogVar((StructLogVar *)
                          parrot_gettingstarted_com_ne_DW.ToWorkspace8_PWORK.LoggedData,
                          &locTime, &rtb_pressure);
  }

  /* SignalConversion generated from: '<S4>/Bus Selector5' incorporates:
   *  Inport: '<Root>/Sensors'
   */
  rtb_pressure = sensor_inport.HALSensors.HAL_pressure_SI.pressure;

  /* ToWorkspace: '<S1>/To Workspace9' */
  {
    double locTime = parrot_gettingstarted_com_ne_M->Timing.taskTime0;
    ;
    rt_UpdateStructLogVar((StructLogVar *)
                          parrot_gettingstarted_com_ne_DW.ToWorkspace9_PWORK.LoggedData,
                          &locTime, &rtb_pressure);
  }

  /* Matfile logging */
  rt_UpdateTXYLogVars(parrot_gettingstarted_com_ne_M->rtwLogInfo,
                      (&parrot_gettingstarted_com_ne_M->Timing.taskTime0));

  /* signal main to stop simulation */
  {                                    /* Sample time: [0.005s, 0.0s] */
    if ((rtmGetTFinal(parrot_gettingstarted_com_ne_M)!=-1) &&
        !((rtmGetTFinal(parrot_gettingstarted_com_ne_M)-
           parrot_gettingstarted_com_ne_M->Timing.taskTime0) >
          parrot_gettingstarted_com_ne_M->Timing.taskTime0 * (DBL_EPSILON))) {
      rtmSetErrorStatus(parrot_gettingstarted_com_ne_M, "Simulation finished");
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
  if (!(++parrot_gettingstarted_com_ne_M->Timing.clockTick0)) {
    ++parrot_gettingstarted_com_ne_M->Timing.clockTickH0;
  }

  parrot_gettingstarted_com_ne_M->Timing.taskTime0 =
    parrot_gettingstarted_com_ne_M->Timing.clockTick0 *
    parrot_gettingstarted_com_ne_M->Timing.stepSize0 +
    parrot_gettingstarted_com_ne_M->Timing.clockTickH0 *
    parrot_gettingstarted_com_ne_M->Timing.stepSize0 * 4294967296.0;
}

/* Model initialize function */
void parrot_gettingstarted_com_new_initialize(void)
{
  /* Registration code */

  /* initialize non-finites */
  rt_InitInfAndNaN(sizeof(real_T));

  /* initialize real-time model */
  (void) memset((void *)parrot_gettingstarted_com_ne_M, 0,
                sizeof(RT_MODEL_parrot_gettingstarte_T));
  rtmSetTFinal(parrot_gettingstarted_com_ne_M, 100.0);
  parrot_gettingstarted_com_ne_M->Timing.stepSize0 = 0.005;

  /* Setup for data logging */
  {
    static RTWLogInfo rt_DataLoggingInfo;
    rt_DataLoggingInfo.loggingInterval = (NULL);
    parrot_gettingstarted_com_ne_M->rtwLogInfo = &rt_DataLoggingInfo;
  }

  /* Setup for data logging */
  {
    rtliSetLogXSignalInfo(parrot_gettingstarted_com_ne_M->rtwLogInfo, (NULL));
    rtliSetLogXSignalPtrs(parrot_gettingstarted_com_ne_M->rtwLogInfo, (NULL));
    rtliSetLogT(parrot_gettingstarted_com_ne_M->rtwLogInfo, "tout");
    rtliSetLogX(parrot_gettingstarted_com_ne_M->rtwLogInfo, "");
    rtliSetLogXFinal(parrot_gettingstarted_com_ne_M->rtwLogInfo, "");
    rtliSetLogVarNameModifier(parrot_gettingstarted_com_ne_M->rtwLogInfo, "rt_");
    rtliSetLogFormat(parrot_gettingstarted_com_ne_M->rtwLogInfo, 4);
    rtliSetLogMaxRows(parrot_gettingstarted_com_ne_M->rtwLogInfo, 0);
    rtliSetLogDecimation(parrot_gettingstarted_com_ne_M->rtwLogInfo, 1);
    rtliSetLogY(parrot_gettingstarted_com_ne_M->rtwLogInfo, "");
    rtliSetLogYSignalInfo(parrot_gettingstarted_com_ne_M->rtwLogInfo, (NULL));
    rtliSetLogYSignalPtrs(parrot_gettingstarted_com_ne_M->rtwLogInfo, (NULL));
  }

  /* block I/O */

  /* exported global signals */
  motors_outport[0] = 0.0F;
  motors_outport[1] = 0.0F;
  motors_outport[2] = 0.0F;
  motors_outport[3] = 0.0F;
  flag_outport = 0U;

  /* states (dwork) */
  (void) memset((void *)&parrot_gettingstarted_com_ne_DW, 0,
                sizeof(DW_parrot_gettingstarted_com__T));

  /* external inputs */
  (void)memset(&cmd_inport, 0, sizeof(CommandBus));
  (void)memset(&sensor_inport, 0, sizeof(SensorsBus));

  /* external outputs */
  (void) memset((void *)&parrot_gettingstarted_com_new_Y, 0,
                sizeof(ExtY_parrot_gettingstarted_co_T));

  /* Matfile logging */
  rt_StartDataLoggingWithStartTime(parrot_gettingstarted_com_ne_M->rtwLogInfo,
    0.0, rtmGetTFinal(parrot_gettingstarted_com_ne_M),
    parrot_gettingstarted_com_ne_M->Timing.stepSize0, (&rtmGetErrorStatus
    (parrot_gettingstarted_com_ne_M)));

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
      "parrot_gettingstarted_com_new/Flight_Control_System/To Workspace1";
    parrot_gettingstarted_com_ne_DW.ToWorkspace1_PWORK.LoggedData =
      rt_CreateStructLogVar(
      parrot_gettingstarted_com_ne_M->rtwLogInfo,
      0.0,
      rtmGetTFinal(parrot_gettingstarted_com_ne_M),
      parrot_gettingstarted_com_ne_M->Timing.stepSize0,
      (&rtmGetErrorStatus(parrot_gettingstarted_com_ne_M)),
      "mixer_out",
      1,
      0,
      1,
      0.005,
      &rt_ToWksSignalInfo,
      rt_ToWksBlockName);
    if (parrot_gettingstarted_com_ne_DW.ToWorkspace1_PWORK.LoggedData == (NULL))
      return;
  }

  /* SetupRuntimeResources for ToWorkspace: '<S1>/To Workspace10' */
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
      "parrot_gettingstarted_com_new/Flight_Control_System/To Workspace10";
    parrot_gettingstarted_com_ne_DW.ToWorkspace10_PWORK.LoggedData =
      rt_CreateStructLogVar(
      parrot_gettingstarted_com_ne_M->rtwLogInfo,
      0.0,
      rtmGetTFinal(parrot_gettingstarted_com_ne_M),
      parrot_gettingstarted_com_ne_M->Timing.stepSize0,
      (&rtmGetErrorStatus(parrot_gettingstarted_com_ne_M)),
      "v",
      1,
      0,
      1,
      0.005,
      &rt_ToWksSignalInfo,
      rt_ToWksBlockName);
    if (parrot_gettingstarted_com_ne_DW.ToWorkspace10_PWORK.LoggedData == (NULL))
      return;
  }

  /* SetupRuntimeResources for ToWorkspace: '<S1>/To Workspace11' */
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
      "parrot_gettingstarted_com_new/Flight_Control_System/To Workspace11";
    parrot_gettingstarted_com_ne_DW.ToWorkspace11_PWORK.LoggedData =
      rt_CreateStructLogVar(
      parrot_gettingstarted_com_ne_M->rtwLogInfo,
      0.0,
      rtmGetTFinal(parrot_gettingstarted_com_ne_M),
      parrot_gettingstarted_com_ne_M->Timing.stepSize0,
      (&rtmGetErrorStatus(parrot_gettingstarted_com_ne_M)),
      "PbZ",
      1,
      0,
      1,
      0.005,
      &rt_ToWksSignalInfo,
      rt_ToWksBlockName);
    if (parrot_gettingstarted_com_ne_DW.ToWorkspace11_PWORK.LoggedData == (NULL))
      return;
  }

  /* SetupRuntimeResources for ToWorkspace: '<S1>/To Workspace12' */
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
      "parrot_gettingstarted_com_new/Flight_Control_System/To Workspace12";
    parrot_gettingstarted_com_ne_DW.ToWorkspace12_PWORK.LoggedData =
      rt_CreateStructLogVar(
      parrot_gettingstarted_com_ne_M->rtwLogInfo,
      0.0,
      rtmGetTFinal(parrot_gettingstarted_com_ne_M),
      parrot_gettingstarted_com_ne_M->Timing.stepSize0,
      (&rtmGetErrorStatus(parrot_gettingstarted_com_ne_M)),
      "u",
      1,
      0,
      1,
      0.005,
      &rt_ToWksSignalInfo,
      rt_ToWksBlockName);
    if (parrot_gettingstarted_com_ne_DW.ToWorkspace12_PWORK.LoggedData == (NULL))
      return;
  }

  /* SetupRuntimeResources for ToWorkspace: '<S1>/To Workspace3' */
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
      "parrot_gettingstarted_com_new/Flight_Control_System/To Workspace3";
    parrot_gettingstarted_com_ne_DW.ToWorkspace3_PWORK.LoggedData =
      rt_CreateStructLogVar(
      parrot_gettingstarted_com_ne_M->rtwLogInfo,
      0.0,
      rtmGetTFinal(parrot_gettingstarted_com_ne_M),
      parrot_gettingstarted_com_ne_M->Timing.stepSize0,
      (&rtmGetErrorStatus(parrot_gettingstarted_com_ne_M)),
      "a_x",
      1,
      0,
      1,
      0.005,
      &rt_ToWksSignalInfo,
      rt_ToWksBlockName);
    if (parrot_gettingstarted_com_ne_DW.ToWorkspace3_PWORK.LoggedData == (NULL))
      return;
  }

  /* SetupRuntimeResources for ToWorkspace: '<S1>/To Workspace4' */
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
      "parrot_gettingstarted_com_new/Flight_Control_System/To Workspace4";
    parrot_gettingstarted_com_ne_DW.ToWorkspace4_PWORK.LoggedData =
      rt_CreateStructLogVar(
      parrot_gettingstarted_com_ne_M->rtwLogInfo,
      0.0,
      rtmGetTFinal(parrot_gettingstarted_com_ne_M),
      parrot_gettingstarted_com_ne_M->Timing.stepSize0,
      (&rtmGetErrorStatus(parrot_gettingstarted_com_ne_M)),
      "a_y",
      1,
      0,
      1,
      0.005,
      &rt_ToWksSignalInfo,
      rt_ToWksBlockName);
    if (parrot_gettingstarted_com_ne_DW.ToWorkspace4_PWORK.LoggedData == (NULL))
      return;
  }

  /* SetupRuntimeResources for ToWorkspace: '<S1>/To Workspace5' */
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
      "parrot_gettingstarted_com_new/Flight_Control_System/To Workspace5";
    parrot_gettingstarted_com_ne_DW.ToWorkspace5_PWORK.LoggedData =
      rt_CreateStructLogVar(
      parrot_gettingstarted_com_ne_M->rtwLogInfo,
      0.0,
      rtmGetTFinal(parrot_gettingstarted_com_ne_M),
      parrot_gettingstarted_com_ne_M->Timing.stepSize0,
      (&rtmGetErrorStatus(parrot_gettingstarted_com_ne_M)),
      "a_z",
      1,
      0,
      1,
      0.005,
      &rt_ToWksSignalInfo,
      rt_ToWksBlockName);
    if (parrot_gettingstarted_com_ne_DW.ToWorkspace5_PWORK.LoggedData == (NULL))
      return;
  }

  /* SetupRuntimeResources for ToWorkspace: '<S1>/To Workspace6' */
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
      "parrot_gettingstarted_com_new/Flight_Control_System/To Workspace6";
    parrot_gettingstarted_com_ne_DW.ToWorkspace6_PWORK.LoggedData =
      rt_CreateStructLogVar(
      parrot_gettingstarted_com_ne_M->rtwLogInfo,
      0.0,
      rtmGetTFinal(parrot_gettingstarted_com_ne_M),
      parrot_gettingstarted_com_ne_M->Timing.stepSize0,
      (&rtmGetErrorStatus(parrot_gettingstarted_com_ne_M)),
      "p",
      1,
      0,
      1,
      0.005,
      &rt_ToWksSignalInfo,
      rt_ToWksBlockName);
    if (parrot_gettingstarted_com_ne_DW.ToWorkspace6_PWORK.LoggedData == (NULL))
      return;
  }

  /* SetupRuntimeResources for ToWorkspace: '<S1>/To Workspace7' */
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
      "parrot_gettingstarted_com_new/Flight_Control_System/To Workspace7";
    parrot_gettingstarted_com_ne_DW.ToWorkspace7_PWORK.LoggedData =
      rt_CreateStructLogVar(
      parrot_gettingstarted_com_ne_M->rtwLogInfo,
      0.0,
      rtmGetTFinal(parrot_gettingstarted_com_ne_M),
      parrot_gettingstarted_com_ne_M->Timing.stepSize0,
      (&rtmGetErrorStatus(parrot_gettingstarted_com_ne_M)),
      "q",
      1,
      0,
      1,
      0.005,
      &rt_ToWksSignalInfo,
      rt_ToWksBlockName);
    if (parrot_gettingstarted_com_ne_DW.ToWorkspace7_PWORK.LoggedData == (NULL))
      return;
  }

  /* SetupRuntimeResources for ToWorkspace: '<S1>/To Workspace8' */
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
      "parrot_gettingstarted_com_new/Flight_Control_System/To Workspace8";
    parrot_gettingstarted_com_ne_DW.ToWorkspace8_PWORK.LoggedData =
      rt_CreateStructLogVar(
      parrot_gettingstarted_com_ne_M->rtwLogInfo,
      0.0,
      rtmGetTFinal(parrot_gettingstarted_com_ne_M),
      parrot_gettingstarted_com_ne_M->Timing.stepSize0,
      (&rtmGetErrorStatus(parrot_gettingstarted_com_ne_M)),
      "r",
      1,
      0,
      1,
      0.005,
      &rt_ToWksSignalInfo,
      rt_ToWksBlockName);
    if (parrot_gettingstarted_com_ne_DW.ToWorkspace8_PWORK.LoggedData == (NULL))
      return;
  }

  /* SetupRuntimeResources for ToWorkspace: '<S1>/To Workspace9' */
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
      "parrot_gettingstarted_com_new/Flight_Control_System/To Workspace9";
    parrot_gettingstarted_com_ne_DW.ToWorkspace9_PWORK.LoggedData =
      rt_CreateStructLogVar(
      parrot_gettingstarted_com_ne_M->rtwLogInfo,
      0.0,
      rtmGetTFinal(parrot_gettingstarted_com_ne_M),
      parrot_gettingstarted_com_ne_M->Timing.stepSize0,
      (&rtmGetErrorStatus(parrot_gettingstarted_com_ne_M)),
      "pressure",
      1,
      0,
      1,
      0.005,
      &rt_ToWksSignalInfo,
      rt_ToWksBlockName);
    if (parrot_gettingstarted_com_ne_DW.ToWorkspace9_PWORK.LoggedData == (NULL))
      return;
  }
}

/* Model terminate function */
void parrot_gettingstarted_com_new_terminate(void)
{
  /* (no terminate code required) */
}
