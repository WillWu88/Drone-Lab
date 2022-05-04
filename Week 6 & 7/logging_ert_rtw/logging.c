/*
 * logging.c
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

/* Exported block signals */
CommandBus cmd_inport;                 /* '<Root>/AC cmd' */
SensorsBus sensor_inport;              /* '<Root>/Sensors' */
real32_T motors_outport[4];            /* '<S1>/Saturation1' */
uint8_T flag_outport;                  /* '<S1>/Manual Switch' */

/* Block states (default storage) */
DW_logging_T logging_DW;

/* External outputs (root outports fed by signals with default storage) */
ExtY_logging_T logging_Y;

/* Real-time model */
static RT_MODEL_logging_T logging_M_;
RT_MODEL_logging_T *const logging_M = &logging_M_;

/* Model step function */
void logging_step(void)
{
  real_T rtb_PulseGenerator1;
  real_T rtb_PulseGenerator2;
  real32_T rtb_opticalFlow_data[3];
  real32_T rtb_altitude;

  /* DiscretePulseGenerator: '<S1>/Pulse Generator1' */
  rtb_PulseGenerator1 = (logging_DW.clockTickCounter <
    logging_P.PulseGenerator1_Duty) && (logging_DW.clockTickCounter >= 0) ?
    logging_P.PulseGenerator1_Amp : 0.0;
  if (logging_DW.clockTickCounter >= logging_P.PulseGenerator1_Period - 1.0) {
    logging_DW.clockTickCounter = 0;
  } else {
    logging_DW.clockTickCounter++;
  }

  /* End of DiscretePulseGenerator: '<S1>/Pulse Generator1' */

  /* DiscretePulseGenerator: '<S1>/Pulse Generator2' */
  rtb_PulseGenerator2 = (logging_DW.clockTickCounter_n <
    logging_P.PulseGenerator2_Duty) && (logging_DW.clockTickCounter_n >= 0) ?
    logging_P.PulseGenerator2_Amp : 0.0;
  if (logging_DW.clockTickCounter_n >= logging_P.PulseGenerator2_Period - 1.0) {
    logging_DW.clockTickCounter_n = 0;
  } else {
    logging_DW.clockTickCounter_n++;
  }

  /* End of DiscretePulseGenerator: '<S1>/Pulse Generator2' */

  /* Saturate: '<S1>/Saturation1' incorporates:
   *  SignalConversion generated from: '<S1>/Vector Concatenate1'
   */
  if (rtb_PulseGenerator1 > logging_P.Saturation1_UpperSat) {
    /* Saturate: '<S1>/Saturation1' */
    motors_outport[0] = logging_P.Saturation1_UpperSat;
  } else if (rtb_PulseGenerator1 < logging_P.Saturation1_LowerSat) {
    /* Saturate: '<S1>/Saturation1' */
    motors_outport[0] = logging_P.Saturation1_LowerSat;
  } else {
    /* Saturate: '<S1>/Saturation1' */
    motors_outport[0] = (real32_T)rtb_PulseGenerator1;
  }

  /* Outport: '<Root>/Motors' incorporates:
   *  Saturate: '<S1>/Saturation1'
   */
  logging_Y.Motors[0] = motors_outport[0];

  /* Saturate: '<S1>/Saturation1' incorporates:
   *  SignalConversion generated from: '<S1>/Vector Concatenate1'
   */
  if (rtb_PulseGenerator2 > logging_P.Saturation1_UpperSat) {
    /* Saturate: '<S1>/Saturation1' */
    motors_outport[1] = logging_P.Saturation1_UpperSat;
  } else if (rtb_PulseGenerator2 < logging_P.Saturation1_LowerSat) {
    /* Saturate: '<S1>/Saturation1' */
    motors_outport[1] = logging_P.Saturation1_LowerSat;
  } else {
    /* Saturate: '<S1>/Saturation1' */
    motors_outport[1] = (real32_T)rtb_PulseGenerator2;
  }

  /* Outport: '<Root>/Motors' incorporates:
   *  Saturate: '<S1>/Saturation1'
   */
  logging_Y.Motors[1] = motors_outport[1];

  /* Saturate: '<S1>/Saturation1' incorporates:
   *  SignalConversion generated from: '<S1>/Vector Concatenate1'
   */
  if (rtb_PulseGenerator1 > logging_P.Saturation1_UpperSat) {
    /* Saturate: '<S1>/Saturation1' */
    motors_outport[2] = logging_P.Saturation1_UpperSat;
  } else if (rtb_PulseGenerator1 < logging_P.Saturation1_LowerSat) {
    /* Saturate: '<S1>/Saturation1' */
    motors_outport[2] = logging_P.Saturation1_LowerSat;
  } else {
    /* Saturate: '<S1>/Saturation1' */
    motors_outport[2] = (real32_T)rtb_PulseGenerator1;
  }

  /* Outport: '<Root>/Motors' incorporates:
   *  Saturate: '<S1>/Saturation1'
   */
  logging_Y.Motors[2] = motors_outport[2];

  /* Saturate: '<S1>/Saturation1' incorporates:
   *  SignalConversion generated from: '<S1>/Vector Concatenate1'
   */
  if (rtb_PulseGenerator2 > logging_P.Saturation1_UpperSat) {
    /* Saturate: '<S1>/Saturation1' */
    motors_outport[3] = logging_P.Saturation1_UpperSat;
  } else if (rtb_PulseGenerator2 < logging_P.Saturation1_LowerSat) {
    /* Saturate: '<S1>/Saturation1' */
    motors_outport[3] = logging_P.Saturation1_LowerSat;
  } else {
    /* Saturate: '<S1>/Saturation1' */
    motors_outport[3] = (real32_T)rtb_PulseGenerator2;
  }

  /* Outport: '<Root>/Motors' incorporates:
   *  Saturate: '<S1>/Saturation1'
   */
  logging_Y.Motors[3] = motors_outport[3];

  /* ManualSwitch: '<S1>/Manual Switch' */
  if (logging_P.ManualSwitch_CurrentSetting == 1) {
    /* ManualSwitch: '<S1>/Manual Switch' incorporates:
     *  Constant: '<S1>/Constant2'
     */
    flag_outport = logging_P.Constant2_Value;
  } else {
    /* ManualSwitch: '<S1>/Manual Switch' incorporates:
     *  Constant: '<S1>/Constant1'
     */
    flag_outport = logging_P.Constant1_Value;
  }

  /* End of ManualSwitch: '<S1>/Manual Switch' */

  /* Outport: '<Root>/Flag' */
  logging_Y.Flag = flag_outport;

  /* SignalConversion generated from: '<S2>/Bus Selector3' incorporates:
   *  Inport: '<Root>/Sensors'
   */
  rtb_altitude = sensor_inport.HALSensors.HAL_acc_SI.x;

  /* ToWorkspace: '<S1>/To Workspace1' */
  {
    double locTime = logging_M->Timing.taskTime0;
    ;
    rt_UpdateStructLogVar((StructLogVar *)
                          logging_DW.ToWorkspace1_PWORK.LoggedData, &locTime,
                          &rtb_altitude);
  }

  /* SignalConversion generated from: '<S2>/Bus Selector1' incorporates:
   *  Inport: '<Root>/Sensors'
   */
  rtb_opticalFlow_data[0] = sensor_inport.VisionSensors.opticalFlow_data[0];
  rtb_opticalFlow_data[1] = sensor_inport.VisionSensors.opticalFlow_data[1];
  rtb_opticalFlow_data[2] = sensor_inport.VisionSensors.opticalFlow_data[2];

  /* ToWorkspace: '<S1>/To Workspace10' */
  {
    double locTime = logging_M->Timing.taskTime0;
    ;
    rt_UpdateStructLogVar((StructLogVar *)
                          logging_DW.ToWorkspace10_PWORK.LoggedData, &locTime,
                          &rtb_opticalFlow_data[1]);
  }

  /* SignalConversion generated from: '<S2>/Bus Selector3' incorporates:
   *  Inport: '<Root>/Sensors'
   */
  rtb_altitude = sensor_inport.HALSensors.HAL_acc_SI.y;

  /* ToWorkspace: '<S1>/To Workspace2' */
  {
    double locTime = logging_M->Timing.taskTime0;
    ;
    rt_UpdateStructLogVar((StructLogVar *)
                          logging_DW.ToWorkspace2_PWORK.LoggedData, &locTime,
                          &rtb_altitude);
  }

  /* SignalConversion generated from: '<S2>/Bus Selector3' incorporates:
   *  Inport: '<Root>/Sensors'
   */
  rtb_altitude = sensor_inport.HALSensors.HAL_acc_SI.z;

  /* ToWorkspace: '<S1>/To Workspace3' */
  {
    double locTime = logging_M->Timing.taskTime0;
    ;
    rt_UpdateStructLogVar((StructLogVar *)
                          logging_DW.ToWorkspace3_PWORK.LoggedData, &locTime,
                          &rtb_altitude);
  }

  /* SignalConversion generated from: '<S2>/Bus Selector4' incorporates:
   *  Inport: '<Root>/Sensors'
   */
  rtb_altitude = sensor_inport.HALSensors.HAL_gyro_SI.x;

  /* ToWorkspace: '<S1>/To Workspace4' */
  {
    double locTime = logging_M->Timing.taskTime0;
    ;
    rt_UpdateStructLogVar((StructLogVar *)
                          logging_DW.ToWorkspace4_PWORK.LoggedData, &locTime,
                          &rtb_altitude);
  }

  /* SignalConversion generated from: '<S2>/Bus Selector4' incorporates:
   *  Inport: '<Root>/Sensors'
   */
  rtb_altitude = sensor_inport.HALSensors.HAL_gyro_SI.y;

  /* ToWorkspace: '<S1>/To Workspace5' */
  {
    double locTime = logging_M->Timing.taskTime0;
    ;
    rt_UpdateStructLogVar((StructLogVar *)
                          logging_DW.ToWorkspace5_PWORK.LoggedData, &locTime,
                          &rtb_altitude);
  }

  /* SignalConversion generated from: '<S2>/Bus Selector4' incorporates:
   *  Inport: '<Root>/Sensors'
   */
  rtb_altitude = sensor_inport.HALSensors.HAL_gyro_SI.z;

  /* ToWorkspace: '<S1>/To Workspace6' */
  {
    double locTime = logging_M->Timing.taskTime0;
    ;
    rt_UpdateStructLogVar((StructLogVar *)
                          logging_DW.ToWorkspace6_PWORK.LoggedData, &locTime,
                          &rtb_altitude);
  }

  /* SignalConversion generated from: '<S2>/Bus Selector5' incorporates:
   *  Inport: '<Root>/Sensors'
   */
  rtb_altitude = sensor_inport.HALSensors.HAL_pressure_SI.pressure;

  /* ToWorkspace: '<S1>/To Workspace7' */
  {
    double locTime = logging_M->Timing.taskTime0;
    ;
    rt_UpdateStructLogVar((StructLogVar *)
                          logging_DW.ToWorkspace7_PWORK.LoggedData, &locTime,
                          &rtb_altitude);
  }

  /* SignalConversion generated from: '<S2>/Bus Selector6' incorporates:
   *  Inport: '<Root>/Sensors'
   */
  rtb_altitude = sensor_inport.HALSensors.HAL_ultrasound_SI.altitude;

  /* ToWorkspace: '<S1>/To Workspace8' */
  {
    double locTime = logging_M->Timing.taskTime0;
    ;
    rt_UpdateStructLogVar((StructLogVar *)
                          logging_DW.ToWorkspace8_PWORK.LoggedData, &locTime,
                          &rtb_altitude);
  }

  /* ToWorkspace: '<S1>/To Workspace9' */
  {
    double locTime = logging_M->Timing.taskTime0;
    ;
    rt_UpdateStructLogVar((StructLogVar *)
                          logging_DW.ToWorkspace9_PWORK.LoggedData, &locTime,
                          &rtb_opticalFlow_data[0]);
  }

  /* Matfile logging */
  rt_UpdateTXYLogVars(logging_M->rtwLogInfo, (&logging_M->Timing.taskTime0));

  /* signal main to stop simulation */
  {                                    /* Sample time: [0.005s, 0.0s] */
    if ((rtmGetTFinal(logging_M)!=-1) &&
        !((rtmGetTFinal(logging_M)-logging_M->Timing.taskTime0) >
          logging_M->Timing.taskTime0 * (DBL_EPSILON))) {
      rtmSetErrorStatus(logging_M, "Simulation finished");
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
  if (!(++logging_M->Timing.clockTick0)) {
    ++logging_M->Timing.clockTickH0;
  }

  logging_M->Timing.taskTime0 = logging_M->Timing.clockTick0 *
    logging_M->Timing.stepSize0 + logging_M->Timing.clockTickH0 *
    logging_M->Timing.stepSize0 * 4294967296.0;
}

/* Model initialize function */
void logging_initialize(void)
{
  /* Registration code */

  /* initialize non-finites */
  rt_InitInfAndNaN(sizeof(real_T));

  /* initialize real-time model */
  (void) memset((void *)logging_M, 0,
                sizeof(RT_MODEL_logging_T));
  rtmSetTFinal(logging_M, 100.0);
  logging_M->Timing.stepSize0 = 0.005;

  /* Setup for data logging */
  {
    static RTWLogInfo rt_DataLoggingInfo;
    rt_DataLoggingInfo.loggingInterval = (NULL);
    logging_M->rtwLogInfo = &rt_DataLoggingInfo;
  }

  /* Setup for data logging */
  {
    rtliSetLogXSignalInfo(logging_M->rtwLogInfo, (NULL));
    rtliSetLogXSignalPtrs(logging_M->rtwLogInfo, (NULL));
    rtliSetLogT(logging_M->rtwLogInfo, "tout");
    rtliSetLogX(logging_M->rtwLogInfo, "");
    rtliSetLogXFinal(logging_M->rtwLogInfo, "");
    rtliSetLogVarNameModifier(logging_M->rtwLogInfo, "rt_");
    rtliSetLogFormat(logging_M->rtwLogInfo, 4);
    rtliSetLogMaxRows(logging_M->rtwLogInfo, 0);
    rtliSetLogDecimation(logging_M->rtwLogInfo, 1);
    rtliSetLogY(logging_M->rtwLogInfo, "");
    rtliSetLogYSignalInfo(logging_M->rtwLogInfo, (NULL));
    rtliSetLogYSignalPtrs(logging_M->rtwLogInfo, (NULL));
  }

  /* block I/O */

  /* exported global signals */
  motors_outport[0] = 0.0F;
  motors_outport[1] = 0.0F;
  motors_outport[2] = 0.0F;
  motors_outport[3] = 0.0F;
  flag_outport = 0U;

  /* states (dwork) */
  (void) memset((void *)&logging_DW, 0,
                sizeof(DW_logging_T));

  /* external inputs */
  (void)memset(&cmd_inport, 0, sizeof(CommandBus));
  (void)memset(&sensor_inport, 0, sizeof(SensorsBus));

  /* external outputs */
  (void) memset((void *)&logging_Y, 0,
                sizeof(ExtY_logging_T));

  /* Matfile logging */
  rt_StartDataLoggingWithStartTime(logging_M->rtwLogInfo, 0.0, rtmGetTFinal
    (logging_M), logging_M->Timing.stepSize0, (&rtmGetErrorStatus(logging_M)));

  /* SetupRuntimeResources for ToWorkspace: '<S1>/To Workspace1' */
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
      "logging/Flight_Control_System/To Workspace1";
    logging_DW.ToWorkspace1_PWORK.LoggedData = rt_CreateStructLogVar(
      logging_M->rtwLogInfo,
      0.0,
      rtmGetTFinal(logging_M),
      logging_M->Timing.stepSize0,
      (&rtmGetErrorStatus(logging_M)),
      "a_x",
      1,
      0,
      1,
      0.005,
      &rt_ToWksSignalInfo,
      rt_ToWksBlockName);
    if (logging_DW.ToWorkspace1_PWORK.LoggedData == (NULL))
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
      "logging/Flight_Control_System/To Workspace10";
    logging_DW.ToWorkspace10_PWORK.LoggedData = rt_CreateStructLogVar(
      logging_M->rtwLogInfo,
      0.0,
      rtmGetTFinal(logging_M),
      logging_M->Timing.stepSize0,
      (&rtmGetErrorStatus(logging_M)),
      "v",
      1,
      0,
      1,
      0.005,
      &rt_ToWksSignalInfo,
      rt_ToWksBlockName);
    if (logging_DW.ToWorkspace10_PWORK.LoggedData == (NULL))
      return;
  }

  /* SetupRuntimeResources for ToWorkspace: '<S1>/To Workspace2' */
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
      "logging/Flight_Control_System/To Workspace2";
    logging_DW.ToWorkspace2_PWORK.LoggedData = rt_CreateStructLogVar(
      logging_M->rtwLogInfo,
      0.0,
      rtmGetTFinal(logging_M),
      logging_M->Timing.stepSize0,
      (&rtmGetErrorStatus(logging_M)),
      "a_y",
      1,
      0,
      1,
      0.005,
      &rt_ToWksSignalInfo,
      rt_ToWksBlockName);
    if (logging_DW.ToWorkspace2_PWORK.LoggedData == (NULL))
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
      "logging/Flight_Control_System/To Workspace3";
    logging_DW.ToWorkspace3_PWORK.LoggedData = rt_CreateStructLogVar(
      logging_M->rtwLogInfo,
      0.0,
      rtmGetTFinal(logging_M),
      logging_M->Timing.stepSize0,
      (&rtmGetErrorStatus(logging_M)),
      "a_z",
      1,
      0,
      1,
      0.005,
      &rt_ToWksSignalInfo,
      rt_ToWksBlockName);
    if (logging_DW.ToWorkspace3_PWORK.LoggedData == (NULL))
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
      "logging/Flight_Control_System/To Workspace4";
    logging_DW.ToWorkspace4_PWORK.LoggedData = rt_CreateStructLogVar(
      logging_M->rtwLogInfo,
      0.0,
      rtmGetTFinal(logging_M),
      logging_M->Timing.stepSize0,
      (&rtmGetErrorStatus(logging_M)),
      "p",
      1,
      0,
      1,
      0.005,
      &rt_ToWksSignalInfo,
      rt_ToWksBlockName);
    if (logging_DW.ToWorkspace4_PWORK.LoggedData == (NULL))
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
      "logging/Flight_Control_System/To Workspace5";
    logging_DW.ToWorkspace5_PWORK.LoggedData = rt_CreateStructLogVar(
      logging_M->rtwLogInfo,
      0.0,
      rtmGetTFinal(logging_M),
      logging_M->Timing.stepSize0,
      (&rtmGetErrorStatus(logging_M)),
      "q",
      1,
      0,
      1,
      0.005,
      &rt_ToWksSignalInfo,
      rt_ToWksBlockName);
    if (logging_DW.ToWorkspace5_PWORK.LoggedData == (NULL))
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
      "logging/Flight_Control_System/To Workspace6";
    logging_DW.ToWorkspace6_PWORK.LoggedData = rt_CreateStructLogVar(
      logging_M->rtwLogInfo,
      0.0,
      rtmGetTFinal(logging_M),
      logging_M->Timing.stepSize0,
      (&rtmGetErrorStatus(logging_M)),
      "r",
      1,
      0,
      1,
      0.005,
      &rt_ToWksSignalInfo,
      rt_ToWksBlockName);
    if (logging_DW.ToWorkspace6_PWORK.LoggedData == (NULL))
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
      "logging/Flight_Control_System/To Workspace7";
    logging_DW.ToWorkspace7_PWORK.LoggedData = rt_CreateStructLogVar(
      logging_M->rtwLogInfo,
      0.0,
      rtmGetTFinal(logging_M),
      logging_M->Timing.stepSize0,
      (&rtmGetErrorStatus(logging_M)),
      "pressure",
      1,
      0,
      1,
      0.005,
      &rt_ToWksSignalInfo,
      rt_ToWksBlockName);
    if (logging_DW.ToWorkspace7_PWORK.LoggedData == (NULL))
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
      "logging/Flight_Control_System/To Workspace8";
    logging_DW.ToWorkspace8_PWORK.LoggedData = rt_CreateStructLogVar(
      logging_M->rtwLogInfo,
      0.0,
      rtmGetTFinal(logging_M),
      logging_M->Timing.stepSize0,
      (&rtmGetErrorStatus(logging_M)),
      "PbZ",
      1,
      0,
      1,
      0.005,
      &rt_ToWksSignalInfo,
      rt_ToWksBlockName);
    if (logging_DW.ToWorkspace8_PWORK.LoggedData == (NULL))
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
      "logging/Flight_Control_System/To Workspace9";
    logging_DW.ToWorkspace9_PWORK.LoggedData = rt_CreateStructLogVar(
      logging_M->rtwLogInfo,
      0.0,
      rtmGetTFinal(logging_M),
      logging_M->Timing.stepSize0,
      (&rtmGetErrorStatus(logging_M)),
      "u",
      1,
      0,
      1,
      0.005,
      &rt_ToWksSignalInfo,
      rt_ToWksBlockName);
    if (logging_DW.ToWorkspace9_PWORK.LoggedData == (NULL))
      return;
  }

  /* InitializeConditions for DiscretePulseGenerator: '<S1>/Pulse Generator1' */
  logging_DW.clockTickCounter = 0;

  /* InitializeConditions for DiscretePulseGenerator: '<S1>/Pulse Generator2' */
  logging_DW.clockTickCounter_n = -400;
}

/* Model terminate function */
void logging_terminate(void)
{
  /* (no terminate code required) */
}
