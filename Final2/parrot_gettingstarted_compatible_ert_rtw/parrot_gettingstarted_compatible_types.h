/*
 * parrot_gettingstarted_compatible_types.h
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

#ifndef RTW_HEADER_parrot_gettingstarted_compatible_types_h_
#define RTW_HEADER_parrot_gettingstarted_compatible_types_h_
#include "rtwtypes.h"
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

/* Parameters for system: '<S43>/Enabled Subsystem' */
typedef struct P_EnabledSubsystem_parrot_get_T_ P_EnabledSubsystem_parrot_get_T;

/* Parameters for system: '<S91>/MeasurementUpdate' */
typedef struct P_MeasurementUpdate_parrot_ge_T_ P_MeasurementUpdate_parrot_ge_T;

/* Parameters (default storage) */
typedef struct P_parrot_gettingstarted_compa_T_ P_parrot_gettingstarted_compa_T;

/* Forward declaration for rtModel */
typedef struct tag_RTM_parrot_gettingstarted_T RT_MODEL_parrot_gettingstarte_T;

#endif                /* RTW_HEADER_parrot_gettingstarted_compatible_types_h_ */
