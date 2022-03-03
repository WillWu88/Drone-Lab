%% Homework 5
% by Will Wu and Jackson Cox

clear, clc, close all;

%% Load All Data

% load('systemID_data_zip/bang_bang_A/motor_speed_dataA.mat');
% load('systemID_data_zip/bang_bang_A/sensor_dataA.mat');
% load('systemID_data_zip/bang_bang_A/sensor_state_dataA.mat');
% load('systemID_data_zip/bang_bang_A/state_est_dataA.mat');

% load('systemID_data_zip/bang_bang_E/motor_speed_dataE.mat');
% load('systemID_data_zip/bang_bang_E/sensor_dataE.mat');
% load('systemID_data_zip/bang_bang_E/sensor_state_dataE.mat');
% load('systemID_data_zip/bang_bang_E/state_est_dataE.mat');
% 
% load('systemID_data_zip/bang_bang_R/motor_speed_dataR.mat');
% load('systemID_data_zip/bang_bang_R/sensor_dataR.mat');
% load('systemID_data_zip/bang_bang_R/sensor_state_dataR.mat');
% load('systemID_data_zip/bang_bang_R/state_est_dataR.mat');
% 
load('systemID_data_zip/bang_bang_T/motor_speed_dataT.mat');
load('systemID_data_zip/bang_bang_T/sensor_dataT.mat');
load('systemID_data_zip/bang_bang_T/sensor_state_dataT.mat');
load('systemID_data_zip/bang_bang_T/state_est_dataT.mat');

% load('systemID_data_zip/chirp_motor1/chirp_data1.mat');
% load('systemID_data_zip/chirp_motor1/motor_speed_data1.mat');
% load('systemID_data_zip/chirp_motor1/sensor_data1.mat');
% load('systemID_data_zip/chirp_motor1/sensor_state_data1.mat');
% load('systemID_data_zip/chirp_motor1/state_est_data1.mat');

% load('systemID_data_zip/chirp_motor2/chirp_data2.mat');
% load('systemID_data_zip/chirp_motor2/motor_speed_data2.mat');
% load('systemID_data_zip/chirp_motor2/sensor_data2.mat');
% load('systemID_data_zip/chirp_motor2/sensor_state_data2.mat');
% load('systemID_data_zip/chirp_motor2/state_est_data2.mat');
% 
% load('systemID_data_zip/chirp_motor3/chirp_data3.mat');
% load('systemID_data_zip/chirp_motor3/motor_speed_data3.mat');
% load('systemID_data_zip/chirp_motor3/sensor_data3.mat');
% load('systemID_data_zip/chirp_motor3/sensor_state_data3.mat');
% load('systemID_data_zip/chirp_motor3/state_est_data3.mat');
% 
% load('systemID_data_zip/chirp_motor4/chirp_data4.mat');
% load('systemID_data_zip/chirp_motor4/motor_speed_data4.mat');
% load('systemID_data_zip/chirp_motor4/sensor_data4.mat');
% load('systemID_data_zip/chirp_motor4/sensor_state_data4.mat');
% load('systemID_data_zip/chirp_motor4/state_est_data4.mat');

%% Part 1: Motor Speed Identification

T_s = 1/200;
F_s = 1/T_s;

A = [0 1;0 0];
syms c
B = [0 c]';
discrete_A = expm(A*T_s);
discrete_B = [T_s^2/2; T_s];

% Z_ned, vert speed, throttle
figure, hold on;
t = 0:T_s:4;
plot(t', motor_speed_data(:,1));
%legend('1','2','3','4');


% mixer_mat = [1, -1, 1, -1;
%             1, 1, -1, -1;
%             1, -1, -1, 1;
%             -1, -1, -1, -1];
%Throttle Estimate
T_in = sum(abs(motor_speed_data),2)/4;
T_in = T_in(201:501,:);
figure();
plot(t(201:501),T_in);

%Estimate C with regression
y_T = diff(state_est_data(:,10));
y_T = y_T(201:501,:);
A_T = [zeros(size(y_T)) T_in];
c_T = A_T\y_T;