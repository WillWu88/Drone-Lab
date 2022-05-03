/*
 * Controller.h
 *
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * Code generation for model "Controller".
 *
 * Model version              : 2.19
 * Simulink Coder version : 9.5 (R2021a) 14-Nov-2020
 * C source code generated on : Thu Apr 28 18:48:22 2022
 *
 * Target selection: ert.tlc
 * Note: GRT includes extra infrastructure and instrumentation for prototyping
 * Embedded hardware selection: ARM Compatible->ARM 9
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#ifndef RTW_HEADER_Controller_h_
#define RTW_HEADER_Controller_h_
#include <math.h>
#include <string.h>
#include <float.h>
#include <stddef.h>
#ifndef Controller_COMMON_INCLUDES_
#define Controller_COMMON_INCLUDES_
#include "rtwtypes.h"
#include "rtw_continuous.h"
#include "rtw_solver.h"
#include "rt_logging.h"
#endif                                 /* Controller_COMMON_INCLUDES_ */

#include "Controller_types.h"

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
#define rtmGetT(rtm)                   (rtmGetTPtr((rtm))[0])
#endif

#ifndef rtmGetTFinal
#define rtmGetTFinal(rtm)              ((rtm)->Timing.tFinal)
#endif

#ifndef rtmGetTPtr
#define rtmGetTPtr(rtm)                ((rtm)->Timing.t)
#endif

/* Block signals for system '<S90>/MeasurementUpdate' */
typedef struct {
  real_T Product3[2];                  /* '<S121>/Product3' */
} B_MeasurementUpdate_Controlle_T;

/* Block states (default storage) for system '<S90>/MeasurementUpdate' */
typedef struct {
  boolean_T MeasurementUpdate_MODE;    /* '<S90>/MeasurementUpdate' */
} DW_MeasurementUpdate_Controll_T;

/* Block signals for system '<S97>/Enabled Subsystem' */
typedef struct {
  real_T Product2[2];                  /* '<S123>/Product2' */
} B_EnabledSubsystem_Controller_T;

/* Block states (default storage) for system '<S97>/Enabled Subsystem' */
typedef struct {
  boolean_T EnabledSubsystem_MODE;     /* '<S97>/Enabled Subsystem' */
} DW_EnabledSubsystem_Controlle_T;

/* Block signals for system '<S7>/MATLAB Function' */
typedef struct {
  real32_T y;                          /* '<S7>/MATLAB Function' */
} B_MATLABFunction_Controller_T;

/* Block signals (default storage) */
typedef struct {
  real32_T a[9];
  real32_T b[9];
  real32_T y[9];
  real_T Product3[3];                  /* '<S66>/Product3' */
  real_T Add[3];                       /* '<S35>/Add' */
  real32_T CastToSingle[4];            /* '<S1>/Cast To Single' */
  real_T MemoryX_k[2];                 /* '<S69>/MemoryX' */
  real_T MemoryX_d[2];                 /* '<S236>/MemoryX' */
  real_T Conversion_k[2];              /* '<S225>/Conversion' */
  real_T MemoryX_g[2];                 /* '<S180>/MemoryX' */
  real_T Conversion_n[2];              /* '<S224>/Conversion' */
  real_T Add_d[2];                     /* '<S90>/Add' */
  real_T Add_p[2];                     /* '<S201>/Add' */
  real_T Add_f[2];                     /* '<S257>/Add' */
  real_T PbZandW;                      /* '<S4>/Data Type Conversion1' */
  real_T Phi_measure;                  /* '<S5>/Atan' */
  real_T vmeasure;                     /* '<S8>/Product1' */
  real_T v_Error;                      /* '<S2>/Subtract2' */
  real_T phi_error;                    /* '<S2>/Subtract5' */
  real_T umeasure;                     /* '<S7>/Product' */
  real_T u_error;                      /* '<S3>/Subtract1' */
  real_T theta_error;                  /* '<S3>/Subtract5' */
  real_T Sum5;                         /* '<S4>/Sum5' */
  real_T CastToDouble;                 /* '<S5>/Cast To Double' */
  real_T Sum4;                         /* '<S8>/Sum4' */
  real_T Product2[3];                  /* '<S68>/Product2' */
  real_T Clock1;                       /* '<S12>/Clock1' */
  real_T Ckxhatkk1;                    /* '<S66>/C[k]*xhat[k|k-1]' */
  real_T d;
  real_T d1;
  real_T Reshapey_c;                   /* '<S69>/Reshapey' */
  real_T Reshapey_k;                   /* '<S236>/Reshapey' */
  real_T Reshapey_b;                   /* '<S180>/Reshapey' */
  real_T Reshapeu_e;                   /* '<S69>/Reshapeu' */
  real32_T theta_measure;              /* '<S6>/Atan1' */
  real32_T CastToSingle_l;             /* '<S13>/Cast To Single' */
  real32_T Linearizedtheta_dot;        /* '<S6>/Gain' */
  real32_T Gain3;                      /* '<S8>/Gain3' */
  real32_T Product2_l[2];              /* '<S178>/Product2' */
  real32_T Product3_j[2];              /* '<S176>/Product3' */
  B_EnabledSubsystem_Controller_T EnabledSubsystem_m;/* '<S264>/Enabled Subsystem' */
  B_MeasurementUpdate_Controlle_T MeasurementUpdate_fq;/* '<S257>/MeasurementUpdate' */
  B_MATLABFunction_Controller_T sf_MATLABFunction1;/* '<S8>/MATLAB Function1' */
  B_EnabledSubsystem_Controller_T EnabledSubsystem_o;/* '<S208>/Enabled Subsystem' */
  B_MeasurementUpdate_Controlle_T MeasurementUpdate_f;/* '<S201>/MeasurementUpdate' */
  B_MATLABFunction_Controller_T sf_MATLABFunction;/* '<S7>/MATLAB Function' */
  B_EnabledSubsystem_Controller_T EnabledSubsystem_e;/* '<S97>/Enabled Subsystem' */
  B_MeasurementUpdate_Controlle_T MeasurementUpdate_d;/* '<S90>/MeasurementUpdate' */
} B_Controller_T;

/* Block states (default storage) for system '<Root>' */
typedef struct {
  real_T MemoryX_DSTATE[3];            /* '<S14>/MemoryX' */
  real_T MemoryX_DSTATE_n[2];          /* '<S69>/MemoryX' */
  real_T MemoryX_DSTATE_p[2];          /* '<S236>/MemoryX' */
  real_T MemoryX_DSTATE_i[2];          /* '<S180>/MemoryX' */
  real32_T MemoryX_DSTATE_l[2];        /* '<S124>/MemoryX' */
  boolean_T icLoad;                    /* '<S14>/MemoryX' */
  boolean_T icLoad_p;                  /* '<S69>/MemoryX' */
  boolean_T icLoad_g;                  /* '<S124>/MemoryX' */
  boolean_T icLoad_i;                  /* '<S236>/MemoryX' */
  boolean_T icLoad_o;                  /* '<S180>/MemoryX' */
  boolean_T EnabledSubsystem_MODE;     /* '<S152>/Enabled Subsystem' */
  boolean_T MeasurementUpdate_MODE;    /* '<S145>/MeasurementUpdate' */
  boolean_T EnabledSubsystem_MODE_k;   /* '<S42>/Enabled Subsystem' */
  boolean_T MeasurementUpdate_MODE_m;  /* '<S35>/MeasurementUpdate' */
  DW_EnabledSubsystem_Controlle_T EnabledSubsystem_m;/* '<S264>/Enabled Subsystem' */
  DW_MeasurementUpdate_Controll_T MeasurementUpdate_fq;/* '<S257>/MeasurementUpdate' */
  DW_EnabledSubsystem_Controlle_T EnabledSubsystem_o;/* '<S208>/Enabled Subsystem' */
  DW_MeasurementUpdate_Controll_T MeasurementUpdate_f;/* '<S201>/MeasurementUpdate' */
  DW_EnabledSubsystem_Controlle_T EnabledSubsystem_e;/* '<S97>/Enabled Subsystem' */
  DW_MeasurementUpdate_Controll_T MeasurementUpdate_d;/* '<S90>/MeasurementUpdate' */
} DW_Controller_T;

/* External outputs (root outports fed by signals with default storage) */
typedef struct {
  real32_T Motors[4];                  /* '<Root>/Motors' */
  uint8_T Flag;                        /* '<Root>/Flag' */
} ExtY_Controller_T;

/* Parameters for system: '<S90>/MeasurementUpdate' */
struct P_MeasurementUpdate_Controlle_T_ {
  real_T Lykyhatkk1_Y0;                /* Expression: 0
                                        * Referenced by: '<S121>/L*(y[k]-yhat[k|k-1])'
                                        */
};

/* Parameters for system: '<S97>/Enabled Subsystem' */
struct P_EnabledSubsystem_Controller_T_ {
  real_T deltax_Y0;                    /* Expression: 0
                                        * Referenced by: '<S123>/deltax'
                                        */
};

/* Parameters (default storage) */
struct P_Controller_T_ {
  real_T K_PD[2];                      /* Variable: K_PD
                                        * Referenced by: '<S13>/K_PD'
                                        */
  real_T K_psi[2];                     /* Variable: K_psi
                                        * Referenced by: '<S10>/K_r'
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
                                        *   '<S7>/Constant'
                                        *   '<S8>/Constant3'
                                        */
  real_T ground_alt;                   /* Variable: ground_alt
                                        * Referenced by:
                                        *   '<S7>/Constant5'
                                        *   '<S8>/Constant4'
                                        */
  real_T Lykyhatkk1_Y0;                /* Expression: 0
                                        * Referenced by: '<S66>/L*(y[k]-yhat[k|k-1])'
                                        */
  real_T deltax_Y0;                    /* Expression: 0
                                        * Referenced by: '<S68>/deltax'
                                        */
  real_T Switch_Threshold;             /* Expression: 2
                                        * Referenced by: '<S12>/Switch'
                                        */
  real_T Descend_Threshold;            /* Expression: 10
                                        * Referenced by: '<S12>/Descend'
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
  real_T Zero_Value;                   /* Expression: 0
                                        * Referenced by: '<S12>/Zero'
                                        */
  real_T DescendThrust_Value;          /* Expression: 0.5*m*g
                                        * Referenced by: '<S12>/Descend Thrust'
                                        */
  real_T Altitude_Value;               /* Expression: -1
                                        * Referenced by: '<S1>/Altitude'
                                        */
  real_T C_Value[3];                   /* Expression: pInitialization.C
                                        * Referenced by: '<S14>/C'
                                        */
  real_T X0_Value[3];                  /* Expression: pInitialization.X0
                                        * Referenced by: '<S14>/X0'
                                        */
  real_T KalmanGainM_Value[2];         /* Expression: pInitialization.M
                                        * Referenced by: '<S70>/KalmanGainM'
                                        */
  real_T C_Value_h[2];                 /* Expression: pInitialization.C
                                        * Referenced by: '<S69>/C'
                                        */
  real_T X0_Value_n[2];                /* Expression: pInitialization.X0
                                        * Referenced by: '<S69>/X0'
                                        */
  real_T KalmanGainM_Value_c[2];       /* Expression: pInitialization.M
                                        * Referenced by: '<S125>/KalmanGainM'
                                        */
  real_T Constant10_Value;             /* Expression: 0
                                        * Referenced by: '<S13>/Constant10'
                                        */
  real_T TakeOffThrust_Value;          /* Expression: 1.2*m*g
                                        * Referenced by: '<S12>/Take Off Thrust'
                                        */
  real_T EngineOff_Threshold;          /* Expression: 13
                                        * Referenced by: '<S12>/Engine Off!'
                                        */
  real_T v_Value;                      /* Expression: 0
                                        * Referenced by: '<S1>/v'
                                        */
  real_T KalmanGainM_Value_m[2];       /* Expression: pInitialization.M
                                        * Referenced by: '<S237>/KalmanGainM'
                                        */
  real_T C_Value_c[2];                 /* Expression: pInitialization.C
                                        * Referenced by: '<S236>/C'
                                        */
  real_T X0_Value_i[2];                /* Expression: pInitialization.X0
                                        * Referenced by: '<S236>/X0'
                                        */
  real_T Constant11_Value;             /* Expression: 0
                                        * Referenced by: '<S2>/Constant11'
                                        */
  real_T Constant10_Value_o;           /* Expression: 0
                                        * Referenced by: '<S2>/Constant10'
                                        */
  real_T u_Value;                      /* Expression: 0
                                        * Referenced by: '<S1>/u'
                                        */
  real_T C_Value_g[2];                 /* Expression: pInitialization.C
                                        * Referenced by: '<S180>/C'
                                        */
  real_T X0_Value_l[2];                /* Expression: pInitialization.X0
                                        * Referenced by: '<S180>/X0'
                                        */
  real_T Constant11_Value_b;           /* Expression: 0
                                        * Referenced by: '<S3>/Constant11'
                                        */
  real_T Constant10_Value_n;           /* Expression: 0
                                        * Referenced by: '<S3>/Constant10'
                                        */
  real_T r_Value;                      /* Expression: 0
                                        * Referenced by: '<S1>/r'
                                        */
  real_T Constant6_Value_g;            /* Expression: -9
                                        * Referenced by: '<S4>/Constant6'
                                        */
  real_T A_Value[9];                   /* Expression: pInitialization.A
                                        * Referenced by: '<S14>/A'
                                        */
  real_T B_Value[3];                   /* Expression: pInitialization.B
                                        * Referenced by: '<S14>/B'
                                        */
  real_T D_Value;                      /* Expression: pInitialization.D
                                        * Referenced by: '<S14>/D'
                                        */
  real_T A_Value_b[4];                 /* Expression: pInitialization.A
                                        * Referenced by: '<S69>/A'
                                        */
  real_T B_Value_p[2];                 /* Expression: pInitialization.B
                                        * Referenced by: '<S69>/B'
                                        */
  real_T CovarianceZ_Value[4];         /* Expression: pInitialization.Z
                                        * Referenced by: '<S70>/CovarianceZ'
                                        */
  real_T KalmanGainL_Value[2];         /* Expression: pInitialization.L
                                        * Referenced by: '<S70>/KalmanGainL'
                                        */
  real_T D_Value_c;                    /* Expression: pInitialization.D
                                        * Referenced by: '<S69>/D'
                                        */
  real_T CovarianceZ_Value_i[4];       /* Expression: pInitialization.Z
                                        * Referenced by: '<S125>/CovarianceZ'
                                        */
  real_T KalmanGainL_Value_d[2];       /* Expression: pInitialization.L
                                        * Referenced by: '<S125>/KalmanGainL'
                                        */
  real_T A_Value_l[4];                 /* Expression: pInitialization.A
                                        * Referenced by: '<S180>/A'
                                        */
  real_T B_Value_c[2];                 /* Expression: pInitialization.B
                                        * Referenced by: '<S180>/B'
                                        */
  real_T D_Value_j;                    /* Expression: pInitialization.D
                                        * Referenced by: '<S180>/D'
                                        */
  real_T A_Value_d[4];                 /* Expression: pInitialization.A
                                        * Referenced by: '<S236>/A'
                                        */
  real_T B_Value_pa[2];                /* Expression: pInitialization.B
                                        * Referenced by: '<S236>/B'
                                        */
  real_T CovarianceZ_Value_k[4];       /* Expression: pInitialization.Z
                                        * Referenced by: '<S237>/CovarianceZ'
                                        */
  real_T KalmanGainL_Value_b[2];       /* Expression: pInitialization.L
                                        * Referenced by: '<S237>/KalmanGainL'
                                        */
  real_T D_Value_cc;                   /* Expression: pInitialization.D
                                        * Referenced by: '<S236>/D'
                                        */
  real32_T Lykyhatkk1_Y0_c;            /* Computed Parameter: Lykyhatkk1_Y0_c
                                        * Referenced by: '<S176>/L*(y[k]-yhat[k|k-1])'
                                        */
  real32_T deltax_Y0_m;                /* Computed Parameter: deltax_Y0_m
                                        * Referenced by: '<S178>/deltax'
                                        */
  real32_T KalmanGainM_Value_j[3];     /* Expression: pInitialization.M
                                        * Referenced by: '<S15>/KalmanGainM'
                                        */
  real32_T C_Value_l[2];               /* Computed Parameter: C_Value_l
                                        * Referenced by: '<S124>/C'
                                        */
  real32_T Gain1_Gain;                 /* Computed Parameter: Gain1_Gain
                                        * Referenced by: '<S6>/Gain1'
                                        */
  real32_T X0_Value_e[2];              /* Computed Parameter: X0_Value_e
                                        * Referenced by: '<S124>/X0'
                                        */
  real32_T KalmanGainM_Value_n[2];     /* Expression: pInitialization.M
                                        * Referenced by: '<S181>/KalmanGainM'
                                        */
  real32_T CovarianceZ_Value_j[9];     /* Expression: pInitialization.Z
                                        * Referenced by: '<S15>/CovarianceZ'
                                        */
  real32_T KalmanGainL_Value_a[3];     /* Expression: pInitialization.L
                                        * Referenced by: '<S15>/KalmanGainL'
                                        */
  real32_T Gain_Gain;                  /* Computed Parameter: Gain_Gain
                                        * Referenced by: '<S6>/Gain'
                                        */
  real32_T A_Value_p[4];               /* Computed Parameter: A_Value_p
                                        * Referenced by: '<S124>/A'
                                        */
  real32_T B_Value_e[2];               /* Computed Parameter: B_Value_e
                                        * Referenced by: '<S124>/B'
                                        */
  real32_T D_Value_e;                  /* Computed Parameter: D_Value_e
                                        * Referenced by: '<S124>/D'
                                        */
  real32_T Gain2_Gain;                 /* Computed Parameter: Gain2_Gain
                                        * Referenced by: '<S7>/Gain2'
                                        */
  real32_T CovarianceZ_Value_l[4];     /* Expression: pInitialization.Z
                                        * Referenced by: '<S181>/CovarianceZ'
                                        */
  real32_T KalmanGainL_Value_p[2];     /* Expression: pInitialization.L
                                        * Referenced by: '<S181>/KalmanGainL'
                                        */
  real32_T Gain3_Gain;                 /* Expression: g
                                        * Referenced by: '<S8>/Gain3'
                                        */
  boolean_T Enable_Value;              /* Expression: true()
                                        * Referenced by: '<S14>/Enable'
                                        */
  boolean_T Enable_Value_p;            /* Expression: true()
                                        * Referenced by: '<S69>/Enable'
                                        */
  boolean_T Enable_Value_a;            /* Expression: true()
                                        * Referenced by: '<S124>/Enable'
                                        */
  boolean_T Enable_Value_k;            /* Expression: true()
                                        * Referenced by: '<S236>/Enable'
                                        */
  boolean_T Enable_Value_n;            /* Expression: true()
                                        * Referenced by: '<S180>/Enable'
                                        */
  boolean_T isSqrtUsed_Value;          /* Expression: pInitialization.isSqrtUsed
                                        * Referenced by: '<S64>/isSqrtUsed'
                                        */
  boolean_T isSqrtUsed_Value_j;        /* Expression: pInitialization.isSqrtUsed
                                        * Referenced by: '<S119>/isSqrtUsed'
                                        */
  boolean_T isSqrtUsed_Value_g;        /* Expression: pInitialization.isSqrtUsed
                                        * Referenced by: '<S174>/isSqrtUsed'
                                        */
  boolean_T isSqrtUsed_Value_n;        /* Expression: pInitialization.isSqrtUsed
                                        * Referenced by: '<S230>/isSqrtUsed'
                                        */
  boolean_T isSqrtUsed_Value_b;        /* Expression: pInitialization.isSqrtUsed
                                        * Referenced by: '<S286>/isSqrtUsed'
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
  P_EnabledSubsystem_Controller_T EnabledSubsystem_m;/* '<S264>/Enabled Subsystem' */
  P_MeasurementUpdate_Controlle_T MeasurementUpdate_fq;/* '<S257>/MeasurementUpdate' */
  P_EnabledSubsystem_Controller_T EnabledSubsystem_o;/* '<S208>/Enabled Subsystem' */
  P_MeasurementUpdate_Controlle_T MeasurementUpdate_f;/* '<S201>/MeasurementUpdate' */
  P_EnabledSubsystem_Controller_T EnabledSubsystem_e;/* '<S97>/Enabled Subsystem' */
  P_MeasurementUpdate_Controlle_T MeasurementUpdate_d;/* '<S90>/MeasurementUpdate' */
};

/* Real-time Model Data Structure */
struct tag_RTM_Controller_T {
  const char_T *errorStatus;
  RTWLogInfo *rtwLogInfo;
  RTWSolverInfo solverInfo;

  /*
   * Timing:
   * The following substructure contains information regarding
   * the timing information for the model.
   */
  struct {
    uint32_T clockTick0;
    uint32_T clockTickH0;
    time_T stepSize0;
    uint32_T clockTick1;
    uint32_T clockTickH1;
    time_T tFinal;
    SimTimeStep simTimeStep;
    boolean_T stopRequestedFlag;
    time_T *t;
    time_T tArray[2];
  } Timing;
};

/* Block parameters (default storage) */
extern P_Controller_T Controller_P;

/* Block signals (default storage) */
extern B_Controller_T Controller_B;

/* Block states (default storage) */
extern DW_Controller_T Controller_DW;

/* External outputs (root outports fed by signals with default storage) */
extern ExtY_Controller_T Controller_Y;

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
extern real32_T motors_outport[4];     /* '<S1>/Sum' */
extern uint8_T flag_outport;           /* '<S1>/Manual Switch' */

/* Model entry point functions */
extern void Controller_initialize(void);
extern void Controller_step(void);
extern void Controller_terminate(void);

/* Real-time Model object */
extern RT_MODEL_Controller_T *const Controller_M;
extern volatile boolean_T stopRequested;
extern volatile boolean_T runModel;

/*-
 * These blocks were eliminated from the model due to optimizations:
 *
 * Block '<S58>/Data Type Duplicate' : Unused code path elimination
 * Block '<S59>/Data Type Duplicate' : Unused code path elimination
 * Block '<S60>/Conversion' : Unused code path elimination
 * Block '<S60>/Data Type Duplicate' : Unused code path elimination
 * Block '<S61>/Data Type Duplicate' : Unused code path elimination
 * Block '<S18>/Data Type Duplicate' : Unused code path elimination
 * Block '<S19>/Data Type Duplicate' : Unused code path elimination
 * Block '<S20>/Data Type Duplicate' : Unused code path elimination
 * Block '<S21>/Data Type Duplicate' : Unused code path elimination
 * Block '<S23>/Data Type Duplicate' : Unused code path elimination
 * Block '<S24>/Data Type Duplicate' : Unused code path elimination
 * Block '<S25>/Data Type Duplicate' : Unused code path elimination
 * Block '<S26>/Conversion' : Unused code path elimination
 * Block '<S26>/Data Type Duplicate' : Unused code path elimination
 * Block '<S27>/Data Type Duplicate' : Unused code path elimination
 * Block '<S28>/Data Type Duplicate' : Unused code path elimination
 * Block '<S29>/Data Type Duplicate' : Unused code path elimination
 * Block '<S31>/Data Type Duplicate' : Unused code path elimination
 * Block '<S32>/Data Type Duplicate' : Unused code path elimination
 * Block '<S14>/G' : Unused code path elimination
 * Block '<S14>/H' : Unused code path elimination
 * Block '<S14>/N' : Unused code path elimination
 * Block '<S14>/P0' : Unused code path elimination
 * Block '<S14>/Q' : Unused code path elimination
 * Block '<S14>/R' : Unused code path elimination
 * Block '<S56>/CheckSignalProperties' : Unused code path elimination
 * Block '<S57>/CheckSignalProperties' : Unused code path elimination
 * Block '<S113>/Data Type Duplicate' : Unused code path elimination
 * Block '<S114>/Data Type Duplicate' : Unused code path elimination
 * Block '<S115>/Conversion' : Unused code path elimination
 * Block '<S115>/Data Type Duplicate' : Unused code path elimination
 * Block '<S116>/Data Type Duplicate' : Unused code path elimination
 * Block '<S73>/Data Type Duplicate' : Unused code path elimination
 * Block '<S74>/Data Type Duplicate' : Unused code path elimination
 * Block '<S75>/Data Type Duplicate' : Unused code path elimination
 * Block '<S76>/Data Type Duplicate' : Unused code path elimination
 * Block '<S78>/Data Type Duplicate' : Unused code path elimination
 * Block '<S79>/Data Type Duplicate' : Unused code path elimination
 * Block '<S80>/Data Type Duplicate' : Unused code path elimination
 * Block '<S81>/Conversion' : Unused code path elimination
 * Block '<S81>/Data Type Duplicate' : Unused code path elimination
 * Block '<S82>/Data Type Duplicate' : Unused code path elimination
 * Block '<S83>/Data Type Duplicate' : Unused code path elimination
 * Block '<S84>/Data Type Duplicate' : Unused code path elimination
 * Block '<S86>/Data Type Duplicate' : Unused code path elimination
 * Block '<S87>/Data Type Duplicate' : Unused code path elimination
 * Block '<S69>/G' : Unused code path elimination
 * Block '<S69>/H' : Unused code path elimination
 * Block '<S69>/N' : Unused code path elimination
 * Block '<S69>/P0' : Unused code path elimination
 * Block '<S69>/Q' : Unused code path elimination
 * Block '<S69>/R' : Unused code path elimination
 * Block '<S111>/CheckSignalProperties' : Unused code path elimination
 * Block '<S112>/CheckSignalProperties' : Unused code path elimination
 * Block '<S168>/Data Type Duplicate' : Unused code path elimination
 * Block '<S169>/Data Type Duplicate' : Unused code path elimination
 * Block '<S170>/Conversion' : Unused code path elimination
 * Block '<S170>/Data Type Duplicate' : Unused code path elimination
 * Block '<S171>/Data Type Duplicate' : Unused code path elimination
 * Block '<S128>/Data Type Duplicate' : Unused code path elimination
 * Block '<S129>/Data Type Duplicate' : Unused code path elimination
 * Block '<S130>/Data Type Duplicate' : Unused code path elimination
 * Block '<S131>/Data Type Duplicate' : Unused code path elimination
 * Block '<S133>/Data Type Duplicate' : Unused code path elimination
 * Block '<S134>/Data Type Duplicate' : Unused code path elimination
 * Block '<S135>/Data Type Duplicate' : Unused code path elimination
 * Block '<S136>/Conversion' : Unused code path elimination
 * Block '<S136>/Data Type Duplicate' : Unused code path elimination
 * Block '<S137>/Data Type Duplicate' : Unused code path elimination
 * Block '<S138>/Data Type Duplicate' : Unused code path elimination
 * Block '<S139>/Data Type Duplicate' : Unused code path elimination
 * Block '<S141>/Data Type Duplicate' : Unused code path elimination
 * Block '<S142>/Data Type Duplicate' : Unused code path elimination
 * Block '<S124>/G' : Unused code path elimination
 * Block '<S124>/H' : Unused code path elimination
 * Block '<S124>/N' : Unused code path elimination
 * Block '<S124>/P0' : Unused code path elimination
 * Block '<S124>/Q' : Unused code path elimination
 * Block '<S124>/R' : Unused code path elimination
 * Block '<S166>/CheckSignalProperties' : Unused code path elimination
 * Block '<S167>/CheckSignalProperties' : Unused code path elimination
 * Block '<S224>/Data Type Duplicate' : Unused code path elimination
 * Block '<S225>/Data Type Duplicate' : Unused code path elimination
 * Block '<S226>/Conversion' : Unused code path elimination
 * Block '<S226>/Data Type Duplicate' : Unused code path elimination
 * Block '<S227>/Data Type Duplicate' : Unused code path elimination
 * Block '<S184>/Data Type Duplicate' : Unused code path elimination
 * Block '<S185>/Data Type Duplicate' : Unused code path elimination
 * Block '<S186>/Data Type Duplicate' : Unused code path elimination
 * Block '<S187>/Data Type Duplicate' : Unused code path elimination
 * Block '<S189>/Data Type Duplicate' : Unused code path elimination
 * Block '<S190>/Data Type Duplicate' : Unused code path elimination
 * Block '<S191>/Data Type Duplicate' : Unused code path elimination
 * Block '<S192>/Conversion' : Unused code path elimination
 * Block '<S192>/Data Type Duplicate' : Unused code path elimination
 * Block '<S193>/Data Type Duplicate' : Unused code path elimination
 * Block '<S194>/Data Type Duplicate' : Unused code path elimination
 * Block '<S195>/Data Type Duplicate' : Unused code path elimination
 * Block '<S197>/Data Type Duplicate' : Unused code path elimination
 * Block '<S198>/Data Type Duplicate' : Unused code path elimination
 * Block '<S180>/G' : Unused code path elimination
 * Block '<S180>/H' : Unused code path elimination
 * Block '<S180>/N' : Unused code path elimination
 * Block '<S180>/P0' : Unused code path elimination
 * Block '<S180>/Q' : Unused code path elimination
 * Block '<S180>/R' : Unused code path elimination
 * Block '<S222>/CheckSignalProperties' : Unused code path elimination
 * Block '<S223>/CheckSignalProperties' : Unused code path elimination
 * Block '<S280>/Data Type Duplicate' : Unused code path elimination
 * Block '<S281>/Data Type Duplicate' : Unused code path elimination
 * Block '<S282>/Conversion' : Unused code path elimination
 * Block '<S282>/Data Type Duplicate' : Unused code path elimination
 * Block '<S283>/Data Type Duplicate' : Unused code path elimination
 * Block '<S240>/Data Type Duplicate' : Unused code path elimination
 * Block '<S241>/Data Type Duplicate' : Unused code path elimination
 * Block '<S242>/Data Type Duplicate' : Unused code path elimination
 * Block '<S243>/Data Type Duplicate' : Unused code path elimination
 * Block '<S245>/Data Type Duplicate' : Unused code path elimination
 * Block '<S246>/Data Type Duplicate' : Unused code path elimination
 * Block '<S247>/Data Type Duplicate' : Unused code path elimination
 * Block '<S248>/Conversion' : Unused code path elimination
 * Block '<S248>/Data Type Duplicate' : Unused code path elimination
 * Block '<S249>/Data Type Duplicate' : Unused code path elimination
 * Block '<S250>/Data Type Duplicate' : Unused code path elimination
 * Block '<S251>/Data Type Duplicate' : Unused code path elimination
 * Block '<S253>/Data Type Duplicate' : Unused code path elimination
 * Block '<S254>/Data Type Duplicate' : Unused code path elimination
 * Block '<S236>/G' : Unused code path elimination
 * Block '<S236>/H' : Unused code path elimination
 * Block '<S236>/N' : Unused code path elimination
 * Block '<S236>/P0' : Unused code path elimination
 * Block '<S236>/Q' : Unused code path elimination
 * Block '<S236>/R' : Unused code path elimination
 * Block '<S278>/CheckSignalProperties' : Unused code path elimination
 * Block '<S279>/CheckSignalProperties' : Unused code path elimination
 * Block '<S4>/Rate Transition8' : Eliminated since input and output rates are identical
 * Block '<S4>/Rate Transition9' : Eliminated since input and output rates are identical
 * Block '<S31>/Conversion' : Eliminate redundant data type conversion
 * Block '<S35>/Reshape' : Reshape block reduction
 * Block '<S14>/ReshapeX0' : Reshape block reduction
 * Block '<S14>/Reshapexhat' : Reshape block reduction
 * Block '<S5>/Rate Transition' : Eliminated since input and output rates are identical
 * Block '<S5>/Rate Transition1' : Eliminated since input and output rates are identical
 * Block '<S113>/Conversion' : Eliminate redundant data type conversion
 * Block '<S114>/Conversion' : Eliminate redundant data type conversion
 * Block '<S116>/Conversion' : Eliminate redundant data type conversion
 * Block '<S86>/Conversion' : Eliminate redundant data type conversion
 * Block '<S90>/Reshape' : Reshape block reduction
 * Block '<S69>/ReshapeX0' : Reshape block reduction
 * Block '<S69>/Reshapexhat' : Reshape block reduction
 * Block '<S6>/Cast To Single' : Eliminate redundant data type conversion
 * Block '<S141>/Conversion' : Eliminate redundant data type conversion
 * Block '<S145>/Reshape' : Reshape block reduction
 * Block '<S124>/ReshapeX0' : Reshape block reduction
 * Block '<S124>/Reshapeu' : Reshape block reduction
 * Block '<S124>/Reshapexhat' : Reshape block reduction
 * Block '<S124>/Reshapey' : Reshape block reduction
 * Block '<S6>/Rate Transition2' : Eliminated since input and output rates are identical
 * Block '<S6>/Rate Transition3' : Eliminated since input and output rates are identical
 * Block '<S7>/Rate Transition4' : Eliminated since input and output rates are identical
 * Block '<S7>/Rate Transition5' : Eliminated since input and output rates are identical
 * Block '<S197>/Conversion' : Eliminate redundant data type conversion
 * Block '<S201>/Reshape' : Reshape block reduction
 * Block '<S180>/ReshapeX0' : Reshape block reduction
 * Block '<S180>/Reshapeu' : Reshape block reduction
 * Block '<S180>/Reshapexhat' : Reshape block reduction
 * Block '<S8>/Rate Transition6' : Eliminated since input and output rates are identical
 * Block '<S8>/Rate Transition7' : Eliminated since input and output rates are identical
 * Block '<S280>/Conversion' : Eliminate redundant data type conversion
 * Block '<S281>/Conversion' : Eliminate redundant data type conversion
 * Block '<S283>/Conversion' : Eliminate redundant data type conversion
 * Block '<S253>/Conversion' : Eliminate redundant data type conversion
 * Block '<S257>/Reshape' : Reshape block reduction
 * Block '<S236>/ReshapeX0' : Reshape block reduction
 * Block '<S236>/Reshapexhat' : Reshape block reduction
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
 * '<Root>' : 'Controller'
 * '<S1>'   : 'Controller/Flight_Control_System'
 * '<S2>'   : 'Controller/Flight_Control_System/Aileron Regulator'
 * '<S3>'   : 'Controller/Flight_Control_System/Elevator Regulator'
 * '<S4>'   : 'Controller/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate'
 * '<S5>'   : 'Controller/Flight_Control_System/Kalman Filter: Phi'
 * '<S6>'   : 'Controller/Flight_Control_System/Kalman Filter: Theta'
 * '<S7>'   : 'Controller/Flight_Control_System/Kalman Filter: U'
 * '<S8>'   : 'Controller/Flight_Control_System/Kalman Filter: V_est'
 * '<S9>'   : 'Controller/Flight_Control_System/PD rotate'
 * '<S10>'  : 'Controller/Flight_Control_System/Rudder Regulator'
 * '<S11>'  : 'Controller/Flight_Control_System/Subsystem'
 * '<S12>'  : 'Controller/Flight_Control_System/TO-Land Logic'
 * '<S13>'  : 'Controller/Flight_Control_System/Thrust Regulator'
 * '<S14>'  : 'Controller/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height'
 * '<S15>'  : 'Controller/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/CalculatePL'
 * '<S16>'  : 'Controller/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/CalculateYhat'
 * '<S17>'  : 'Controller/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/CovarianceOutputConfigurator'
 * '<S18>'  : 'Controller/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/DataTypeConversionA'
 * '<S19>'  : 'Controller/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/DataTypeConversionB'
 * '<S20>'  : 'Controller/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/DataTypeConversionC'
 * '<S21>'  : 'Controller/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/DataTypeConversionD'
 * '<S22>'  : 'Controller/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/DataTypeConversionEnable'
 * '<S23>'  : 'Controller/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/DataTypeConversionG'
 * '<S24>'  : 'Controller/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/DataTypeConversionH'
 * '<S25>'  : 'Controller/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/DataTypeConversionN'
 * '<S26>'  : 'Controller/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/DataTypeConversionP'
 * '<S27>'  : 'Controller/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/DataTypeConversionP0'
 * '<S28>'  : 'Controller/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/DataTypeConversionQ'
 * '<S29>'  : 'Controller/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/DataTypeConversionR'
 * '<S30>'  : 'Controller/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/DataTypeConversionReset'
 * '<S31>'  : 'Controller/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/DataTypeConversionX'
 * '<S32>'  : 'Controller/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/DataTypeConversionX0'
 * '<S33>'  : 'Controller/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/DataTypeConversionu'
 * '<S34>'  : 'Controller/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/MemoryP'
 * '<S35>'  : 'Controller/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/Observer'
 * '<S36>'  : 'Controller/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/ReducedQRN'
 * '<S37>'  : 'Controller/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/Reset'
 * '<S38>'  : 'Controller/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/Reshapeyhat'
 * '<S39>'  : 'Controller/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/ScalarExpansionP0'
 * '<S40>'  : 'Controller/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/ScalarExpansionQ'
 * '<S41>'  : 'Controller/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/ScalarExpansionR'
 * '<S42>'  : 'Controller/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/UseCurrentEstimator'
 * '<S43>'  : 'Controller/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/checkA'
 * '<S44>'  : 'Controller/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/checkB'
 * '<S45>'  : 'Controller/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/checkC'
 * '<S46>'  : 'Controller/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/checkD'
 * '<S47>'  : 'Controller/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/checkEnable'
 * '<S48>'  : 'Controller/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/checkG'
 * '<S49>'  : 'Controller/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/checkH'
 * '<S50>'  : 'Controller/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/checkN'
 * '<S51>'  : 'Controller/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/checkP0'
 * '<S52>'  : 'Controller/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/checkQ'
 * '<S53>'  : 'Controller/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/checkR'
 * '<S54>'  : 'Controller/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/checkReset'
 * '<S55>'  : 'Controller/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/checkX0'
 * '<S56>'  : 'Controller/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/checku'
 * '<S57>'  : 'Controller/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/checky'
 * '<S58>'  : 'Controller/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/CalculatePL/DataTypeConversionL'
 * '<S59>'  : 'Controller/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/CalculatePL/DataTypeConversionM'
 * '<S60>'  : 'Controller/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/CalculatePL/DataTypeConversionP'
 * '<S61>'  : 'Controller/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/CalculatePL/DataTypeConversionZ'
 * '<S62>'  : 'Controller/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/CalculatePL/Ground'
 * '<S63>'  : 'Controller/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/CalculateYhat/Ground'
 * '<S64>'  : 'Controller/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/CovarianceOutputConfigurator/decideOutput'
 * '<S65>'  : 'Controller/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/CovarianceOutputConfigurator/decideOutput/SqrtUsedFcn'
 * '<S66>'  : 'Controller/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/Observer/MeasurementUpdate'
 * '<S67>'  : 'Controller/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/ReducedQRN/Ground'
 * '<S68>'  : 'Controller/Flight_Control_System/Kalman Filter: Altitude and Vertical Speed Estimate/z_velocity & z_height/UseCurrentEstimator/Enabled Subsystem'
 * '<S69>'  : 'Controller/Flight_Control_System/Kalman Filter: Phi/Roll Angle'
 * '<S70>'  : 'Controller/Flight_Control_System/Kalman Filter: Phi/Roll Angle/CalculatePL'
 * '<S71>'  : 'Controller/Flight_Control_System/Kalman Filter: Phi/Roll Angle/CalculateYhat'
 * '<S72>'  : 'Controller/Flight_Control_System/Kalman Filter: Phi/Roll Angle/CovarianceOutputConfigurator'
 * '<S73>'  : 'Controller/Flight_Control_System/Kalman Filter: Phi/Roll Angle/DataTypeConversionA'
 * '<S74>'  : 'Controller/Flight_Control_System/Kalman Filter: Phi/Roll Angle/DataTypeConversionB'
 * '<S75>'  : 'Controller/Flight_Control_System/Kalman Filter: Phi/Roll Angle/DataTypeConversionC'
 * '<S76>'  : 'Controller/Flight_Control_System/Kalman Filter: Phi/Roll Angle/DataTypeConversionD'
 * '<S77>'  : 'Controller/Flight_Control_System/Kalman Filter: Phi/Roll Angle/DataTypeConversionEnable'
 * '<S78>'  : 'Controller/Flight_Control_System/Kalman Filter: Phi/Roll Angle/DataTypeConversionG'
 * '<S79>'  : 'Controller/Flight_Control_System/Kalman Filter: Phi/Roll Angle/DataTypeConversionH'
 * '<S80>'  : 'Controller/Flight_Control_System/Kalman Filter: Phi/Roll Angle/DataTypeConversionN'
 * '<S81>'  : 'Controller/Flight_Control_System/Kalman Filter: Phi/Roll Angle/DataTypeConversionP'
 * '<S82>'  : 'Controller/Flight_Control_System/Kalman Filter: Phi/Roll Angle/DataTypeConversionP0'
 * '<S83>'  : 'Controller/Flight_Control_System/Kalman Filter: Phi/Roll Angle/DataTypeConversionQ'
 * '<S84>'  : 'Controller/Flight_Control_System/Kalman Filter: Phi/Roll Angle/DataTypeConversionR'
 * '<S85>'  : 'Controller/Flight_Control_System/Kalman Filter: Phi/Roll Angle/DataTypeConversionReset'
 * '<S86>'  : 'Controller/Flight_Control_System/Kalman Filter: Phi/Roll Angle/DataTypeConversionX'
 * '<S87>'  : 'Controller/Flight_Control_System/Kalman Filter: Phi/Roll Angle/DataTypeConversionX0'
 * '<S88>'  : 'Controller/Flight_Control_System/Kalman Filter: Phi/Roll Angle/DataTypeConversionu'
 * '<S89>'  : 'Controller/Flight_Control_System/Kalman Filter: Phi/Roll Angle/MemoryP'
 * '<S90>'  : 'Controller/Flight_Control_System/Kalman Filter: Phi/Roll Angle/Observer'
 * '<S91>'  : 'Controller/Flight_Control_System/Kalman Filter: Phi/Roll Angle/ReducedQRN'
 * '<S92>'  : 'Controller/Flight_Control_System/Kalman Filter: Phi/Roll Angle/Reset'
 * '<S93>'  : 'Controller/Flight_Control_System/Kalman Filter: Phi/Roll Angle/Reshapeyhat'
 * '<S94>'  : 'Controller/Flight_Control_System/Kalman Filter: Phi/Roll Angle/ScalarExpansionP0'
 * '<S95>'  : 'Controller/Flight_Control_System/Kalman Filter: Phi/Roll Angle/ScalarExpansionQ'
 * '<S96>'  : 'Controller/Flight_Control_System/Kalman Filter: Phi/Roll Angle/ScalarExpansionR'
 * '<S97>'  : 'Controller/Flight_Control_System/Kalman Filter: Phi/Roll Angle/UseCurrentEstimator'
 * '<S98>'  : 'Controller/Flight_Control_System/Kalman Filter: Phi/Roll Angle/checkA'
 * '<S99>'  : 'Controller/Flight_Control_System/Kalman Filter: Phi/Roll Angle/checkB'
 * '<S100>' : 'Controller/Flight_Control_System/Kalman Filter: Phi/Roll Angle/checkC'
 * '<S101>' : 'Controller/Flight_Control_System/Kalman Filter: Phi/Roll Angle/checkD'
 * '<S102>' : 'Controller/Flight_Control_System/Kalman Filter: Phi/Roll Angle/checkEnable'
 * '<S103>' : 'Controller/Flight_Control_System/Kalman Filter: Phi/Roll Angle/checkG'
 * '<S104>' : 'Controller/Flight_Control_System/Kalman Filter: Phi/Roll Angle/checkH'
 * '<S105>' : 'Controller/Flight_Control_System/Kalman Filter: Phi/Roll Angle/checkN'
 * '<S106>' : 'Controller/Flight_Control_System/Kalman Filter: Phi/Roll Angle/checkP0'
 * '<S107>' : 'Controller/Flight_Control_System/Kalman Filter: Phi/Roll Angle/checkQ'
 * '<S108>' : 'Controller/Flight_Control_System/Kalman Filter: Phi/Roll Angle/checkR'
 * '<S109>' : 'Controller/Flight_Control_System/Kalman Filter: Phi/Roll Angle/checkReset'
 * '<S110>' : 'Controller/Flight_Control_System/Kalman Filter: Phi/Roll Angle/checkX0'
 * '<S111>' : 'Controller/Flight_Control_System/Kalman Filter: Phi/Roll Angle/checku'
 * '<S112>' : 'Controller/Flight_Control_System/Kalman Filter: Phi/Roll Angle/checky'
 * '<S113>' : 'Controller/Flight_Control_System/Kalman Filter: Phi/Roll Angle/CalculatePL/DataTypeConversionL'
 * '<S114>' : 'Controller/Flight_Control_System/Kalman Filter: Phi/Roll Angle/CalculatePL/DataTypeConversionM'
 * '<S115>' : 'Controller/Flight_Control_System/Kalman Filter: Phi/Roll Angle/CalculatePL/DataTypeConversionP'
 * '<S116>' : 'Controller/Flight_Control_System/Kalman Filter: Phi/Roll Angle/CalculatePL/DataTypeConversionZ'
 * '<S117>' : 'Controller/Flight_Control_System/Kalman Filter: Phi/Roll Angle/CalculatePL/Ground'
 * '<S118>' : 'Controller/Flight_Control_System/Kalman Filter: Phi/Roll Angle/CalculateYhat/Ground'
 * '<S119>' : 'Controller/Flight_Control_System/Kalman Filter: Phi/Roll Angle/CovarianceOutputConfigurator/decideOutput'
 * '<S120>' : 'Controller/Flight_Control_System/Kalman Filter: Phi/Roll Angle/CovarianceOutputConfigurator/decideOutput/SqrtUsedFcn'
 * '<S121>' : 'Controller/Flight_Control_System/Kalman Filter: Phi/Roll Angle/Observer/MeasurementUpdate'
 * '<S122>' : 'Controller/Flight_Control_System/Kalman Filter: Phi/Roll Angle/ReducedQRN/Ground'
 * '<S123>' : 'Controller/Flight_Control_System/Kalman Filter: Phi/Roll Angle/UseCurrentEstimator/Enabled Subsystem'
 * '<S124>' : 'Controller/Flight_Control_System/Kalman Filter: Theta/Pitch Angle'
 * '<S125>' : 'Controller/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/CalculatePL'
 * '<S126>' : 'Controller/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/CalculateYhat'
 * '<S127>' : 'Controller/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/CovarianceOutputConfigurator'
 * '<S128>' : 'Controller/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/DataTypeConversionA'
 * '<S129>' : 'Controller/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/DataTypeConversionB'
 * '<S130>' : 'Controller/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/DataTypeConversionC'
 * '<S131>' : 'Controller/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/DataTypeConversionD'
 * '<S132>' : 'Controller/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/DataTypeConversionEnable'
 * '<S133>' : 'Controller/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/DataTypeConversionG'
 * '<S134>' : 'Controller/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/DataTypeConversionH'
 * '<S135>' : 'Controller/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/DataTypeConversionN'
 * '<S136>' : 'Controller/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/DataTypeConversionP'
 * '<S137>' : 'Controller/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/DataTypeConversionP0'
 * '<S138>' : 'Controller/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/DataTypeConversionQ'
 * '<S139>' : 'Controller/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/DataTypeConversionR'
 * '<S140>' : 'Controller/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/DataTypeConversionReset'
 * '<S141>' : 'Controller/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/DataTypeConversionX'
 * '<S142>' : 'Controller/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/DataTypeConversionX0'
 * '<S143>' : 'Controller/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/DataTypeConversionu'
 * '<S144>' : 'Controller/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/MemoryP'
 * '<S145>' : 'Controller/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/Observer'
 * '<S146>' : 'Controller/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/ReducedQRN'
 * '<S147>' : 'Controller/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/Reset'
 * '<S148>' : 'Controller/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/Reshapeyhat'
 * '<S149>' : 'Controller/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/ScalarExpansionP0'
 * '<S150>' : 'Controller/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/ScalarExpansionQ'
 * '<S151>' : 'Controller/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/ScalarExpansionR'
 * '<S152>' : 'Controller/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/UseCurrentEstimator'
 * '<S153>' : 'Controller/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/checkA'
 * '<S154>' : 'Controller/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/checkB'
 * '<S155>' : 'Controller/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/checkC'
 * '<S156>' : 'Controller/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/checkD'
 * '<S157>' : 'Controller/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/checkEnable'
 * '<S158>' : 'Controller/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/checkG'
 * '<S159>' : 'Controller/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/checkH'
 * '<S160>' : 'Controller/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/checkN'
 * '<S161>' : 'Controller/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/checkP0'
 * '<S162>' : 'Controller/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/checkQ'
 * '<S163>' : 'Controller/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/checkR'
 * '<S164>' : 'Controller/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/checkReset'
 * '<S165>' : 'Controller/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/checkX0'
 * '<S166>' : 'Controller/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/checku'
 * '<S167>' : 'Controller/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/checky'
 * '<S168>' : 'Controller/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/CalculatePL/DataTypeConversionL'
 * '<S169>' : 'Controller/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/CalculatePL/DataTypeConversionM'
 * '<S170>' : 'Controller/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/CalculatePL/DataTypeConversionP'
 * '<S171>' : 'Controller/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/CalculatePL/DataTypeConversionZ'
 * '<S172>' : 'Controller/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/CalculatePL/Ground'
 * '<S173>' : 'Controller/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/CalculateYhat/Ground'
 * '<S174>' : 'Controller/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/CovarianceOutputConfigurator/decideOutput'
 * '<S175>' : 'Controller/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/CovarianceOutputConfigurator/decideOutput/SqrtUsedFcn'
 * '<S176>' : 'Controller/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/Observer/MeasurementUpdate'
 * '<S177>' : 'Controller/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/ReducedQRN/Ground'
 * '<S178>' : 'Controller/Flight_Control_System/Kalman Filter: Theta/Pitch Angle/UseCurrentEstimator/Enabled Subsystem'
 * '<S179>' : 'Controller/Flight_Control_System/Kalman Filter: U/MATLAB Function'
 * '<S180>' : 'Controller/Flight_Control_System/Kalman Filter: U/x_velocity'
 * '<S181>' : 'Controller/Flight_Control_System/Kalman Filter: U/x_velocity/CalculatePL'
 * '<S182>' : 'Controller/Flight_Control_System/Kalman Filter: U/x_velocity/CalculateYhat'
 * '<S183>' : 'Controller/Flight_Control_System/Kalman Filter: U/x_velocity/CovarianceOutputConfigurator'
 * '<S184>' : 'Controller/Flight_Control_System/Kalman Filter: U/x_velocity/DataTypeConversionA'
 * '<S185>' : 'Controller/Flight_Control_System/Kalman Filter: U/x_velocity/DataTypeConversionB'
 * '<S186>' : 'Controller/Flight_Control_System/Kalman Filter: U/x_velocity/DataTypeConversionC'
 * '<S187>' : 'Controller/Flight_Control_System/Kalman Filter: U/x_velocity/DataTypeConversionD'
 * '<S188>' : 'Controller/Flight_Control_System/Kalman Filter: U/x_velocity/DataTypeConversionEnable'
 * '<S189>' : 'Controller/Flight_Control_System/Kalman Filter: U/x_velocity/DataTypeConversionG'
 * '<S190>' : 'Controller/Flight_Control_System/Kalman Filter: U/x_velocity/DataTypeConversionH'
 * '<S191>' : 'Controller/Flight_Control_System/Kalman Filter: U/x_velocity/DataTypeConversionN'
 * '<S192>' : 'Controller/Flight_Control_System/Kalman Filter: U/x_velocity/DataTypeConversionP'
 * '<S193>' : 'Controller/Flight_Control_System/Kalman Filter: U/x_velocity/DataTypeConversionP0'
 * '<S194>' : 'Controller/Flight_Control_System/Kalman Filter: U/x_velocity/DataTypeConversionQ'
 * '<S195>' : 'Controller/Flight_Control_System/Kalman Filter: U/x_velocity/DataTypeConversionR'
 * '<S196>' : 'Controller/Flight_Control_System/Kalman Filter: U/x_velocity/DataTypeConversionReset'
 * '<S197>' : 'Controller/Flight_Control_System/Kalman Filter: U/x_velocity/DataTypeConversionX'
 * '<S198>' : 'Controller/Flight_Control_System/Kalman Filter: U/x_velocity/DataTypeConversionX0'
 * '<S199>' : 'Controller/Flight_Control_System/Kalman Filter: U/x_velocity/DataTypeConversionu'
 * '<S200>' : 'Controller/Flight_Control_System/Kalman Filter: U/x_velocity/MemoryP'
 * '<S201>' : 'Controller/Flight_Control_System/Kalman Filter: U/x_velocity/Observer'
 * '<S202>' : 'Controller/Flight_Control_System/Kalman Filter: U/x_velocity/ReducedQRN'
 * '<S203>' : 'Controller/Flight_Control_System/Kalman Filter: U/x_velocity/Reset'
 * '<S204>' : 'Controller/Flight_Control_System/Kalman Filter: U/x_velocity/Reshapeyhat'
 * '<S205>' : 'Controller/Flight_Control_System/Kalman Filter: U/x_velocity/ScalarExpansionP0'
 * '<S206>' : 'Controller/Flight_Control_System/Kalman Filter: U/x_velocity/ScalarExpansionQ'
 * '<S207>' : 'Controller/Flight_Control_System/Kalman Filter: U/x_velocity/ScalarExpansionR'
 * '<S208>' : 'Controller/Flight_Control_System/Kalman Filter: U/x_velocity/UseCurrentEstimator'
 * '<S209>' : 'Controller/Flight_Control_System/Kalman Filter: U/x_velocity/checkA'
 * '<S210>' : 'Controller/Flight_Control_System/Kalman Filter: U/x_velocity/checkB'
 * '<S211>' : 'Controller/Flight_Control_System/Kalman Filter: U/x_velocity/checkC'
 * '<S212>' : 'Controller/Flight_Control_System/Kalman Filter: U/x_velocity/checkD'
 * '<S213>' : 'Controller/Flight_Control_System/Kalman Filter: U/x_velocity/checkEnable'
 * '<S214>' : 'Controller/Flight_Control_System/Kalman Filter: U/x_velocity/checkG'
 * '<S215>' : 'Controller/Flight_Control_System/Kalman Filter: U/x_velocity/checkH'
 * '<S216>' : 'Controller/Flight_Control_System/Kalman Filter: U/x_velocity/checkN'
 * '<S217>' : 'Controller/Flight_Control_System/Kalman Filter: U/x_velocity/checkP0'
 * '<S218>' : 'Controller/Flight_Control_System/Kalman Filter: U/x_velocity/checkQ'
 * '<S219>' : 'Controller/Flight_Control_System/Kalman Filter: U/x_velocity/checkR'
 * '<S220>' : 'Controller/Flight_Control_System/Kalman Filter: U/x_velocity/checkReset'
 * '<S221>' : 'Controller/Flight_Control_System/Kalman Filter: U/x_velocity/checkX0'
 * '<S222>' : 'Controller/Flight_Control_System/Kalman Filter: U/x_velocity/checku'
 * '<S223>' : 'Controller/Flight_Control_System/Kalman Filter: U/x_velocity/checky'
 * '<S224>' : 'Controller/Flight_Control_System/Kalman Filter: U/x_velocity/CalculatePL/DataTypeConversionL'
 * '<S225>' : 'Controller/Flight_Control_System/Kalman Filter: U/x_velocity/CalculatePL/DataTypeConversionM'
 * '<S226>' : 'Controller/Flight_Control_System/Kalman Filter: U/x_velocity/CalculatePL/DataTypeConversionP'
 * '<S227>' : 'Controller/Flight_Control_System/Kalman Filter: U/x_velocity/CalculatePL/DataTypeConversionZ'
 * '<S228>' : 'Controller/Flight_Control_System/Kalman Filter: U/x_velocity/CalculatePL/Ground'
 * '<S229>' : 'Controller/Flight_Control_System/Kalman Filter: U/x_velocity/CalculateYhat/Ground'
 * '<S230>' : 'Controller/Flight_Control_System/Kalman Filter: U/x_velocity/CovarianceOutputConfigurator/decideOutput'
 * '<S231>' : 'Controller/Flight_Control_System/Kalman Filter: U/x_velocity/CovarianceOutputConfigurator/decideOutput/SqrtUsedFcn'
 * '<S232>' : 'Controller/Flight_Control_System/Kalman Filter: U/x_velocity/Observer/MeasurementUpdate'
 * '<S233>' : 'Controller/Flight_Control_System/Kalman Filter: U/x_velocity/ReducedQRN/Ground'
 * '<S234>' : 'Controller/Flight_Control_System/Kalman Filter: U/x_velocity/UseCurrentEstimator/Enabled Subsystem'
 * '<S235>' : 'Controller/Flight_Control_System/Kalman Filter: V_est/MATLAB Function1'
 * '<S236>' : 'Controller/Flight_Control_System/Kalman Filter: V_est/y_velocity'
 * '<S237>' : 'Controller/Flight_Control_System/Kalman Filter: V_est/y_velocity/CalculatePL'
 * '<S238>' : 'Controller/Flight_Control_System/Kalman Filter: V_est/y_velocity/CalculateYhat'
 * '<S239>' : 'Controller/Flight_Control_System/Kalman Filter: V_est/y_velocity/CovarianceOutputConfigurator'
 * '<S240>' : 'Controller/Flight_Control_System/Kalman Filter: V_est/y_velocity/DataTypeConversionA'
 * '<S241>' : 'Controller/Flight_Control_System/Kalman Filter: V_est/y_velocity/DataTypeConversionB'
 * '<S242>' : 'Controller/Flight_Control_System/Kalman Filter: V_est/y_velocity/DataTypeConversionC'
 * '<S243>' : 'Controller/Flight_Control_System/Kalman Filter: V_est/y_velocity/DataTypeConversionD'
 * '<S244>' : 'Controller/Flight_Control_System/Kalman Filter: V_est/y_velocity/DataTypeConversionEnable'
 * '<S245>' : 'Controller/Flight_Control_System/Kalman Filter: V_est/y_velocity/DataTypeConversionG'
 * '<S246>' : 'Controller/Flight_Control_System/Kalman Filter: V_est/y_velocity/DataTypeConversionH'
 * '<S247>' : 'Controller/Flight_Control_System/Kalman Filter: V_est/y_velocity/DataTypeConversionN'
 * '<S248>' : 'Controller/Flight_Control_System/Kalman Filter: V_est/y_velocity/DataTypeConversionP'
 * '<S249>' : 'Controller/Flight_Control_System/Kalman Filter: V_est/y_velocity/DataTypeConversionP0'
 * '<S250>' : 'Controller/Flight_Control_System/Kalman Filter: V_est/y_velocity/DataTypeConversionQ'
 * '<S251>' : 'Controller/Flight_Control_System/Kalman Filter: V_est/y_velocity/DataTypeConversionR'
 * '<S252>' : 'Controller/Flight_Control_System/Kalman Filter: V_est/y_velocity/DataTypeConversionReset'
 * '<S253>' : 'Controller/Flight_Control_System/Kalman Filter: V_est/y_velocity/DataTypeConversionX'
 * '<S254>' : 'Controller/Flight_Control_System/Kalman Filter: V_est/y_velocity/DataTypeConversionX0'
 * '<S255>' : 'Controller/Flight_Control_System/Kalman Filter: V_est/y_velocity/DataTypeConversionu'
 * '<S256>' : 'Controller/Flight_Control_System/Kalman Filter: V_est/y_velocity/MemoryP'
 * '<S257>' : 'Controller/Flight_Control_System/Kalman Filter: V_est/y_velocity/Observer'
 * '<S258>' : 'Controller/Flight_Control_System/Kalman Filter: V_est/y_velocity/ReducedQRN'
 * '<S259>' : 'Controller/Flight_Control_System/Kalman Filter: V_est/y_velocity/Reset'
 * '<S260>' : 'Controller/Flight_Control_System/Kalman Filter: V_est/y_velocity/Reshapeyhat'
 * '<S261>' : 'Controller/Flight_Control_System/Kalman Filter: V_est/y_velocity/ScalarExpansionP0'
 * '<S262>' : 'Controller/Flight_Control_System/Kalman Filter: V_est/y_velocity/ScalarExpansionQ'
 * '<S263>' : 'Controller/Flight_Control_System/Kalman Filter: V_est/y_velocity/ScalarExpansionR'
 * '<S264>' : 'Controller/Flight_Control_System/Kalman Filter: V_est/y_velocity/UseCurrentEstimator'
 * '<S265>' : 'Controller/Flight_Control_System/Kalman Filter: V_est/y_velocity/checkA'
 * '<S266>' : 'Controller/Flight_Control_System/Kalman Filter: V_est/y_velocity/checkB'
 * '<S267>' : 'Controller/Flight_Control_System/Kalman Filter: V_est/y_velocity/checkC'
 * '<S268>' : 'Controller/Flight_Control_System/Kalman Filter: V_est/y_velocity/checkD'
 * '<S269>' : 'Controller/Flight_Control_System/Kalman Filter: V_est/y_velocity/checkEnable'
 * '<S270>' : 'Controller/Flight_Control_System/Kalman Filter: V_est/y_velocity/checkG'
 * '<S271>' : 'Controller/Flight_Control_System/Kalman Filter: V_est/y_velocity/checkH'
 * '<S272>' : 'Controller/Flight_Control_System/Kalman Filter: V_est/y_velocity/checkN'
 * '<S273>' : 'Controller/Flight_Control_System/Kalman Filter: V_est/y_velocity/checkP0'
 * '<S274>' : 'Controller/Flight_Control_System/Kalman Filter: V_est/y_velocity/checkQ'
 * '<S275>' : 'Controller/Flight_Control_System/Kalman Filter: V_est/y_velocity/checkR'
 * '<S276>' : 'Controller/Flight_Control_System/Kalman Filter: V_est/y_velocity/checkReset'
 * '<S277>' : 'Controller/Flight_Control_System/Kalman Filter: V_est/y_velocity/checkX0'
 * '<S278>' : 'Controller/Flight_Control_System/Kalman Filter: V_est/y_velocity/checku'
 * '<S279>' : 'Controller/Flight_Control_System/Kalman Filter: V_est/y_velocity/checky'
 * '<S280>' : 'Controller/Flight_Control_System/Kalman Filter: V_est/y_velocity/CalculatePL/DataTypeConversionL'
 * '<S281>' : 'Controller/Flight_Control_System/Kalman Filter: V_est/y_velocity/CalculatePL/DataTypeConversionM'
 * '<S282>' : 'Controller/Flight_Control_System/Kalman Filter: V_est/y_velocity/CalculatePL/DataTypeConversionP'
 * '<S283>' : 'Controller/Flight_Control_System/Kalman Filter: V_est/y_velocity/CalculatePL/DataTypeConversionZ'
 * '<S284>' : 'Controller/Flight_Control_System/Kalman Filter: V_est/y_velocity/CalculatePL/Ground'
 * '<S285>' : 'Controller/Flight_Control_System/Kalman Filter: V_est/y_velocity/CalculateYhat/Ground'
 * '<S286>' : 'Controller/Flight_Control_System/Kalman Filter: V_est/y_velocity/CovarianceOutputConfigurator/decideOutput'
 * '<S287>' : 'Controller/Flight_Control_System/Kalman Filter: V_est/y_velocity/CovarianceOutputConfigurator/decideOutput/SqrtUsedFcn'
 * '<S288>' : 'Controller/Flight_Control_System/Kalman Filter: V_est/y_velocity/Observer/MeasurementUpdate'
 * '<S289>' : 'Controller/Flight_Control_System/Kalman Filter: V_est/y_velocity/ReducedQRN/Ground'
 * '<S290>' : 'Controller/Flight_Control_System/Kalman Filter: V_est/y_velocity/UseCurrentEstimator/Enabled Subsystem'
 */
#endif                                 /* RTW_HEADER_Controller_h_ */
