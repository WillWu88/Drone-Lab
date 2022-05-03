/*
 * parrot_gettingstarted.h
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

#ifndef RTW_HEADER_parrot_gettingstarted_h_
#define RTW_HEADER_parrot_gettingstarted_h_
#ifndef parrot_gettingstarted_COMMON_INCLUDES_
#define parrot_gettingstarted_COMMON_INCLUDES_
#include <stdlib.h>
#include "rtwtypes.h"
#include "rtw_continuous.h"
#include "rtw_solver.h"
#include "rt_logging.h"
#endif                              /* parrot_gettingstarted_COMMON_INCLUDES_ */

#include "parrot_gettingstarted_types.h"
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

/* Block states (default storage) for system '<S200>/MeasurementUpdate' */
typedef struct {
  boolean_T MeasurementUpdate_MODE;    /* '<S200>/MeasurementUpdate' */
} DW_MeasurementUpdate_parrot_g_T;

/* Block states (default storage) for system '<S207>/Enabled Subsystem' */
typedef struct {
  boolean_T EnabledSubsystem_MODE;     /* '<S207>/Enabled Subsystem' */
} DW_EnabledSubsystem_parrot_ge_T;

/* Block signals (default storage) */
typedef struct {
  real32_T y[9];
  real32_T A[9];
  real32_T B[9];
  real_T dv[4];
  real_T Product2;                     /* '<S122>/Product2' */
  real_T Product3;                     /* '<S120>/Product3' */
  real_T Product2_e[2];                /* '<S67>/Product2' */
  real_T Product3_c[2];                /* '<S65>/Product3' */
  real32_T Product2_c;                 /* '<S177>/Product2' */
  real32_T Product3_o;                 /* '<S175>/Product3' */
} B_parrot_gettingstarted_T;

/* Block states (default storage) for system '<Root>' */
typedef struct {
  real_T MemoryX_DSTATE[2];            /* '<S13>/MemoryX' */
  real_T MemoryX_DSTATE_n;             /* '<S68>/MemoryX' */
  struct {
    void *LoggedData;
  } ToWorkspace_PWORK;                 /* '<S12>/To Workspace' */

  real32_T MemoryX_DSTATE_c;           /* '<S123>/MemoryX' */
  boolean_T icLoad;                    /* '<S13>/MemoryX' */
  boolean_T icLoad_g;                  /* '<S68>/MemoryX' */
  boolean_T icLoad_o;                  /* '<S123>/MemoryX' */
  boolean_T EnabledSubsystem_MODE;     /* '<S151>/Enabled Subsystem' */
  boolean_T MeasurementUpdate_MODE;    /* '<S144>/MeasurementUpdate' */
  boolean_T EnabledSubsystem_MODE_l;   /* '<S96>/Enabled Subsystem' */
  boolean_T MeasurementUpdate_MODE_e;  /* '<S89>/MeasurementUpdate' */
  boolean_T EnabledSubsystem_MODE_d;   /* '<S41>/Enabled Subsystem' */
  boolean_T MeasurementUpdate_MODE_j;  /* '<S34>/MeasurementUpdate' */
  DW_EnabledSubsystem_parrot_ge_T EnabledSubsystem_j;/* '<S263>/Enabled Subsystem' */
  DW_MeasurementUpdate_parrot_g_T MeasurementUpdate_b;/* '<S256>/MeasurementUpdate' */
  DW_EnabledSubsystem_parrot_ge_T EnabledSubsystem_d;/* '<S207>/Enabled Subsystem' */
  DW_MeasurementUpdate_parrot_g_T MeasurementUpdate_d;/* '<S200>/MeasurementUpdate' */
} DW_parrot_gettingstarted_T;

/* External outputs (root outports fed by signals with default storage) */
typedef struct {
  real32_T Motors[4];                  /* '<Root>/Motors' */
  uint8_T Flag;                        /* '<Root>/Flag' */
} ExtY_parrot_gettingstarted_T;

/* Parameters for system: '<S200>/MeasurementUpdate' */
struct P_MeasurementUpdate_parrot_ge_T_ {
  real_T Lykyhatkk1_Y0;                /* Expression: 0
                                        * Referenced by: '<S231>/L*(y[k]-yhat[k|k-1])'
                                        */
};

/* Parameters for system: '<S207>/Enabled Subsystem' */
struct P_EnabledSubsystem_parrot_get_T_ {
  real_T deltax_Y0;                    /* Expression: 0
                                        * Referenced by: '<S233>/deltax'
                                        */
};

/* Parameters (default storage) */
struct P_parrot_gettingstarted_T_ {
  real_T K_PD[2];                      /* Variable: K_PD
                                        * Referenced by: '<S12>/K_PD'
                                        */
  real_T Mixer[16];                    /* Variable: Mixer
                                        * Referenced by: '<S1>/Constant'
                                        */
  real_T g;                            /* Variable: g
                                        * Referenced by: '<S1>/Constant8'
                                        */
  real_T m;                            /* Variable: m
                                        * Referenced by: '<S1>/Constant8'
                                        */
  real_T Lykyhatkk1_Y0;                /* Expression: 0
                                        * Referenced by: '<S65>/L*(y[k]-yhat[k|k-1])'
                                        */
  real_T deltax_Y0;                    /* Expression: 0
                                        * Referenced by: '<S67>/deltax'
                                        */
  real_T Lykyhatkk1_Y0_e;              /* Expression: 0
                                        * Referenced by: '<S120>/L*(y[k]-yhat[k|k-1])'
                                        */
  real_T deltax_Y0_k;                  /* Expression: 0
                                        * Referenced by: '<S122>/deltax'
                                        */
  real_T Constant3_Value;              /* Expression: 0
                                        * Referenced by: '<S1>/Constant3'
                                        */
  real_T Constant4_Value;              /* Expression: 0
                                        * Referenced by: '<S1>/Constant4'
                                        */
  real_T Constant5_Value;              /* Expression: 0
                                        * Referenced by: '<S1>/Constant5'
                                        */
  real_T Constant6_Value;              /* Expression: 0
                                        * Referenced by: '<S1>/Constant6'
                                        */
  real_T Constant7_Value;              /* Expression: 0
                                        * Referenced by: '<S1>/Constant7'
                                        */
  real_T C_Value[2];                   /* Expression: pInitialization.C
                                        * Referenced by: '<S13>/C'
                                        */
  real_T X0_Value[2];                  /* Expression: pInitialization.X0
                                        * Referenced by: '<S13>/X0'
                                        */
  real_T Constant6_Value_k;            /* Expression: -9
                                        * Referenced by: '<S4>/Constant6'
                                        */
  real_T A_Value[4];                   /* Expression: pInitialization.A
                                        * Referenced by: '<S13>/A'
                                        */
  real_T B_Value[2];                   /* Expression: pInitialization.B
                                        * Referenced by: '<S13>/B'
                                        */
  real_T KalmanGainL_Value[2];         /* Expression: pInitialization.L
                                        * Referenced by: '<S14>/KalmanGainL'
                                        */
  real_T D_Value;                      /* Expression: pInitialization.D
                                        * Referenced by: '<S13>/D'
                                        */
  real_T KalmanGainM_Value;            /* Expression: pInitialization.M
                                        * Referenced by: '<S69>/KalmanGainM'
                                        */
  real_T C_Value_m;                    /* Expression: pInitialization.C
                                        * Referenced by: '<S68>/C'
                                        */
  real_T X0_Value_l;                   /* Expression: pInitialization.X0
                                        * Referenced by: '<S68>/X0'
                                        */
  real_T A_Value_c;                    /* Expression: pInitialization.A
                                        * Referenced by: '<S68>/A'
                                        */
  real_T B_Value_i;                    /* Expression: pInitialization.B
                                        * Referenced by: '<S68>/B'
                                        */
  real_T CovarianceZ_Value;            /* Expression: pInitialization.Z
                                        * Referenced by: '<S69>/CovarianceZ'
                                        */
  real_T KalmanGainL_Value_l;          /* Expression: pInitialization.L
                                        * Referenced by: '<S69>/KalmanGainL'
                                        */
  real_T D_Value_e;                    /* Expression: pInitialization.D
                                        * Referenced by: '<S68>/D'
                                        */
  real_T CovarianceZ_Value_j;          /* Expression: pInitialization.Z
                                        * Referenced by: '<S124>/CovarianceZ'
                                        */
  real_T KalmanGainL_Value_a;          /* Expression: pInitialization.L
                                        * Referenced by: '<S124>/KalmanGainL'
                                        */
  real_T KalmanGainM_Value_h;          /* Expression: pInitialization.M
                                        * Referenced by: '<S124>/KalmanGainM'
                                        */
  real_T CovarianceZ_Value_c;          /* Expression: pInitialization.Z
                                        * Referenced by: '<S236>/CovarianceZ'
                                        */
  real_T Altitude_Value;               /* Expression: -1
                                        * Referenced by: '<S1>/Altitude'
                                        */
  real_T Constant10_Value;             /* Expression: 0
                                        * Referenced by: '<S12>/Constant10'
                                        */
  real32_T Lykyhatkk1_Y0_f;            /* Computed Parameter: Lykyhatkk1_Y0_f
                                        * Referenced by: '<S175>/L*(y[k]-yhat[k|k-1])'
                                        */
  real32_T deltax_Y0_ks;               /* Computed Parameter: deltax_Y0_ks
                                        * Referenced by: '<S177>/deltax'
                                        */
  real32_T KalmanGainM_Value_d[2];     /* Expression: pInitialization.M
                                        * Referenced by: '<S14>/KalmanGainM'
                                        */
  real32_T CovarianceZ_Value_b[4];     /* Expression: pInitialization.Z
                                        * Referenced by: '<S14>/CovarianceZ'
                                        */
  real32_T Gain1_Gain;                 /* Computed Parameter: Gain1_Gain
                                        * Referenced by: '<S6>/Gain1'
                                        */
  real32_T Gain_Gain;                  /* Computed Parameter: Gain_Gain
                                        * Referenced by: '<S6>/Gain'
                                        */
  real32_T A_Value_k;                  /* Computed Parameter: A_Value_k
                                        * Referenced by: '<S123>/A'
                                        */
  real32_T B_Value_n;                  /* Computed Parameter: B_Value_n
                                        * Referenced by: '<S123>/B'
                                        */
  real32_T C_Value_c;                  /* Computed Parameter: C_Value_c
                                        * Referenced by: '<S123>/C'
                                        */
  real32_T D_Value_o;                  /* Computed Parameter: D_Value_o
                                        * Referenced by: '<S123>/D'
                                        */
  real32_T X0_Value_i;                 /* Computed Parameter: X0_Value_i
                                        * Referenced by: '<S123>/X0'
                                        */
  real32_T CovarianceZ_Value_l;        /* Expression: pInitialization.Z
                                        * Referenced by: '<S180>/CovarianceZ'
                                        */
  boolean_T Enable_Value;              /* Expression: true()
                                        * Referenced by: '<S13>/Enable'
                                        */
  boolean_T isSqrtUsed_Value;          /* Expression: pInitialization.isSqrtUsed
                                        * Referenced by: '<S63>/isSqrtUsed'
                                        */
  boolean_T Enable_Value_k;            /* Expression: true()
                                        * Referenced by: '<S68>/Enable'
                                        */
  boolean_T isSqrtUsed_Value_f;        /* Expression: pInitialization.isSqrtUsed
                                        * Referenced by: '<S118>/isSqrtUsed'
                                        */
  boolean_T isSqrtUsed_Value_d;        /* Expression: pInitialization.isSqrtUsed
                                        * Referenced by: '<S173>/isSqrtUsed'
                                        */
  boolean_T Enable_Value_j;            /* Expression: true()
                                        * Referenced by: '<S123>/Enable'
                                        */
  boolean_T isSqrtUsed_Value_i;        /* Expression: pInitialization.isSqrtUsed
                                        * Referenced by: '<S229>/isSqrtUsed'
                                        */
  boolean_T Enable_Value_p;            /* Expression: true()
                                        * Referenced by: '<S179>/Enable'
                                        */
  boolean_T isSqrtUsed_Value_g;        /* Expression: pInitialization.isSqrtUsed
                                        * Referenced by: '<S285>/isSqrtUsed'
                                        */
  boolean_T Enable_Value_i;            /* Expression: true()
                                        * Referenced by: '<S235>/Enable'
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
  P_EnabledSubsystem_parrot_get_T EnabledSubsystem_j;/* '<S263>/Enabled Subsystem' */
  P_MeasurementUpdate_parrot_ge_T MeasurementUpdate_b;/* '<S256>/MeasurementUpdate' */
  P_EnabledSubsystem_parrot_get_T EnabledSubsystem_d;/* '<S207>/Enabled Subsystem' */
  P_MeasurementUpdate_parrot_ge_T MeasurementUpdate_d;/* '<S200>/MeasurementUpdate' */
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
extern P_parrot_gettingstarted_T parrot_gettingstarted_P;

/* Block signals (default storage) */
extern B_parrot_gettingstarted_T parrot_gettingstarted_B;

/* Block states (default storage) */
extern DW_parrot_gettingstarted_T parrot_gettingstarted_DW;

/* External outputs (root outports fed by signals with default storage) */
extern ExtY_parrot_gettingstarted_T parrot_gettingstarted_Y;

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
extern void parrot_gettingstarted_initialize(void);
extern void parrot_gettingstarted_step(void);
extern void parrot_gettingstarted_terminate(void);

/* Real-time Model object */
extern RT_MODEL_parrot_gettingstarte_T *const parrot_gettingstarted_M;
extern volatile boolean_T stopRequested;
extern volatile boolean_T runModel;

/*-
 * These blocks were eliminated from the model due to optimizations:
 *
 * Block '<S2>/Constant10' : Unused code path elimination
 * Block '<S2>/Constant11' : Unused code path elimination
 * Block '<S2>/K_v' : Unused code path elimination
 * Block '<S2>/Subtract2' : Unused code path elimination
 * Block '<S2>/Subtract4' : Unused code path elimination
 * Block '<S2>/Subtract5' : Unused code path elimination
 * Block '<S3>/Constant10' : Unused code path elimination
 * Block '<S3>/Constant11' : Unused code path elimination
 * Block '<S3>/K_u' : Unused code path elimination
 * Block '<S3>/Subtract1' : Unused code path elimination
 * Block '<S3>/Subtract2' : Unused code path elimination
 * Block '<S3>/Subtract5' : Unused code path elimination
 * Block '<S57>/Data Type Duplicate' : Unused code path elimination
 * Block '<S58>/Data Type Duplicate' : Unused code path elimination
 * Block '<S59>/Conversion' : Unused code path elimination
 * Block '<S59>/Data Type Duplicate' : Unused code path elimination
 * Block '<S60>/Data Type Duplicate' : Unused code path elimination
 * Block '<S17>/Data Type Duplicate' : Unused code path elimination
 * Block '<S18>/Data Type Duplicate' : Unused code path elimination
 * Block '<S19>/Data Type Duplicate' : Unused code path elimination
 * Block '<S20>/Data Type Duplicate' : Unused code path elimination
 * Block '<S22>/Data Type Duplicate' : Unused code path elimination
 * Block '<S23>/Data Type Duplicate' : Unused code path elimination
 * Block '<S24>/Data Type Duplicate' : Unused code path elimination
 * Block '<S25>/Conversion' : Unused code path elimination
 * Block '<S25>/Data Type Duplicate' : Unused code path elimination
 * Block '<S26>/Data Type Duplicate' : Unused code path elimination
 * Block '<S27>/Data Type Duplicate' : Unused code path elimination
 * Block '<S28>/Data Type Duplicate' : Unused code path elimination
 * Block '<S30>/Data Type Duplicate' : Unused code path elimination
 * Block '<S31>/Data Type Duplicate' : Unused code path elimination
 * Block '<S13>/G' : Unused code path elimination
 * Block '<S13>/H' : Unused code path elimination
 * Block '<S13>/N' : Unused code path elimination
 * Block '<S13>/P0' : Unused code path elimination
 * Block '<S13>/Q' : Unused code path elimination
 * Block '<S13>/R' : Unused code path elimination
 * Block '<S55>/CheckSignalProperties' : Unused code path elimination
 * Block '<S56>/CheckSignalProperties' : Unused code path elimination
 * Block '<S112>/Data Type Duplicate' : Unused code path elimination
 * Block '<S113>/Data Type Duplicate' : Unused code path elimination
 * Block '<S114>/Conversion' : Unused code path elimination
 * Block '<S114>/Data Type Duplicate' : Unused code path elimination
 * Block '<S115>/Data Type Duplicate' : Unused code path elimination
 * Block '<S72>/Data Type Duplicate' : Unused code path elimination
 * Block '<S73>/Data Type Duplicate' : Unused code path elimination
 * Block '<S74>/Data Type Duplicate' : Unused code path elimination
 * Block '<S75>/Data Type Duplicate' : Unused code path elimination
 * Block '<S77>/Data Type Duplicate' : Unused code path elimination
 * Block '<S78>/Data Type Duplicate' : Unused code path elimination
 * Block '<S79>/Data Type Duplicate' : Unused code path elimination
 * Block '<S80>/Conversion' : Unused code path elimination
 * Block '<S80>/Data Type Duplicate' : Unused code path elimination
 * Block '<S81>/Data Type Duplicate' : Unused code path elimination
 * Block '<S82>/Data Type Duplicate' : Unused code path elimination
 * Block '<S83>/Data Type Duplicate' : Unused code path elimination
 * Block '<S85>/Data Type Duplicate' : Unused code path elimination
 * Block '<S86>/Data Type Duplicate' : Unused code path elimination
 * Block '<S68>/G' : Unused code path elimination
 * Block '<S68>/H' : Unused code path elimination
 * Block '<S68>/N' : Unused code path elimination
 * Block '<S68>/P0' : Unused code path elimination
 * Block '<S68>/Q' : Unused code path elimination
 * Block '<S68>/R' : Unused code path elimination
 * Block '<S110>/CheckSignalProperties' : Unused code path elimination
 * Block '<S111>/CheckSignalProperties' : Unused code path elimination
 * Block '<S167>/Data Type Duplicate' : Unused code path elimination
 * Block '<S168>/Data Type Duplicate' : Unused code path elimination
 * Block '<S169>/Conversion' : Unused code path elimination
 * Block '<S169>/Data Type Duplicate' : Unused code path elimination
 * Block '<S170>/Data Type Duplicate' : Unused code path elimination
 * Block '<S127>/Data Type Duplicate' : Unused code path elimination
 * Block '<S128>/Data Type Duplicate' : Unused code path elimination
 * Block '<S129>/Data Type Duplicate' : Unused code path elimination
 * Block '<S130>/Data Type Duplicate' : Unused code path elimination
 * Block '<S132>/Data Type Duplicate' : Unused code path elimination
 * Block '<S133>/Data Type Duplicate' : Unused code path elimination
 * Block '<S134>/Data Type Duplicate' : Unused code path elimination
 * Block '<S135>/Conversion' : Unused code path elimination
 * Block '<S135>/Data Type Duplicate' : Unused code path elimination
 * Block '<S136>/Data Type Duplicate' : Unused code path elimination
 * Block '<S137>/Data Type Duplicate' : Unused code path elimination
 * Block '<S138>/Data Type Duplicate' : Unused code path elimination
 * Block '<S140>/Data Type Duplicate' : Unused code path elimination
 * Block '<S141>/Data Type Duplicate' : Unused code path elimination
 * Block '<S123>/G' : Unused code path elimination
 * Block '<S123>/H' : Unused code path elimination
 * Block '<S123>/N' : Unused code path elimination
 * Block '<S123>/P0' : Unused code path elimination
 * Block '<S123>/Q' : Unused code path elimination
 * Block '<S123>/R' : Unused code path elimination
 * Block '<S165>/CheckSignalProperties' : Unused code path elimination
 * Block '<S166>/CheckSignalProperties' : Unused code path elimination
 * Block '<S7>/Cast To Single' : Unused code path elimination
 * Block '<S7>/Constant' : Unused code path elimination
 * Block '<S7>/Constant5' : Unused code path elimination
 * Block '<S7>/Data Type Conversion2' : Unused code path elimination
 * Block '<S7>/Gain2' : Unused code path elimination
 * Block '<S7>/Product' : Unused code path elimination
 * Block '<S7>/Rate Transition4' : Unused code path elimination
 * Block '<S7>/Rate Transition5' : Unused code path elimination
 * Block '<S7>/Sum1' : Unused code path elimination
 * Block '<S7>/Sum3' : Unused code path elimination
 * Block '<S179>/A' : Unused code path elimination
 * Block '<S179>/B' : Unused code path elimination
 * Block '<S179>/C' : Unused code path elimination
 * Block '<S223>/Conversion' : Unused code path elimination
 * Block '<S223>/Data Type Duplicate' : Unused code path elimination
 * Block '<S224>/Conversion' : Unused code path elimination
 * Block '<S224>/Data Type Duplicate' : Unused code path elimination
 * Block '<S225>/Conversion' : Unused code path elimination
 * Block '<S225>/Data Type Duplicate' : Unused code path elimination
 * Block '<S226>/Data Type Duplicate' : Unused code path elimination
 * Block '<S180>/KalmanGainL' : Unused code path elimination
 * Block '<S180>/KalmanGainM' : Unused code path elimination
 * Block '<S179>/D' : Unused code path elimination
 * Block '<S183>/Data Type Duplicate' : Unused code path elimination
 * Block '<S184>/Data Type Duplicate' : Unused code path elimination
 * Block '<S185>/Data Type Duplicate' : Unused code path elimination
 * Block '<S186>/Data Type Duplicate' : Unused code path elimination
 * Block '<S188>/Data Type Duplicate' : Unused code path elimination
 * Block '<S189>/Data Type Duplicate' : Unused code path elimination
 * Block '<S190>/Data Type Duplicate' : Unused code path elimination
 * Block '<S191>/Conversion' : Unused code path elimination
 * Block '<S191>/Data Type Duplicate' : Unused code path elimination
 * Block '<S192>/Data Type Duplicate' : Unused code path elimination
 * Block '<S193>/Data Type Duplicate' : Unused code path elimination
 * Block '<S194>/Data Type Duplicate' : Unused code path elimination
 * Block '<S196>/Conversion' : Unused code path elimination
 * Block '<S196>/Data Type Duplicate' : Unused code path elimination
 * Block '<S197>/Data Type Duplicate' : Unused code path elimination
 * Block '<S179>/G' : Unused code path elimination
 * Block '<S179>/H' : Unused code path elimination
 * Block '<S179>/MemoryX' : Unused code path elimination
 * Block '<S179>/N' : Unused code path elimination
 * Block '<S200>/A[k]*xhat[k|k-1]' : Unused code path elimination
 * Block '<S200>/Add' : Unused code path elimination
 * Block '<S200>/B[k]*u[k]' : Unused code path elimination
 * Block '<S231>/Add1' : Unused code path elimination
 * Block '<S231>/C[k]*xhat[k|k-1]' : Unused code path elimination
 * Block '<S231>/D[k]*u[k]' : Unused code path elimination
 * Block '<S231>/Product3' : Unused code path elimination
 * Block '<S231>/Sum' : Unused code path elimination
 * Block '<S200>/Reshape' : Unused code path elimination
 * Block '<S179>/P0' : Unused code path elimination
 * Block '<S179>/Q' : Unused code path elimination
 * Block '<S179>/R' : Unused code path elimination
 * Block '<S179>/ReshapeX0' : Unused code path elimination
 * Block '<S179>/Reshapeu' : Unused code path elimination
 * Block '<S179>/Reshapexhat' : Unused code path elimination
 * Block '<S179>/Reshapey' : Unused code path elimination
 * Block '<S207>/Add' : Unused code path elimination
 * Block '<S233>/Add1' : Unused code path elimination
 * Block '<S233>/Product' : Unused code path elimination
 * Block '<S233>/Product2' : Unused code path elimination
 * Block '<S179>/X0' : Unused code path elimination
 * Block '<S221>/CheckSignalProperties' : Unused code path elimination
 * Block '<S222>/CheckSignalProperties' : Unused code path elimination
 * Block '<S8>/Cast To Single' : Unused code path elimination
 * Block '<S8>/Constant3' : Unused code path elimination
 * Block '<S8>/Constant4' : Unused code path elimination
 * Block '<S8>/Data Type Conversion3' : Unused code path elimination
 * Block '<S8>/Gain3' : Unused code path elimination
 * Block '<S8>/Product1' : Unused code path elimination
 * Block '<S8>/Rate Transition6' : Unused code path elimination
 * Block '<S8>/Rate Transition7' : Unused code path elimination
 * Block '<S8>/Sum2' : Unused code path elimination
 * Block '<S8>/Sum4' : Unused code path elimination
 * Block '<S235>/A' : Unused code path elimination
 * Block '<S235>/B' : Unused code path elimination
 * Block '<S235>/C' : Unused code path elimination
 * Block '<S279>/Conversion' : Unused code path elimination
 * Block '<S279>/Data Type Duplicate' : Unused code path elimination
 * Block '<S280>/Conversion' : Unused code path elimination
 * Block '<S280>/Data Type Duplicate' : Unused code path elimination
 * Block '<S281>/Conversion' : Unused code path elimination
 * Block '<S281>/Data Type Duplicate' : Unused code path elimination
 * Block '<S282>/Data Type Duplicate' : Unused code path elimination
 * Block '<S236>/KalmanGainL' : Unused code path elimination
 * Block '<S236>/KalmanGainM' : Unused code path elimination
 * Block '<S235>/D' : Unused code path elimination
 * Block '<S239>/Data Type Duplicate' : Unused code path elimination
 * Block '<S240>/Data Type Duplicate' : Unused code path elimination
 * Block '<S241>/Data Type Duplicate' : Unused code path elimination
 * Block '<S242>/Data Type Duplicate' : Unused code path elimination
 * Block '<S244>/Data Type Duplicate' : Unused code path elimination
 * Block '<S245>/Data Type Duplicate' : Unused code path elimination
 * Block '<S246>/Data Type Duplicate' : Unused code path elimination
 * Block '<S247>/Conversion' : Unused code path elimination
 * Block '<S247>/Data Type Duplicate' : Unused code path elimination
 * Block '<S248>/Data Type Duplicate' : Unused code path elimination
 * Block '<S249>/Data Type Duplicate' : Unused code path elimination
 * Block '<S250>/Data Type Duplicate' : Unused code path elimination
 * Block '<S252>/Conversion' : Unused code path elimination
 * Block '<S252>/Data Type Duplicate' : Unused code path elimination
 * Block '<S253>/Data Type Duplicate' : Unused code path elimination
 * Block '<S235>/G' : Unused code path elimination
 * Block '<S235>/H' : Unused code path elimination
 * Block '<S235>/MemoryX' : Unused code path elimination
 * Block '<S235>/N' : Unused code path elimination
 * Block '<S256>/A[k]*xhat[k|k-1]' : Unused code path elimination
 * Block '<S256>/Add' : Unused code path elimination
 * Block '<S256>/B[k]*u[k]' : Unused code path elimination
 * Block '<S287>/Add1' : Unused code path elimination
 * Block '<S287>/C[k]*xhat[k|k-1]' : Unused code path elimination
 * Block '<S287>/D[k]*u[k]' : Unused code path elimination
 * Block '<S287>/Product3' : Unused code path elimination
 * Block '<S287>/Sum' : Unused code path elimination
 * Block '<S256>/Reshape' : Unused code path elimination
 * Block '<S235>/P0' : Unused code path elimination
 * Block '<S235>/Q' : Unused code path elimination
 * Block '<S235>/R' : Unused code path elimination
 * Block '<S235>/ReshapeX0' : Unused code path elimination
 * Block '<S235>/Reshapeu' : Unused code path elimination
 * Block '<S235>/Reshapexhat' : Unused code path elimination
 * Block '<S235>/Reshapey' : Unused code path elimination
 * Block '<S263>/Add' : Unused code path elimination
 * Block '<S289>/Add1' : Unused code path elimination
 * Block '<S289>/Product' : Unused code path elimination
 * Block '<S289>/Product2' : Unused code path elimination
 * Block '<S235>/X0' : Unused code path elimination
 * Block '<S277>/CheckSignalProperties' : Unused code path elimination
 * Block '<S278>/CheckSignalProperties' : Unused code path elimination
 * Block '<S10>/K_r' : Unused code path elimination
 * Block '<S10>/Subtract3' : Unused code path elimination
 * Block '<S1>/r' : Unused code path elimination
 * Block '<S1>/u' : Unused code path elimination
 * Block '<S1>/v' : Unused code path elimination
 * Block '<S4>/Rate Transition8' : Eliminated since input and output rates are identical
 * Block '<S4>/Rate Transition9' : Eliminated since input and output rates are identical
 * Block '<S57>/Conversion' : Eliminate redundant data type conversion
 * Block '<S30>/Conversion' : Eliminate redundant data type conversion
 * Block '<S34>/Reshape' : Reshape block reduction
 * Block '<S13>/ReshapeX0' : Reshape block reduction
 * Block '<S13>/Reshapeu' : Reshape block reduction
 * Block '<S13>/Reshapexhat' : Reshape block reduction
 * Block '<S13>/Reshapey' : Reshape block reduction
 * Block '<S5>/Rate Transition' : Eliminated since input and output rates are identical
 * Block '<S5>/Rate Transition1' : Eliminated since input and output rates are identical
 * Block '<S112>/Conversion' : Eliminate redundant data type conversion
 * Block '<S113>/Conversion' : Eliminate redundant data type conversion
 * Block '<S115>/Conversion' : Eliminate redundant data type conversion
 * Block '<S85>/Conversion' : Eliminate redundant data type conversion
 * Block '<S89>/Reshape' : Reshape block reduction
 * Block '<S68>/ReshapeX0' : Reshape block reduction
 * Block '<S68>/Reshapeu' : Reshape block reduction
 * Block '<S68>/Reshapexhat' : Reshape block reduction
 * Block '<S68>/Reshapey' : Reshape block reduction
 * Block '<S6>/Cast To Single' : Eliminate redundant data type conversion
 * Block '<S140>/Conversion' : Eliminate redundant data type conversion
 * Block '<S144>/Reshape' : Reshape block reduction
 * Block '<S123>/ReshapeX0' : Reshape block reduction
 * Block '<S123>/Reshapeu' : Reshape block reduction
 * Block '<S123>/Reshapexhat' : Reshape block reduction
 * Block '<S123>/Reshapey' : Reshape block reduction
 * Block '<S6>/Rate Transition2' : Eliminated since input and output rates are identical
 * Block '<S6>/Rate Transition3' : Eliminated since input and output rates are identical
 * Block '<S282>/Conversion' : Eliminate redundant data type conversion
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
 * '<Root>' : 'parrot_gettingstarted'
 * '<S1>'   : 'parrot_gettingstarted/Flight_Control_System'
 * '<S2>'   : 'parrot_gettingstarted/Flight_Control_System/Aileron Regulator'
 * '<S3>'   : 'parrot_gettingstarted/Flight_Control_System/Elevator Regulator'
 * '<S4>'   : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate'
 * '<S5>'   : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Phi'
 * '<S6>'   : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Theta'
 * '<S7>'   : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: U'
 * '<S8>'   : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: V_est'
 * '<S9>'   : 'parrot_gettingstarted/Flight_Control_System/PD rotate'
 * '<S10>'  : 'parrot_gettingstarted/Flight_Control_System/Rudder Regulator'
 * '<S11>'  : 'parrot_gettingstarted/Flight_Control_System/Subsystem'
 * '<S12>'  : 'parrot_gettingstarted/Flight_Control_System/Thrust Regulator'
 * '<S13>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height'
 * '<S14>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/CalculatePL'
 * '<S15>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/CalculateYhat'
 * '<S16>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/CovarianceOutputConfigurator'
 * '<S17>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/DataTypeConversionA'
 * '<S18>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/DataTypeConversionB'
 * '<S19>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/DataTypeConversionC'
 * '<S20>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/DataTypeConversionD'
 * '<S21>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/DataTypeConversionEnable'
 * '<S22>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/DataTypeConversionG'
 * '<S23>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/DataTypeConversionH'
 * '<S24>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/DataTypeConversionN'
 * '<S25>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/DataTypeConversionP'
 * '<S26>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/DataTypeConversionP0'
 * '<S27>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/DataTypeConversionQ'
 * '<S28>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/DataTypeConversionR'
 * '<S29>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/DataTypeConversionReset'
 * '<S30>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/DataTypeConversionX'
 * '<S31>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/DataTypeConversionX0'
 * '<S32>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/DataTypeConversionu'
 * '<S33>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/MemoryP'
 * '<S34>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/Observer'
 * '<S35>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/ReducedQRN'
 * '<S36>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/Reset'
 * '<S37>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/Reshapeyhat'
 * '<S38>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/ScalarExpansionP0'
 * '<S39>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/ScalarExpansionQ'
 * '<S40>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/ScalarExpansionR'
 * '<S41>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/UseCurrentEstimator'
 * '<S42>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/checkA'
 * '<S43>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/checkB'
 * '<S44>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/checkC'
 * '<S45>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/checkD'
 * '<S46>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/checkEnable'
 * '<S47>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/checkG'
 * '<S48>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/checkH'
 * '<S49>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/checkN'
 * '<S50>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/checkP0'
 * '<S51>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/checkQ'
 * '<S52>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/checkR'
 * '<S53>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/checkReset'
 * '<S54>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/checkX0'
 * '<S55>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/checku'
 * '<S56>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/checky'
 * '<S57>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/CalculatePL/DataTypeConversionL'
 * '<S58>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/CalculatePL/DataTypeConversionM'
 * '<S59>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/CalculatePL/DataTypeConversionP'
 * '<S60>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/CalculatePL/DataTypeConversionZ'
 * '<S61>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/CalculatePL/Ground'
 * '<S62>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/CalculateYhat/Ground'
 * '<S63>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/CovarianceOutputConfigurator/decideOutput'
 * '<S64>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/CovarianceOutputConfigurator/decideOutput/SqrtUsedFcn'
 * '<S65>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/Observer/MeasurementUpdate'
 * '<S66>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/ReducedQRN/Ground'
 * '<S67>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/UseCurrentEstimator/Enabled Subsystem'
 * '<S68>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Phi/Roll Angle'
 * '<S69>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Phi/Roll Angle/CalculatePL'
 * '<S70>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Phi/Roll Angle/CalculateYhat'
 * '<S71>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Phi/Roll Angle/CovarianceOutputConfigurator'
 * '<S72>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Phi/Roll Angle/DataTypeConversionA'
 * '<S73>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Phi/Roll Angle/DataTypeConversionB'
 * '<S74>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Phi/Roll Angle/DataTypeConversionC'
 * '<S75>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Phi/Roll Angle/DataTypeConversionD'
 * '<S76>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Phi/Roll Angle/DataTypeConversionEnable'
 * '<S77>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Phi/Roll Angle/DataTypeConversionG'
 * '<S78>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Phi/Roll Angle/DataTypeConversionH'
 * '<S79>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Phi/Roll Angle/DataTypeConversionN'
 * '<S80>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Phi/Roll Angle/DataTypeConversionP'
 * '<S81>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Phi/Roll Angle/DataTypeConversionP0'
 * '<S82>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Phi/Roll Angle/DataTypeConversionQ'
 * '<S83>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Phi/Roll Angle/DataTypeConversionR'
 * '<S84>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Phi/Roll Angle/DataTypeConversionReset'
 * '<S85>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Phi/Roll Angle/DataTypeConversionX'
 * '<S86>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Phi/Roll Angle/DataTypeConversionX0'
 * '<S87>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Phi/Roll Angle/DataTypeConversionu'
 * '<S88>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Phi/Roll Angle/MemoryP'
 * '<S89>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Phi/Roll Angle/Observer'
 * '<S90>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Phi/Roll Angle/ReducedQRN'
 * '<S91>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Phi/Roll Angle/Reset'
 * '<S92>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Phi/Roll Angle/Reshapeyhat'
 * '<S93>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Phi/Roll Angle/ScalarExpansionP0'
 * '<S94>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Phi/Roll Angle/ScalarExpansionQ'
 * '<S95>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Phi/Roll Angle/ScalarExpansionR'
 * '<S96>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Phi/Roll Angle/UseCurrentEstimator'
 * '<S97>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Phi/Roll Angle/checkA'
 * '<S98>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Phi/Roll Angle/checkB'
 * '<S99>'  : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Phi/Roll Angle/checkC'
 * '<S100>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Phi/Roll Angle/checkD'
 * '<S101>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Phi/Roll Angle/checkEnable'
 * '<S102>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Phi/Roll Angle/checkG'
 * '<S103>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Phi/Roll Angle/checkH'
 * '<S104>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Phi/Roll Angle/checkN'
 * '<S105>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Phi/Roll Angle/checkP0'
 * '<S106>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Phi/Roll Angle/checkQ'
 * '<S107>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Phi/Roll Angle/checkR'
 * '<S108>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Phi/Roll Angle/checkReset'
 * '<S109>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Phi/Roll Angle/checkX0'
 * '<S110>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Phi/Roll Angle/checku'
 * '<S111>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Phi/Roll Angle/checky'
 * '<S112>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Phi/Roll Angle/CalculatePL/DataTypeConversionL'
 * '<S113>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Phi/Roll Angle/CalculatePL/DataTypeConversionM'
 * '<S114>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Phi/Roll Angle/CalculatePL/DataTypeConversionP'
 * '<S115>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Phi/Roll Angle/CalculatePL/DataTypeConversionZ'
 * '<S116>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Phi/Roll Angle/CalculatePL/Ground'
 * '<S117>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Phi/Roll Angle/CalculateYhat/Ground'
 * '<S118>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Phi/Roll Angle/CovarianceOutputConfigurator/decideOutput'
 * '<S119>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Phi/Roll Angle/CovarianceOutputConfigurator/decideOutput/SqrtUsedFcn'
 * '<S120>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Phi/Roll Angle/Observer/MeasurementUpdate'
 * '<S121>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Phi/Roll Angle/ReducedQRN/Ground'
 * '<S122>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Phi/Roll Angle/UseCurrentEstimator/Enabled Subsystem'
 * '<S123>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Theta/Pitch Angle'
 * '<S124>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/CalculatePL'
 * '<S125>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/CalculateYhat'
 * '<S126>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/CovarianceOutputConfigurator'
 * '<S127>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/DataTypeConversionA'
 * '<S128>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/DataTypeConversionB'
 * '<S129>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/DataTypeConversionC'
 * '<S130>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/DataTypeConversionD'
 * '<S131>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/DataTypeConversionEnable'
 * '<S132>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/DataTypeConversionG'
 * '<S133>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/DataTypeConversionH'
 * '<S134>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/DataTypeConversionN'
 * '<S135>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/DataTypeConversionP'
 * '<S136>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/DataTypeConversionP0'
 * '<S137>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/DataTypeConversionQ'
 * '<S138>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/DataTypeConversionR'
 * '<S139>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/DataTypeConversionReset'
 * '<S140>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/DataTypeConversionX'
 * '<S141>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/DataTypeConversionX0'
 * '<S142>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/DataTypeConversionu'
 * '<S143>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/MemoryP'
 * '<S144>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/Observer'
 * '<S145>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/ReducedQRN'
 * '<S146>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/Reset'
 * '<S147>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/Reshapeyhat'
 * '<S148>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/ScalarExpansionP0'
 * '<S149>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/ScalarExpansionQ'
 * '<S150>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/ScalarExpansionR'
 * '<S151>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/UseCurrentEstimator'
 * '<S152>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/checkA'
 * '<S153>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/checkB'
 * '<S154>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/checkC'
 * '<S155>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/checkD'
 * '<S156>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/checkEnable'
 * '<S157>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/checkG'
 * '<S158>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/checkH'
 * '<S159>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/checkN'
 * '<S160>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/checkP0'
 * '<S161>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/checkQ'
 * '<S162>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/checkR'
 * '<S163>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/checkReset'
 * '<S164>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/checkX0'
 * '<S165>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/checku'
 * '<S166>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/checky'
 * '<S167>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/CalculatePL/DataTypeConversionL'
 * '<S168>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/CalculatePL/DataTypeConversionM'
 * '<S169>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/CalculatePL/DataTypeConversionP'
 * '<S170>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/CalculatePL/DataTypeConversionZ'
 * '<S171>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/CalculatePL/Ground'
 * '<S172>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/CalculateYhat/Ground'
 * '<S173>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/CovarianceOutputConfigurator/decideOutput'
 * '<S174>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/CovarianceOutputConfigurator/decideOutput/SqrtUsedFcn'
 * '<S175>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/Observer/MeasurementUpdate'
 * '<S176>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/ReducedQRN/Ground'
 * '<S177>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/UseCurrentEstimator/Enabled Subsystem'
 * '<S178>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: U/MATLAB Function'
 * '<S179>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: U/x_velocity'
 * '<S180>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: U/x_velocity/CalculatePL'
 * '<S181>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: U/x_velocity/CalculateYhat'
 * '<S182>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: U/x_velocity/CovarianceOutputConfigurator'
 * '<S183>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: U/x_velocity/DataTypeConversionA'
 * '<S184>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: U/x_velocity/DataTypeConversionB'
 * '<S185>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: U/x_velocity/DataTypeConversionC'
 * '<S186>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: U/x_velocity/DataTypeConversionD'
 * '<S187>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: U/x_velocity/DataTypeConversionEnable'
 * '<S188>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: U/x_velocity/DataTypeConversionG'
 * '<S189>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: U/x_velocity/DataTypeConversionH'
 * '<S190>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: U/x_velocity/DataTypeConversionN'
 * '<S191>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: U/x_velocity/DataTypeConversionP'
 * '<S192>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: U/x_velocity/DataTypeConversionP0'
 * '<S193>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: U/x_velocity/DataTypeConversionQ'
 * '<S194>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: U/x_velocity/DataTypeConversionR'
 * '<S195>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: U/x_velocity/DataTypeConversionReset'
 * '<S196>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: U/x_velocity/DataTypeConversionX'
 * '<S197>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: U/x_velocity/DataTypeConversionX0'
 * '<S198>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: U/x_velocity/DataTypeConversionu'
 * '<S199>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: U/x_velocity/MemoryP'
 * '<S200>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: U/x_velocity/Observer'
 * '<S201>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: U/x_velocity/ReducedQRN'
 * '<S202>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: U/x_velocity/Reset'
 * '<S203>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: U/x_velocity/Reshapeyhat'
 * '<S204>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: U/x_velocity/ScalarExpansionP0'
 * '<S205>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: U/x_velocity/ScalarExpansionQ'
 * '<S206>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: U/x_velocity/ScalarExpansionR'
 * '<S207>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: U/x_velocity/UseCurrentEstimator'
 * '<S208>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: U/x_velocity/checkA'
 * '<S209>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: U/x_velocity/checkB'
 * '<S210>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: U/x_velocity/checkC'
 * '<S211>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: U/x_velocity/checkD'
 * '<S212>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: U/x_velocity/checkEnable'
 * '<S213>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: U/x_velocity/checkG'
 * '<S214>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: U/x_velocity/checkH'
 * '<S215>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: U/x_velocity/checkN'
 * '<S216>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: U/x_velocity/checkP0'
 * '<S217>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: U/x_velocity/checkQ'
 * '<S218>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: U/x_velocity/checkR'
 * '<S219>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: U/x_velocity/checkReset'
 * '<S220>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: U/x_velocity/checkX0'
 * '<S221>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: U/x_velocity/checku'
 * '<S222>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: U/x_velocity/checky'
 * '<S223>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: U/x_velocity/CalculatePL/DataTypeConversionL'
 * '<S224>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: U/x_velocity/CalculatePL/DataTypeConversionM'
 * '<S225>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: U/x_velocity/CalculatePL/DataTypeConversionP'
 * '<S226>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: U/x_velocity/CalculatePL/DataTypeConversionZ'
 * '<S227>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: U/x_velocity/CalculatePL/Ground'
 * '<S228>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: U/x_velocity/CalculateYhat/Ground'
 * '<S229>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: U/x_velocity/CovarianceOutputConfigurator/decideOutput'
 * '<S230>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: U/x_velocity/CovarianceOutputConfigurator/decideOutput/SqrtUsedFcn'
 * '<S231>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: U/x_velocity/Observer/MeasurementUpdate'
 * '<S232>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: U/x_velocity/ReducedQRN/Ground'
 * '<S233>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: U/x_velocity/UseCurrentEstimator/Enabled Subsystem'
 * '<S234>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: V_est/MATLAB Function1'
 * '<S235>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: V_est/y_velocity'
 * '<S236>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: V_est/y_velocity/CalculatePL'
 * '<S237>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: V_est/y_velocity/CalculateYhat'
 * '<S238>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: V_est/y_velocity/CovarianceOutputConfigurator'
 * '<S239>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: V_est/y_velocity/DataTypeConversionA'
 * '<S240>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: V_est/y_velocity/DataTypeConversionB'
 * '<S241>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: V_est/y_velocity/DataTypeConversionC'
 * '<S242>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: V_est/y_velocity/DataTypeConversionD'
 * '<S243>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: V_est/y_velocity/DataTypeConversionEnable'
 * '<S244>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: V_est/y_velocity/DataTypeConversionG'
 * '<S245>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: V_est/y_velocity/DataTypeConversionH'
 * '<S246>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: V_est/y_velocity/DataTypeConversionN'
 * '<S247>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: V_est/y_velocity/DataTypeConversionP'
 * '<S248>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: V_est/y_velocity/DataTypeConversionP0'
 * '<S249>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: V_est/y_velocity/DataTypeConversionQ'
 * '<S250>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: V_est/y_velocity/DataTypeConversionR'
 * '<S251>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: V_est/y_velocity/DataTypeConversionReset'
 * '<S252>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: V_est/y_velocity/DataTypeConversionX'
 * '<S253>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: V_est/y_velocity/DataTypeConversionX0'
 * '<S254>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: V_est/y_velocity/DataTypeConversionu'
 * '<S255>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: V_est/y_velocity/MemoryP'
 * '<S256>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: V_est/y_velocity/Observer'
 * '<S257>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: V_est/y_velocity/ReducedQRN'
 * '<S258>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: V_est/y_velocity/Reset'
 * '<S259>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: V_est/y_velocity/Reshapeyhat'
 * '<S260>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: V_est/y_velocity/ScalarExpansionP0'
 * '<S261>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: V_est/y_velocity/ScalarExpansionQ'
 * '<S262>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: V_est/y_velocity/ScalarExpansionR'
 * '<S263>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: V_est/y_velocity/UseCurrentEstimator'
 * '<S264>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: V_est/y_velocity/checkA'
 * '<S265>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: V_est/y_velocity/checkB'
 * '<S266>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: V_est/y_velocity/checkC'
 * '<S267>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: V_est/y_velocity/checkD'
 * '<S268>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: V_est/y_velocity/checkEnable'
 * '<S269>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: V_est/y_velocity/checkG'
 * '<S270>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: V_est/y_velocity/checkH'
 * '<S271>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: V_est/y_velocity/checkN'
 * '<S272>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: V_est/y_velocity/checkP0'
 * '<S273>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: V_est/y_velocity/checkQ'
 * '<S274>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: V_est/y_velocity/checkR'
 * '<S275>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: V_est/y_velocity/checkReset'
 * '<S276>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: V_est/y_velocity/checkX0'
 * '<S277>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: V_est/y_velocity/checku'
 * '<S278>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: V_est/y_velocity/checky'
 * '<S279>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: V_est/y_velocity/CalculatePL/DataTypeConversionL'
 * '<S280>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: V_est/y_velocity/CalculatePL/DataTypeConversionM'
 * '<S281>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: V_est/y_velocity/CalculatePL/DataTypeConversionP'
 * '<S282>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: V_est/y_velocity/CalculatePL/DataTypeConversionZ'
 * '<S283>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: V_est/y_velocity/CalculatePL/Ground'
 * '<S284>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: V_est/y_velocity/CalculateYhat/Ground'
 * '<S285>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: V_est/y_velocity/CovarianceOutputConfigurator/decideOutput'
 * '<S286>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: V_est/y_velocity/CovarianceOutputConfigurator/decideOutput/SqrtUsedFcn'
 * '<S287>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: V_est/y_velocity/Observer/MeasurementUpdate'
 * '<S288>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: V_est/y_velocity/ReducedQRN/Ground'
 * '<S289>' : 'parrot_gettingstarted/Flight_Control_System/Kalman Filter: V_est/y_velocity/UseCurrentEstimator/Enabled Subsystem'
 */
#endif                                 /* RTW_HEADER_parrot_gettingstarted_h_ */
