/*
 * colorLog_types.h
 *
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * Code generation for model "colorLog".
 *
 * Model version              : 2.0
 * Simulink Coder version : 9.5 (R2021a) 14-Nov-2020
 * C source code generated on : Sat Apr 30 10:00:38 2022
 *
 * Target selection: ert.tlc
 * Note: GRT includes extra infrastructure and instrumentation for prototyping
 * Embedded hardware selection: ARM Compatible->ARM 9
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#ifndef RTW_HEADER_colorLog_types_h_
#define RTW_HEADER_colorLog_types_h_
#include "rtwtypes.h"
#include "builtin_typeid_types.h"
#include "multiword_types.h"
#include "HAL.h"

/* Model Code Variants */
#ifndef DEFINED_TYPEDEF_FOR_CommandBus_
#define DEFINED_TYPEDEF_FOR_CommandBus_

typedef struct {
  boolean_T controlModePosVSOrient;
  real32_T pos_ref[3];
  boolean_T takeoff_flag;
  real32_T orient_ref[3];
  uint32_T live_time_ticks;
} CommandBus;

#endif

#ifndef DEFINED_TYPEDEF_FOR_extraSensorData_t_
#define DEFINED_TYPEDEF_FOR_extraSensorData_t_

typedef struct {
  real32_T opticalFlow_data[3];
  real32_T posVIS_data[4];
  real32_T usePosVIS_flag;
} extraSensorData_t;

#endif

#ifndef DEFINED_TYPEDEF_FOR_SensorsBus_
#define DEFINED_TYPEDEF_FOR_SensorsBus_

typedef struct {
  extraSensorData_t VisionSensors;
  HAL_acquisition_t HALSensors;
  real32_T SensorCalibration[8];
} SensorsBus;

#endif

#ifndef struct_tag_BlgwLpgj2bjudmbmVKWwDE
#define struct_tag_BlgwLpgj2bjudmbmVKWwDE

struct tag_BlgwLpgj2bjudmbmVKWwDE
{
  uint32_T f1[8];
};

#endif                                 /* struct_tag_BlgwLpgj2bjudmbmVKWwDE */

#ifndef typedef_cell_wrap_colorLog_T
#define typedef_cell_wrap_colorLog_T

typedef struct tag_BlgwLpgj2bjudmbmVKWwDE cell_wrap_colorLog_T;

#endif                                 /* typedef_cell_wrap_colorLog_T */

#ifndef struct_tag_ka0xmCFxNA495MDHzPTiFE
#define struct_tag_ka0xmCFxNA495MDHzPTiFE

struct tag_ka0xmCFxNA495MDHzPTiFE
{
  int32_T isInitialized;
  cell_wrap_colorLog_T inputVarSize;
};

#endif                                 /* struct_tag_ka0xmCFxNA495MDHzPTiFE */

#ifndef typedef_parrot_ImageProcess_colorLog_T
#define typedef_parrot_ImageProcess_colorLog_T

typedef struct tag_ka0xmCFxNA495MDHzPTiFE parrot_ImageProcess_colorLog_T;

#endif                              /* typedef_parrot_ImageProcess_colorLog_T */

/* Parameters for system: '<Root>/Flight Control System' */
typedef struct P_FlightControlSystem_colorLo_T_ P_FlightControlSystem_colorLo_T;

/* Parameters (default storage) */
typedef struct P_colorLog_T_ P_colorLog_T;

/* Forward declaration for rtModel */
typedef struct tag_RTM_colorLog_T RT_MODEL_colorLog_T;

#endif                                 /* RTW_HEADER_colorLog_types_h_ */
