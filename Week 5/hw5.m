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
% figure, hold on;
t = 0:T_s:4;
% plot(t', motor_speed_data(:,1));
%legend('1','2','3','4');


% mixer_mat = [1, -1, 1, -1;
%             1, 1, -1, -1;
%             1, -1, -1, 1;
%             -1, -1, -1, -1];

%% Z_{ned}, Vertical Speed and Throttle Estimate
T_in = sum(abs(motor_speed_data),2)/4;
dat_range_cond = (t>=1 & t<=2.5);

W_in = state_est_data(:,10); % vertical speed from estimate
Z_in = sensor_data(:,7);

% identifying Bang-Bang thru plot
figure();
plot(t,T_in);
xlabel('time'), ylabel('Throttle');
title('Throttle Plot');

% time slice data
T_slice = T_in(dat_range_cond,:);
W_treated = (diff(W_in(dat_range_cond)))/T_s;
% inversing sign on vertical speed because positive down axis
Z_treated = diff(Z_in(dat_range_cond)); %needs fixing
T_treated = detrend(T_slice,0);
t_treated = t(dat_range_cond);
t_treated = t_treated(1:end-1);
% plotting treated data
figure();
plot(t(dat_range_cond),T_treated);
xlabel('time'), ylabel('Throttle');
title('Bang Bang Throttle');

figure();
plot(t_treated,W_treated); 
xlabel('time'), ylabel('Vertical Speed');
title('Respective Vertical Speed');

figure();
plot(t_treated,Z_treated);
xlabel('time'), ylabel('Altitude');
title('Respective Altitude');

% Estimate C with regression
% y = [Z_treated W_treated];
% x = [T_treated(1:end-1)*T_s^2*0.5 T_s*T_treated(1:end-1)];
y = W_treated;
x = [zeros(size(T_treated(1:end-1))) T_treated(1:end-1)];

% C1 = y(:,1)\[zeros(size(x,1),1), x(:,1)];
% C2 = y(:,2)\[zeros(size(x,1),1), x(:,2)];
C1 = x\y;
%C2 = x\y(:,2);

%% Estimate vs Real Data
%Linear Simulation
discrete_sys = ss(discrete_A, C1(2)*[T_s^2/2;T_s],[1 0; 0 1],[0;0]);
ct_sys = ss(A, [0;C1(2)], eye(2), [0;0]);
y_est = lsim(ct_sys, T_treated, [1:T_s:2.5], [sensor_data(t==1,7) state_est_data(t==1,10)]);

figure(), hold on;

plot(t(dat_range_cond), W_in(dat_range_cond));
plot(t(dat_range_cond),y_est(:,2));
%plot(t(dat_range_cond), T_s*T_treated*C1(2));

xlabel('Time'), ylabel('Vertical Speed');
title('Vertical Speed: Real vs Estimate');
legend('Real', 'Est');