/*
 * parrot_gettingstarted_compatible.h
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

#ifndef RTW_HEADER_parrot_gettingstarted_compatible_h_
#define RTW_HEADER_parrot_gettingstarted_compatible_h_
#ifndef parrot_gettingstarted_compatible_COMMON_INCLUDES_
#define parrot_gettingstarted_compatible_COMMON_INCLUDES_
#include <stdlib.h>
#include "rtwtypes.h"
#include "rtw_continuous.h"
#include "rtw_solver.h"
#include "rt_logging.h"
#endif                   /* parrot_gettingstarted_compatible_COMMON_INCLUDES_ */

#include "parrot_gettingstarted_compatible_types.h"
#include <stddef.h>
#include <float.h>
#include <string.h>
#include "rt_nonfinite.h"
#include "MW_target_hardware_resources.h"

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

#define parrot_gettingstarted_compatible_M (parrot_gettingstarted_compat_M)

/* Block signals for system '<S43>/Enabled Subsystem' */
typedef struct {
  real_T Product2[2];                  /* '<S69>/Product2' */
} B_EnabledSubsystem_parrot_get_T;

/* Block states (default storage) for system '<S43>/Enabled Subsystem' */
typedef struct {
  boolean_T EnabledSubsystem_MODE;     /* '<S43>/Enabled Subsystem' */
} DW_EnabledSubsystem_parrot_ge_T;

/* Block signals for system '<S91>/MeasurementUpdate' */
typedef struct {
  real_T Product3[2];                  /* '<S122>/Product3' */
} B_MeasurementUpdate_parrot_ge_T;

/* Block states (default storage) for system '<S91>/MeasurementUpdate' */
typedef struct {
  boolean_T MeasurementUpdate_MODE;    /* '<S91>/MeasurementUpdate' */
} DW_MeasurementUpdate_parrot_g_T;

/* Block signals for system '<S12>/MATLAB Function1' */
typedef struct {
  real32_T y;                          /* '<S12>/MATLAB Function1' */
} B_MATLABFunction1_parrot_gett_T;

/* Block signals (default storage) */
typedef struct {
  real_T A[9];
  real32_T y[9];
  real32_T B[9];
  real_T TmpSignalConversionAtToWork[4];
  real_T Product3[2];                  /* '<S67>/Product3' */
  real_T Conversion[2];                /* '<S60>/Conversion' */
  real_T Conversion_n[2];              /* '<S170>/Conversion' */
  real_T Rudder;                       /* '<S8>/K_r' */
  real_T Thrust;                       /* '<S14>/K_PD' */
  real_T Phi_measure;                  /* '<S5>/Atan' */
  real_T vmeasure;                     /* '<S12>/Product1' */
  real32_T CastToSingle[2];            /* '<S4>/Cast To Single' */
  real32_T CastToSingle_i[2];          /* '<S11>/Cast To Single' */
  B_MATLABFunction1_parrot_gett_T sf_MATLABFunction1_k;/* '<S13>/MATLAB Function1' */
  B_MATLABFunction1_parrot_gett_T sf_MATLABFunction1;/* '<S12>/MATLAB Function1' */
  B_EnabledSubsystem_parrot_get_T EnabledSubsystem_m;/* '<S153>/Enabled Subsystem' */
  B_MeasurementUpdate_parrot_ge_T MeasurementUpdate_b;/* '<S146>/MeasurementUpdate' */
  B_EnabledSubsystem_parrot_get_T EnabledSubsystem_a;/* '<S98>/Enabled Subsystem' */
  B_MeasurementUpdate_parrot_ge_T MeasurementUpdate_d;/* '<S91>/MeasurementUpdate' */
  B_EnabledSubsystem_parrot_get_T EnabledSubsystem;/* '<S43>/Enabled Subsystem' */
} B_parrot_gettingstarted_compa_T;

/* Block states (default storage) for system '<Root>' */
typedef struct {
  real_T MemoryX_DSTATE[2];            /* '<S15>/MemoryX' */
  real_T MemoryX_DSTATE_p[2];          /* '<S70>/MemoryX' */
  real_T MemoryX_DSTATE_d[2];          /* '<S125>/MemoryX' */
  struct {
    void *LoggedData;
  } ToWorkspace1_PWORK;                /* '<S1>/To Workspace1' */

  struct {
    void *LoggedData;
  } ToWorkspace2_PWORK;                /* '<S1>/To Workspace2' */

  struct {
    void *LoggedData;
  } ToWorkspace_PWORK;                 /* '<S14>/To Workspace' */

  struct {
    void *LoggedData;
  } ToWorkspace_PWORK_k;               /* '<S1>/To Workspace' */

  struct {
    void *LoggedData;
  } ToWorkspace1_PWORK_c;              /* '<S4>/To Workspace1' */

  struct {
    void *LoggedData;
  } ToWorkspace3_PWORK;                /* '<S10>/To Workspace3' */

  struct {
    void *LoggedData;
  } ToWorkspace4_PWORK;                /* '<S10>/To Workspace4' */

  struct {
    void *LoggedData;
  } ToWorkspace5_PWORK;                /* '<S11>/To Workspace5' */

  struct {
    void *LoggedData;
  } ToWorkspace6_PWORK;                /* '<S11>/To Workspace6' */

  boolean_T icLoad;                    /* '<S15>/MemoryX' */
  boolean_T icLoad_k;                  /* '<S70>/MemoryX' */
  boolean_T icLoad_h;                  /* '<S125>/MemoryX' */
  boolean_T MeasurementUpdate_MODE;    /* '<S36>/MeasurementUpdate' */
  DW_EnabledSubsystem_parrot_ge_T EnabledSubsystem_m;/* '<S153>/Enabled Subsystem' */
  DW_MeasurementUpdate_parrot_g_T MeasurementUpdate_b;/* '<S146>/MeasurementUpdate' */
  DW_EnabledSubsystem_parrot_ge_T EnabledSubsystem_a;/* '<S98>/Enabled Subsystem' */
  DW_MeasurementUpdate_parrot_g_T MeasurementUpdate_d;/* '<S91>/MeasurementUpdate' */
  DW_EnabledSubsystem_parrot_ge_T EnabledSubsystem;/* '<S43>/Enabled Subsystem' */
} DW_parrot_gettingstarted_comp_T;

/* External outputs (root outports fed by signals with default storage) */
typedef struct {
  real32_T Motors[4];                  /* '<Root>/Motors' */
  uint8_T Flag;                        /* '<Root>/Flag' */
} ExtY_parrot_gettingstarted_co_T;

/* Parameters for system: '<S43>/Enabled Subsystem' */
struct P_EnabledSubsystem_parrot_get_T_ {
  real_T deltax_Y0;                    /* Expression: 0
                                        * Referenced by: '<S69>/deltax'
                                        */
};

/* Parameters for system: '<S91>/MeasurementUpdate' */
struct P_MeasurementUpdate_parrot_ge_T_ {
  real_T Lykyhatkk1_Y0;                /* Expression: 0
                                        * Referenced by: '<S122>/L*(y[k]-yhat[k|k-1])'
                                        */
};

/* Parameters (default storage) */
struct P_parrot_gettingstarted_compa_T_ {
  real_T K_PD[2];                      /* Variable: K_PD
                                        * Referenced by: '<S14>/K_PD'
                                        */
  real_T K_psi[2];                     /* Variable: K_psi
                                        * Referenced by: '<S8>/K_r'
                                        */
  real_T K_u[3];                       /* Variable: K_u
                                        * Referenced by: '<S3>/K_u'
                                        */
  real_T K_v[3];                       /* Variable: K_v
                                        * Referenced by: '<S2>/K_v'
                                        */
  real_T Mixer[16];                    /* Variable: Mixer
                                        * Referenced by: '<S1>/Constant'
                                        */
  real_T ff;                           /* Variable: ff
                                        * Referenced by:
                                        *   '<S12>/Constant9'
                                        *   '<S13>/Constant9'
                                        */
  real_T ground_alt;                   /* Variable: ground_alt
                                        * Referenced by:
                                        *   '<S12>/Constant10'
                                        *   '<S13>/Constant10'
                                        */
  real_T Lykyhatkk1_Y0;                /* Expression: 0
                                        * Referenced by: '<S67>/L*(y[k]-yhat[k|k-1])'
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
  real_T Altitude_Value;               /* Expression: -1
                                        * Referenced by: '<S1>/Altitude'
                                        */
  real_T C_Value[2];                   /* Expression: pInitialization.C
                                        * Referenced by: '<S15>/C'
                                        */
  real_T X0_Value[2];                  /* Expression: pInitialization.X0
                                        * Referenced by: '<S15>/X0'
                                        */
  real_T Constant10_Value;             /* Expression: 0
                                        * Referenced by: '<S14>/Constant10'
                                        */
  real_T v_Value;                      /* Expression: 0
                                        * Referenced by: '<S1>/v'
                                        */
  real_T C_Value_k[2];                 /* Expression: pInitialization.C
                                        * Referenced by: '<S70>/C'
                                        */
  real_T X0_Value_d[2];                /* Expression: pInitialization.X0
                                        * Referenced by: '<S70>/X0'
                                        */
  real_T Constant11_Value;             /* Expression: 0
                                        * Referenced by: '<S2>/Constant11'
                                        */
  real_T Constant10_Value_j;           /* Expression: 0
                                        * Referenced by: '<S2>/Constant10'
                                        */
  real_T u_Value;                      /* Expression: 0
                                        * Referenced by: '<S1>/u'
                                        */
  real_T C_Value_n[2];                 /* Expression: pInitialization.C
                                        * Referenced by: '<S125>/C'
                                        */
  real_T X0_Value_j[2];                /* Expression: pInitialization.X0
                                        * Referenced by: '<S125>/X0'
                                        */
  real_T Constant11_Value_p;           /* Expression: 0
                                        * Referenced by: '<S3>/Constant11'
                                        */
  real_T Constant10_Value_c;           /* Expression: 0
                                        * Referenced by: '<S3>/Constant10'
                                        */
  real_T r_Value;                      /* Expression: 0
                                        * Referenced by: '<S1>/r'
                                        */
  real_T Constant9_Value;              /* Expression: 0
                                        * Referenced by: '<S1>/Constant9'
                                        */
  real_T Saturation_UpperSat;          /* Expression: 500
                                        * Referenced by: '<S1>/Saturation'
                                        */
  real_T Saturation_LowerSat;          /* Expression: -500
                                        * Referenced by: '<S1>/Saturation'
                                        */
  real_T Constant6_Value_g;            /* Expression: -9
                                        * Referenced by: '<S4>/Constant6'
                                        */
  real_T A_Value[4];                   /* Expression: pInitialization.A
                                        * Referenced by: '<S15>/A'
                                        */
  real_T B_Value[2];                   /* Expression: pInitialization.B
                                        * Referenced by: '<S15>/B'
                                        */
  real_T KalmanGainL_Value[2];         /* Expression: pInitialization.L
                                        * Referenced by: '<S16>/KalmanGainL'
                                        */
  real_T D_Value;                      /* Expression: pInitialization.D
                                        * Referenced by: '<S15>/D'
                                        */
  real_T A_Value_p[4];                 /* Expression: pInitialization.A
                                        * Referenced by: '<S70>/A'
                                        */
  real_T B_Value_o[4];                 /* Expression: pInitialization.B
                                        * Referenced by: '<S70>/B'
                                        */
  real_T KalmanGainL_Value_p[2];       /* Expression: pInitialization.L
                                        * Referenced by: '<S71>/KalmanGainL'
                                        */
  real_T D_Value_e[2];                 /* Expression: pInitialization.D
                                        * Referenced by: '<S70>/D'
                                        */
  real_T A_Value_n[4];                 /* Expression: pInitialization.A
                                        * Referenced by: '<S125>/A'
                                        */
  real_T B_Value_e[4];                 /* Expression: pInitialization.B
                                        * Referenced by: '<S125>/B'
                                        */
  real_T KalmanGainL_Value_j[2];       /* Expression: pInitialization.L
                                        * Referenced by: '<S126>/KalmanGainL'
                                        */
  real_T D_Value_n[2];                 /* Expression: pInitialization.D
                                        * Referenced by: '<S125>/D'
                                        */
  real32_T KalmanGainM_Value[2];       /* Expression: pInitialization.M
                                        * Referenced by: '<S16>/KalmanGainM'
                                        */
  real32_T Gain1_Gain;                 /* Computed Parameter: Gain1_Gain
                                        * Referenced by: '<S6>/Gain1'
                                        */
  real32_T KalmanGainM_Value_a[2];     /* Expression: pInitialization.M
                                        * Referenced by: '<S71>/KalmanGainM'
                                        */
  real32_T KalmanGainM_Value_o[2];     /* Expression: pInitialization.M
                                        * Referenced by: '<S126>/KalmanGainM'
                                        */
  real32_T CovarianceZ_Value[4];       /* Expression: pInitialization.Z
                                        * Referenced by: '<S16>/CovarianceZ'
                                        */
  real32_T CovarianceZ_Value_e[4];     /* Expression: pInitialization.Z
                                        * Referenced by: '<S71>/CovarianceZ'
                                        */
  real32_T CovarianceZ_Value_k[4];     /* Expression: pInitialization.Z
                                        * Referenced by: '<S126>/CovarianceZ'
                                        */
  boolean_T Enable_Value;              /* Expression: true()
                                        * Referenced by: '<S15>/Enable'
                                        */
  boolean_T Enable_Value_l;            /* Expression: true()
                                        * Referenced by: '<S70>/Enable'
                                        */
  boolean_T Enable_Value_k;            /* Expression: true()
                                        * Referenced by: '<S125>/Enable'
                                        */
  boolean_T isSqrtUsed_Value;          /* Expression: pInitialization.isSqrtUsed
                                        * Referenced by: '<S65>/isSqrtUsed'
                                        */
  boolean_T isSqrtUsed_Value_a;        /* Expression: pInitialization.isSqrtUsed
                                        * Referenced by: '<S120>/isSqrtUsed'
                                        */
  boolean_T isSqrtUsed_Value_l;        /* Expression: pInitialization.isSqrtUsed
                                        * Referenced by: '<S175>/isSqrtUsed'
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
  P_EnabledSubsystem_parrot_get_T EnabledSubsystem_m;/* '<S153>/Enabled Subsystem' */
  P_MeasurementUpdate_parrot_ge_T MeasurementUpdate_b;/* '<S146>/MeasurementUpdate' */
  P_EnabledSubsystem_parrot_get_T EnabledSubsystem_a;/* '<S98>/Enabled Subsystem' */
  P_MeasurementUpdate_parrot_ge_T MeasurementUpdate_d;/* '<S91>/MeasurementUpdate' */
  P_EnabledSubsystem_parrot_get_T EnabledSubsystem;/* '<S43>/Enabled Subsystem' */
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
extern P_parrot_gettingstarted_compa_T parrot_gettingstarted_compati_P;

/* Block signals (default storage) */
extern B_parrot_gettingstarted_compa_T parrot_gettingstarted_compati_B;

/* Block states (default storage) */
extern DW_parrot_gettingstarted_comp_T parrot_gettingstarted_compat_DW;

/* External outputs (root outports fed by signals with default storage) */
extern ExtY_parrot_gettingstarted_co_T parrot_gettingstarted_compati_Y;

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
extern void parrot_gettingstarted_compatible_initialize(void);
extern void parrot_gettingstarted_compatible_step(void);
extern void parrot_gettingstarted_compatible_terminate(void);

/* Real-time Model object */
extern RT_MODEL_parrot_gettingstarte_T *const parrot_gettingstarted_compat_M;
extern volatile boolean_T stopRequested;
extern volatile boolean_T runModel;

/*-
 * These blocks were eliminated from the model due to optimizations:
 *
 * Block '<S1>/Constant7' : Unused code path elimination
 * Block '<S1>/Constant8' : Unused code path elimination
 * Block '<S59>/Data Type Duplicate' : Unused code path elimination
 * Block '<S60>/Data Type Duplicate' : Unused code path elimination
 * Block '<S61>/Conversion' : Unused code path elimination
 * Block '<S61>/Data Type Duplicate' : Unused code path elimination
 * Block '<S62>/Data Type Duplicate' : Unused code path elimination
 * Block '<S19>/Data Type Duplicate' : Unused code path elimination
 * Block '<S20>/Data Type Duplicate' : Unused code path elimination
 * Block '<S21>/Data Type Duplicate' : Unused code path elimination
 * Block '<S22>/Data Type Duplicate' : Unused code path elimination
 * Block '<S24>/Data Type Duplicate' : Unused code path elimination
 * Block '<S25>/Data Type Duplicate' : Unused code path elimination
 * Block '<S26>/Data Type Duplicate' : Unused code path elimination
 * Block '<S27>/Conversion' : Unused code path elimination
 * Block '<S27>/Data Type Duplicate' : Unused code path elimination
 * Block '<S28>/Data Type Duplicate' : Unused code path elimination
 * Block '<S29>/Data Type Duplicate' : Unused code path elimination
 * Block '<S30>/Data Type Duplicate' : Unused code path elimination
 * Block '<S32>/Data Type Duplicate' : Unused code path elimination
 * Block '<S33>/Data Type Duplicate' : Unused code path elimination
 * Block '<S15>/G' : Unused code path elimination
 * Block '<S15>/H' : Unused code path elimination
 * Block '<S15>/N' : Unused code path elimination
 * Block '<S15>/P0' : Unused code path elimination
 * Block '<S15>/Q' : Unused code path elimination
 * Block '<S15>/R' : Unused code path elimination
 * Block '<S57>/CheckSignalProperties' : Unused code path elimination
 * Block '<S58>/CheckSignalProperties' : Unused code path elimination
 * Block '<S114>/Data Type Duplicate' : Unused code path elimination
 * Block '<S115>/Data Type Duplicate' : Unused code path elimination
 * Block '<S116>/Conversion' : Unused code path elimination
 * Block '<S116>/Data Type Duplicate' : Unused code path elimination
 * Block '<S117>/Data Type Duplicate' : Unused code path elimination
 * Block '<S74>/Data Type Duplicate' : Unused code path elimination
 * Block '<S75>/Data Type Duplicate' : Unused code path elimination
 * Block '<S76>/Data Type Duplicate' : Unused code path elimination
 * Block '<S77>/Data Type Duplicate' : Unused code path elimination
 * Block '<S79>/Data Type Duplicate' : Unused code path elimination
 * Block '<S80>/Data Type Duplicate' : Unused code path elimination
 * Block '<S81>/Data Type Duplicate' : Unused code path elimination
 * Block '<S82>/Conversion' : Unused code path elimination
 * Block '<S82>/Data Type Duplicate' : Unused code path elimination
 * Block '<S83>/Data Type Duplicate' : Unused code path elimination
 * Block '<S84>/Data Type Duplicate' : Unused code path elimination
 * Block '<S85>/Data Type Duplicate' : Unused code path elimination
 * Block '<S87>/Data Type Duplicate' : Unused code path elimination
 * Block '<S88>/Data Type Duplicate' : Unused code path elimination
 * Block '<S70>/G' : Unused code path elimination
 * Block '<S70>/H' : Unused code path elimination
 * Block '<S70>/N' : Unused code path elimination
 * Block '<S70>/P0' : Unused code path elimination
 * Block '<S70>/Q' : Unused code path elimination
 * Block '<S70>/R' : Unused code path elimination
 * Block '<S112>/CheckSignalProperties' : Unused code path elimination
 * Block '<S113>/CheckSignalProperties' : Unused code path elimination
 * Block '<S169>/Data Type Duplicate' : Unused code path elimination
 * Block '<S170>/Data Type Duplicate' : Unused code path elimination
 * Block '<S171>/Conversion' : Unused code path elimination
 * Block '<S171>/Data Type Duplicate' : Unused code path elimination
 * Block '<S172>/Data Type Duplicate' : Unused code path elimination
 * Block '<S129>/Data Type Duplicate' : Unused code path elimination
 * Block '<S130>/Data Type Duplicate' : Unused code path elimination
 * Block '<S131>/Data Type Duplicate' : Unused code path elimination
 * Block '<S132>/Data Type Duplicate' : Unused code path elimination
 * Block '<S134>/Data Type Duplicate' : Unused code path elimination
 * Block '<S135>/Data Type Duplicate' : Unused code path elimination
 * Block '<S136>/Data Type Duplicate' : Unused code path elimination
 * Block '<S137>/Conversion' : Unused code path elimination
 * Block '<S137>/Data Type Duplicate' : Unused code path elimination
 * Block '<S138>/Data Type Duplicate' : Unused code path elimination
 * Block '<S139>/Data Type Duplicate' : Unused code path elimination
 * Block '<S140>/Data Type Duplicate' : Unused code path elimination
 * Block '<S142>/Data Type Duplicate' : Unused code path elimination
 * Block '<S143>/Data Type Duplicate' : Unused code path elimination
 * Block '<S125>/G' : Unused code path elimination
 * Block '<S125>/H' : Unused code path elimination
 * Block '<S125>/N' : Unused code path elimination
 * Block '<S125>/P0' : Unused code path elimination
 * Block '<S125>/Q' : Unused code path elimination
 * Block '<S125>/R' : Unused code path elimination
 * Block '<S167>/CheckSignalProperties' : Unused code path elimination
 * Block '<S168>/CheckSignalProperties' : Unused code path elimination
 * Block '<S4>/Rate Transition8' : Eliminated since input and output rates are identical
 * Block '<S4>/Rate Transition9' : Eliminated since input and output rates are identical
 * Block '<S59>/Conversion' : Eliminate redundant data type conversion
 * Block '<S32>/Conversion' : Eliminate redundant data type conversion
 * Block '<S36>/Reshape' : Reshape block reduction
 * Block '<S15>/ReshapeX0' : Reshape block reduction
 * Block '<S15>/Reshapeu' : Reshape block reduction
 * Block '<S15>/Reshapexhat' : Reshape block reduction
 * Block '<S15>/Reshapey' : Reshape block reduction
 * Block '<S5>/Rate Transition' : Eliminated since input and output rates are identical
 * Block '<S6>/Rate Transition2' : Eliminated since input and output rates are identical
 * Block '<S10>/Cast To Double1' : Eliminate redundant data type conversion
 * Block '<S114>/Conversion' : Eliminate redundant data type conversion
 * Block '<S87>/Conversion' : Eliminate redundant data type conversion
 * Block '<S91>/Reshape' : Reshape block reduction
 * Block '<S70>/ReshapeX0' : Reshape block reduction
 * Block '<S70>/Reshapeu' : Reshape block reduction
 * Block '<S70>/Reshapexhat' : Reshape block reduction
 * Block '<S70>/Reshapey' : Reshape block reduction
 * Block '<S10>/Rate Transition' : Eliminated since input and output rates are identical
 * Block '<S10>/Rate Transition1' : Eliminated since input and output rates are identical
 * Block '<S11>/Cast To Double1' : Eliminate redundant data type conversion
 * Block '<S169>/Conversion' : Eliminate redundant data type conversion
 * Block '<S142>/Conversion' : Eliminate redundant data type conversion
 * Block '<S146>/Reshape' : Reshape block reduction
 * Block '<S125>/ReshapeX0' : Reshape block reduction
 * Block '<S125>/Reshapeu' : Reshape block reduction
 * Block '<S125>/Reshapexhat' : Reshape block reduction
 * Block '<S125>/Reshapey' : Reshape block reduction
 * Block '<S11>/Rate Transition2' : Eliminated since input and output rates are identical
 * Block '<S11>/Rate Transition3' : Eliminated since input and output rates are identical
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
 * '<Root>' : 'parrot_gettingstarted_compatible'
 * '<S1>'   : 'parrot_gettingstarted_compatible/Flight_Control_System'
 * '<S2>'   : 'parrot_gettingstarted_compatible/Flight_Control_System/Aileron Regulator'
 * '<S3>'   : 'parrot_gettingstarted_compatible/Flight_Control_System/Elevator Regulator'
 * '<S4>'   : 'parrot_gettingstarted_compatible/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate1'
 * '<S5>'   : 'parrot_gettingstarted_compatible/Flight_Control_System/Kalman Filter: Phi'
 * '<S6>'   : 'parrot_gettingstarted_compatible/Flight_Control_System/Kalman Filter: Theta'
 * '<S7>'   : 'parrot_gettingstarted_compatible/Flight_Control_System/PD rotate'
 * '<S8>'   : 'parrot_gettingstarted_compatible/Flight_Control_System/Rudder Regulator'
 * '<S9>'   : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem'
 * '<S10>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem1'
 * '<S11>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem2'
 * '<S12>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem3'
 * '<S13>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem4'
 * '<S14>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Thrust Regulator'
 * '<S15>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate1/z_velocity & z_height'
 * '<S16>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate1/z_velocity & z_height/CalculatePL'
 * '<S17>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate1/z_velocity & z_height/CalculateYhat'
 * '<S18>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate1/z_velocity & z_height/CovarianceOutputConfigurator'
 * '<S19>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate1/z_velocity & z_height/DataTypeConversionA'
 * '<S20>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate1/z_velocity & z_height/DataTypeConversionB'
 * '<S21>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate1/z_velocity & z_height/DataTypeConversionC'
 * '<S22>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate1/z_velocity & z_height/DataTypeConversionD'
 * '<S23>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate1/z_velocity & z_height/DataTypeConversionEnable'
 * '<S24>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate1/z_velocity & z_height/DataTypeConversionG'
 * '<S25>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate1/z_velocity & z_height/DataTypeConversionH'
 * '<S26>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate1/z_velocity & z_height/DataTypeConversionN'
 * '<S27>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate1/z_velocity & z_height/DataTypeConversionP'
 * '<S28>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate1/z_velocity & z_height/DataTypeConversionP0'
 * '<S29>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate1/z_velocity & z_height/DataTypeConversionQ'
 * '<S30>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate1/z_velocity & z_height/DataTypeConversionR'
 * '<S31>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate1/z_velocity & z_height/DataTypeConversionReset'
 * '<S32>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate1/z_velocity & z_height/DataTypeConversionX'
 * '<S33>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate1/z_velocity & z_height/DataTypeConversionX0'
 * '<S34>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate1/z_velocity & z_height/DataTypeConversionu'
 * '<S35>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate1/z_velocity & z_height/MemoryP'
 * '<S36>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate1/z_velocity & z_height/Observer'
 * '<S37>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate1/z_velocity & z_height/ReducedQRN'
 * '<S38>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate1/z_velocity & z_height/Reset'
 * '<S39>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate1/z_velocity & z_height/Reshapeyhat'
 * '<S40>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate1/z_velocity & z_height/ScalarExpansionP0'
 * '<S41>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate1/z_velocity & z_height/ScalarExpansionQ'
 * '<S42>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate1/z_velocity & z_height/ScalarExpansionR'
 * '<S43>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate1/z_velocity & z_height/UseCurrentEstimator'
 * '<S44>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate1/z_velocity & z_height/checkA'
 * '<S45>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate1/z_velocity & z_height/checkB'
 * '<S46>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate1/z_velocity & z_height/checkC'
 * '<S47>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate1/z_velocity & z_height/checkD'
 * '<S48>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate1/z_velocity & z_height/checkEnable'
 * '<S49>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate1/z_velocity & z_height/checkG'
 * '<S50>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate1/z_velocity & z_height/checkH'
 * '<S51>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate1/z_velocity & z_height/checkN'
 * '<S52>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate1/z_velocity & z_height/checkP0'
 * '<S53>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate1/z_velocity & z_height/checkQ'
 * '<S54>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate1/z_velocity & z_height/checkR'
 * '<S55>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate1/z_velocity & z_height/checkReset'
 * '<S56>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate1/z_velocity & z_height/checkX0'
 * '<S57>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate1/z_velocity & z_height/checku'
 * '<S58>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate1/z_velocity & z_height/checky'
 * '<S59>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate1/z_velocity & z_height/CalculatePL/DataTypeConversionL'
 * '<S60>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate1/z_velocity & z_height/CalculatePL/DataTypeConversionM'
 * '<S61>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate1/z_velocity & z_height/CalculatePL/DataTypeConversionP'
 * '<S62>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate1/z_velocity & z_height/CalculatePL/DataTypeConversionZ'
 * '<S63>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate1/z_velocity & z_height/CalculatePL/Ground'
 * '<S64>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate1/z_velocity & z_height/CalculateYhat/Ground'
 * '<S65>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate1/z_velocity & z_height/CovarianceOutputConfigurator/decideOutput'
 * '<S66>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate1/z_velocity & z_height/CovarianceOutputConfigurator/decideOutput/SqrtUsedFcn'
 * '<S67>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate1/z_velocity & z_height/Observer/MeasurementUpdate'
 * '<S68>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate1/z_velocity & z_height/ReducedQRN/Ground'
 * '<S69>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate1/z_velocity & z_height/UseCurrentEstimator/Enabled Subsystem'
 * '<S70>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem1/Kalman Filter: V and Phi'
 * '<S71>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem1/Kalman Filter: V and Phi/CalculatePL'
 * '<S72>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem1/Kalman Filter: V and Phi/CalculateYhat'
 * '<S73>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem1/Kalman Filter: V and Phi/CovarianceOutputConfigurator'
 * '<S74>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem1/Kalman Filter: V and Phi/DataTypeConversionA'
 * '<S75>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem1/Kalman Filter: V and Phi/DataTypeConversionB'
 * '<S76>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem1/Kalman Filter: V and Phi/DataTypeConversionC'
 * '<S77>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem1/Kalman Filter: V and Phi/DataTypeConversionD'
 * '<S78>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem1/Kalman Filter: V and Phi/DataTypeConversionEnable'
 * '<S79>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem1/Kalman Filter: V and Phi/DataTypeConversionG'
 * '<S80>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem1/Kalman Filter: V and Phi/DataTypeConversionH'
 * '<S81>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem1/Kalman Filter: V and Phi/DataTypeConversionN'
 * '<S82>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem1/Kalman Filter: V and Phi/DataTypeConversionP'
 * '<S83>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem1/Kalman Filter: V and Phi/DataTypeConversionP0'
 * '<S84>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem1/Kalman Filter: V and Phi/DataTypeConversionQ'
 * '<S85>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem1/Kalman Filter: V and Phi/DataTypeConversionR'
 * '<S86>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem1/Kalman Filter: V and Phi/DataTypeConversionReset'
 * '<S87>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem1/Kalman Filter: V and Phi/DataTypeConversionX'
 * '<S88>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem1/Kalman Filter: V and Phi/DataTypeConversionX0'
 * '<S89>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem1/Kalman Filter: V and Phi/DataTypeConversionu'
 * '<S90>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem1/Kalman Filter: V and Phi/MemoryP'
 * '<S91>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem1/Kalman Filter: V and Phi/Observer'
 * '<S92>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem1/Kalman Filter: V and Phi/ReducedQRN'
 * '<S93>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem1/Kalman Filter: V and Phi/Reset'
 * '<S94>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem1/Kalman Filter: V and Phi/Reshapeyhat'
 * '<S95>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem1/Kalman Filter: V and Phi/ScalarExpansionP0'
 * '<S96>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem1/Kalman Filter: V and Phi/ScalarExpansionQ'
 * '<S97>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem1/Kalman Filter: V and Phi/ScalarExpansionR'
 * '<S98>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem1/Kalman Filter: V and Phi/UseCurrentEstimator'
 * '<S99>'  : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem1/Kalman Filter: V and Phi/checkA'
 * '<S100>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem1/Kalman Filter: V and Phi/checkB'
 * '<S101>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem1/Kalman Filter: V and Phi/checkC'
 * '<S102>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem1/Kalman Filter: V and Phi/checkD'
 * '<S103>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem1/Kalman Filter: V and Phi/checkEnable'
 * '<S104>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem1/Kalman Filter: V and Phi/checkG'
 * '<S105>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem1/Kalman Filter: V and Phi/checkH'
 * '<S106>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem1/Kalman Filter: V and Phi/checkN'
 * '<S107>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem1/Kalman Filter: V and Phi/checkP0'
 * '<S108>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem1/Kalman Filter: V and Phi/checkQ'
 * '<S109>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem1/Kalman Filter: V and Phi/checkR'
 * '<S110>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem1/Kalman Filter: V and Phi/checkReset'
 * '<S111>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem1/Kalman Filter: V and Phi/checkX0'
 * '<S112>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem1/Kalman Filter: V and Phi/checku'
 * '<S113>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem1/Kalman Filter: V and Phi/checky'
 * '<S114>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem1/Kalman Filter: V and Phi/CalculatePL/DataTypeConversionL'
 * '<S115>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem1/Kalman Filter: V and Phi/CalculatePL/DataTypeConversionM'
 * '<S116>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem1/Kalman Filter: V and Phi/CalculatePL/DataTypeConversionP'
 * '<S117>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem1/Kalman Filter: V and Phi/CalculatePL/DataTypeConversionZ'
 * '<S118>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem1/Kalman Filter: V and Phi/CalculatePL/Ground'
 * '<S119>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem1/Kalman Filter: V and Phi/CalculateYhat/Ground'
 * '<S120>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem1/Kalman Filter: V and Phi/CovarianceOutputConfigurator/decideOutput'
 * '<S121>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem1/Kalman Filter: V and Phi/CovarianceOutputConfigurator/decideOutput/SqrtUsedFcn'
 * '<S122>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem1/Kalman Filter: V and Phi/Observer/MeasurementUpdate'
 * '<S123>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem1/Kalman Filter: V and Phi/ReducedQRN/Ground'
 * '<S124>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem1/Kalman Filter: V and Phi/UseCurrentEstimator/Enabled Subsystem'
 * '<S125>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem2/Kalman Filter: U and theta'
 * '<S126>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem2/Kalman Filter: U and theta/CalculatePL'
 * '<S127>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem2/Kalman Filter: U and theta/CalculateYhat'
 * '<S128>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem2/Kalman Filter: U and theta/CovarianceOutputConfigurator'
 * '<S129>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem2/Kalman Filter: U and theta/DataTypeConversionA'
 * '<S130>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem2/Kalman Filter: U and theta/DataTypeConversionB'
 * '<S131>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem2/Kalman Filter: U and theta/DataTypeConversionC'
 * '<S132>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem2/Kalman Filter: U and theta/DataTypeConversionD'
 * '<S133>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem2/Kalman Filter: U and theta/DataTypeConversionEnable'
 * '<S134>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem2/Kalman Filter: U and theta/DataTypeConversionG'
 * '<S135>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem2/Kalman Filter: U and theta/DataTypeConversionH'
 * '<S136>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem2/Kalman Filter: U and theta/DataTypeConversionN'
 * '<S137>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem2/Kalman Filter: U and theta/DataTypeConversionP'
 * '<S138>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem2/Kalman Filter: U and theta/DataTypeConversionP0'
 * '<S139>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem2/Kalman Filter: U and theta/DataTypeConversionQ'
 * '<S140>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem2/Kalman Filter: U and theta/DataTypeConversionR'
 * '<S141>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem2/Kalman Filter: U and theta/DataTypeConversionReset'
 * '<S142>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem2/Kalman Filter: U and theta/DataTypeConversionX'
 * '<S143>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem2/Kalman Filter: U and theta/DataTypeConversionX0'
 * '<S144>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem2/Kalman Filter: U and theta/DataTypeConversionu'
 * '<S145>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem2/Kalman Filter: U and theta/MemoryP'
 * '<S146>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem2/Kalman Filter: U and theta/Observer'
 * '<S147>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem2/Kalman Filter: U and theta/ReducedQRN'
 * '<S148>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem2/Kalman Filter: U and theta/Reset'
 * '<S149>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem2/Kalman Filter: U and theta/Reshapeyhat'
 * '<S150>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem2/Kalman Filter: U and theta/ScalarExpansionP0'
 * '<S151>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem2/Kalman Filter: U and theta/ScalarExpansionQ'
 * '<S152>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem2/Kalman Filter: U and theta/ScalarExpansionR'
 * '<S153>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem2/Kalman Filter: U and theta/UseCurrentEstimator'
 * '<S154>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem2/Kalman Filter: U and theta/checkA'
 * '<S155>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem2/Kalman Filter: U and theta/checkB'
 * '<S156>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem2/Kalman Filter: U and theta/checkC'
 * '<S157>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem2/Kalman Filter: U and theta/checkD'
 * '<S158>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem2/Kalman Filter: U and theta/checkEnable'
 * '<S159>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem2/Kalman Filter: U and theta/checkG'
 * '<S160>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem2/Kalman Filter: U and theta/checkH'
 * '<S161>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem2/Kalman Filter: U and theta/checkN'
 * '<S162>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem2/Kalman Filter: U and theta/checkP0'
 * '<S163>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem2/Kalman Filter: U and theta/checkQ'
 * '<S164>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem2/Kalman Filter: U and theta/checkR'
 * '<S165>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem2/Kalman Filter: U and theta/checkReset'
 * '<S166>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem2/Kalman Filter: U and theta/checkX0'
 * '<S167>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem2/Kalman Filter: U and theta/checku'
 * '<S168>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem2/Kalman Filter: U and theta/checky'
 * '<S169>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem2/Kalman Filter: U and theta/CalculatePL/DataTypeConversionL'
 * '<S170>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem2/Kalman Filter: U and theta/CalculatePL/DataTypeConversionM'
 * '<S171>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem2/Kalman Filter: U and theta/CalculatePL/DataTypeConversionP'
 * '<S172>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem2/Kalman Filter: U and theta/CalculatePL/DataTypeConversionZ'
 * '<S173>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem2/Kalman Filter: U and theta/CalculatePL/Ground'
 * '<S174>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem2/Kalman Filter: U and theta/CalculateYhat/Ground'
 * '<S175>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem2/Kalman Filter: U and theta/CovarianceOutputConfigurator/decideOutput'
 * '<S176>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem2/Kalman Filter: U and theta/CovarianceOutputConfigurator/decideOutput/SqrtUsedFcn'
 * '<S177>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem2/Kalman Filter: U and theta/Observer/MeasurementUpdate'
 * '<S178>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem2/Kalman Filter: U and theta/ReducedQRN/Ground'
 * '<S179>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem2/Kalman Filter: U and theta/UseCurrentEstimator/Enabled Subsystem'
 * '<S180>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem3/MATLAB Function1'
 * '<S181>' : 'parrot_gettingstarted_compatible/Flight_Control_System/Subsystem4/MATLAB Function1'
 */
#endif                      /* RTW_HEADER_parrot_gettingstarted_compatible_h_ */
