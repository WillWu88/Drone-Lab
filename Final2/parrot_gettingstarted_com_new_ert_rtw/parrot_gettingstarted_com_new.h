/*
 * parrot_gettingstarted_com_new.h
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

#ifndef RTW_HEADER_parrot_gettingstarted_com_new_h_
#define RTW_HEADER_parrot_gettingstarted_com_new_h_
#include <stddef.h>
#include <string.h>
#include <float.h>
#ifndef parrot_gettingstarted_com_new_COMMON_INCLUDES_
#define parrot_gettingstarted_com_new_COMMON_INCLUDES_
#include <stdlib.h>
#include "rtwtypes.h"
#include "rtw_continuous.h"
#include "rtw_solver.h"
#include "rt_logging.h"
#endif                      /* parrot_gettingstarted_com_new_COMMON_INCLUDES_ */

#include "parrot_gettingstarted_com_new_types.h"

/* Shared type includes */
#include "multiword_types.h"
#include "MW_target_hardware_resources.h"
#include "rt_nonfinite.h"

/* Macros for accessing real-time model data structure */
#ifndef rtmGetFinalTime
#define rtmGetFinalTime(rtm)           ((rtm)->Timing.tFinal)
#endif

#ifndef rtmGetRTWLogInfo
#define rtmGetRTWLogInfo(rtm)          ((rtm)->rtwLogInfo)
#endif

#ifndef rtmGetErrorStatus
#define rtmGetErrorStatus(rtm)         ((rtm)->errorStatus)
#endif

#ifndef rtmSetErrorStatus
#define rtmSetErrorStatus(rtm, val)    ((rtm)->errorStatus = (val))
#endif

#ifndef rtmGetStopRequested
#define rtmGetStopRequested(rtm)       ((rtm)->Timing.stopRequestedFlag)
#endif

#ifndef rtmSetStopRequested
#define rtmSetStopRequested(rtm, val)  ((rtm)->Timing.stopRequestedFlag = (val))
#endif

#ifndef rtmGetStopRequestedPtr
#define rtmGetStopRequestedPtr(rtm)    (&((rtm)->Timing.stopRequestedFlag))
#endif

#ifndef rtmGetT
#define rtmGetT(rtm)                   ((rtm)->Timing.taskTime0)
#endif

#ifndef rtmGetTFinal
#define rtmGetTFinal(rtm)              ((rtm)->Timing.tFinal)
#endif

#ifndef rtmGetTPtr
#define rtmGetTPtr(rtm)                (&(rtm)->Timing.taskTime0)
#endif

#define parrot_gettingstarted_com_new_M (parrot_gettingstarted_com_ne_M)

/* Block states (default storage) for system '<Root>' */
typedef struct {
  struct {
    void *LoggedData;
  } ToWorkspace1_PWORK;                /* '<S1>/To Workspace1' */

  struct {
    void *LoggedData;
  } ToWorkspace10_PWORK;               /* '<S1>/To Workspace10' */

  struct {
    void *LoggedData;
  } ToWorkspace11_PWORK;               /* '<S1>/To Workspace11' */

  struct {
    void *LoggedData;
  } ToWorkspace12_PWORK;               /* '<S1>/To Workspace12' */

  struct {
    void *LoggedData;
  } ToWorkspace3_PWORK;                /* '<S1>/To Workspace3' */

  struct {
    void *LoggedData;
  } ToWorkspace4_PWORK;                /* '<S1>/To Workspace4' */

  struct {
    void *LoggedData;
  } ToWorkspace5_PWORK;                /* '<S1>/To Workspace5' */

  struct {
    void *LoggedData;
  } ToWorkspace6_PWORK;                /* '<S1>/To Workspace6' */

  struct {
    void *LoggedData;
  } ToWorkspace7_PWORK;                /* '<S1>/To Workspace7' */

  struct {
    void *LoggedData;
  } ToWorkspace8_PWORK;                /* '<S1>/To Workspace8' */

  struct {
    void *LoggedData;
  } ToWorkspace9_PWORK;                /* '<S1>/To Workspace9' */
} DW_parrot_gettingstarted_com__T;

/* External outputs (root outports fed by signals with default storage) */
typedef struct {
  real32_T Motors[4];                  /* '<Root>/Motors' */
  uint8_T Flag;                        /* '<Root>/Flag' */
} ExtY_parrot_gettingstarted_co_T;

/* Parameters (default storage) */
struct P_parrot_gettingstarted_com_n_T_ {
  real_T Mixer[16];                    /* Variable: Mixer
                                        * Referenced by: '<S1>/Constant'
                                        */
  real_T g;                            /* Variable: g
                                        * Referenced by: '<S1>/Constant8'
                                        */
  real_T m;                            /* Variable: m
                                        * Referenced by: '<S1>/Constant8'
                                        */
  real_T Constant3_Value;              /* Expression: 330
                                        * Referenced by: '<S1>/Constant3'
                                        */
  real_T Constant4_Value;              /* Expression: -330
                                        * Referenced by: '<S1>/Constant4'
                                        */
  real_T Constant5_Value;              /* Expression: 292
                                        * Referenced by: '<S1>/Constant5'
                                        */
  real_T Constant6_Value;              /* Expression: -292
                                        * Referenced by: '<S1>/Constant6'
                                        */
  real_T Constant7_Value;              /* Expression: 0
                                        * Referenced by: '<S1>/Constant7'
                                        */
  real_T Saturation_UpperSat;          /* Expression: 500
                                        * Referenced by: '<S1>/Saturation'
                                        */
  real_T Saturation_LowerSat;          /* Expression: -500
                                        * Referenced by: '<S1>/Saturation'
                                        */
  uint8_T Constant2_Value;             /* Computed Parameter: Constant2_Value
                                        * Referenced by: '<S1>/Constant2'
                                        */
  uint8_T Constant1_Value;             /* Computed Parameter: Constant1_Value
                                        * Referenced by: '<S1>/Constant1'
                                        */
  uint8_T ManualSwitch_CurrentSetting;
                              /* Computed Parameter: ManualSwitch_CurrentSetting
                               * Referenced by: '<S1>/Manual Switch'
                               */
};

/* Real-time Model Data Structure */
struct tag_RTM_parrot_gettingstarted_T {
  const char_T *errorStatus;
  RTWLogInfo *rtwLogInfo;

  /*
   * Timing:
   * The following substructure contains information regarding
   * the timing information for the model.
   */
  struct {
    time_T taskTime0;
    uint32_T clockTick0;
    uint32_T clockTickH0;
    time_T stepSize0;
    time_T tFinal;
    boolean_T stopRequestedFlag;
  } Timing;
};

/* Block parameters (default storage) */
extern P_parrot_gettingstarted_com_n_T parrot_gettingstarted_com_new_P;

/* Block states (default storage) */
extern DW_parrot_gettingstarted_com__T parrot_gettingstarted_com_ne_DW;

/* External outputs (root outports fed by signals with default storage) */
extern ExtY_parrot_gettingstarted_co_T parrot_gettingstarted_com_new_Y;

/*
 * Exported Global Signals
 *
 * Note: Exported global signals are block signals with an exported global
 * storage class designation.  Code generation will declare the memory for
 * these signals and export their symbols.
 *
 */
extern CommandBus cmd_inport;          /* '<Root>/AC cmd' */
extern SensorsBus sensor_inport;       /* '<Root>/Sensors' */
extern real32_T motors_outport[4];     /* '<S1>/Cast To Single1' */
extern uint8_T flag_outport;           /* '<S1>/Manual Switch' */

/* Model entry point functions */
extern void parrot_gettingstarted_com_new_initialize(void);
extern void parrot_gettingstarted_com_new_step(void);
extern void parrot_gettingstarted_com_new_terminate(void);

/* Real-time Model object */
extern RT_MODEL_parrot_gettingstarte_T *const parrot_gettingstarted_com_ne_M;
extern volatile boolean_T stopRequested;
extern volatile boolean_T runModel;

/*-
 * These blocks were eliminated from the model due to optimizations:
 *
 * Block '<S1>/Altitude' : Unused code path elimination
 * Block '<S2>/Atan' : Unused code path elimination
 * Block '<S2>/Cast To Double1' : Unused code path elimination
 * Block '<S2>/Cast To Double2' : Unused code path elimination
 * Block '<S2>/Divide' : Unused code path elimination
 * Block '<S2>/Rate Transition' : Unused code path elimination
 * Block '<S3>/Atan1' : Unused code path elimination
 * Block '<S3>/Divide1' : Unused code path elimination
 * Block '<S3>/Gain1' : Unused code path elimination
 * Block '<S3>/Rate Transition2' : Unused code path elimination
 * Block '<S3>/Sqrt' : Unused code path elimination
 * Block '<S3>/Square' : Unused code path elimination
 * Block '<S3>/Square1' : Unused code path elimination
 * Block '<S3>/Sum' : Unused code path elimination
 * Block '<S1>/r' : Unused code path elimination
 * Block '<S1>/u' : Unused code path elimination
 * Block '<S1>/v' : Unused code path elimination
 */

/*-
 * The generated code includes comments that allow you to trace directly
 * back to the appropriate location in the model.  The basic format
 * is <system>/block_name, where system is the system number (uniquely
 * assigned by Simulink) and block_name is the name of the block.
 *
 * Use the MATLAB hilite_system command to trace the generated code back
 * to the model.  For example,
 *
 * hilite_system('<S3>')    - opens system 3
 * hilite_system('<S3>/Kp') - opens and selects block Kp which resides in S3
 *
 * Here is the system hierarchy for this model
 *
 * '<Root>' : 'parrot_gettingstarted_com_new'
 * '<S1>'   : 'parrot_gettingstarted_com_new/Flight_Control_System'
 * '<S2>'   : 'parrot_gettingstarted_com_new/Flight_Control_System/Kalman Filter: Phi'
 * '<S3>'   : 'parrot_gettingstarted_com_new/Flight_Control_System/Kalman Filter: Theta'
 * '<S4>'   : 'parrot_gettingstarted_com_new/Flight_Control_System/Subsystem'
 */
#endif                         /* RTW_HEADER_parrot_gettingstarted_com_new_h_ */
