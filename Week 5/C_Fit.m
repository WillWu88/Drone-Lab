%% Homework 5
% Part 1: State and Input Identification
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

%% Constants

T_s = 1/200;
F_s = 1/T_s;

A = [0 1;0 0];
syms c
B = [0 c]';
discrete_A = expm(A*T_s);
discrete_B = [T_s^2/2; T_s];

t = 0:T_s:4;

% mixer motor arithmetic
% column 2 and 4 are sign-reversed since data from motor 2 & 4 are negative
mixer_mat = [1, -1, 1, -1; %T
            1, 1, -1, -1; %A
            1, -1, -1, 1; %E
            -1, -1, -1, -1]; %R

% Labels
a_x_l = 1;
a_y_l = 2;
a_z_l = 3;
p_l = 4;
q_l = 5;
r_l = 6;
h_l = 7;
h_prs_l = 8;

time_ind = 1;
x_l = 2;
y_l = 3;
h_est_l = 4;
psi_l = 5;
theta_l = 6;
phi_l = 7;
u_l = 8;
v_l = 9;
w_l = 10;
p_est_l = 11;
q_est_l = 12;
r_est_l = 13;


%% Z_{ned}, Vertical Speed and Throttle Estimate
load('systemID_data_zip/bang_bang_T/motor_speed_dataT.mat');
load('systemID_data_zip/bang_bang_T/sensor_dataT.mat');
load('systemID_data_zip/bang_bang_T/sensor_state_dataT.mat');
load('systemID_data_zip/bang_bang_T/state_est_dataT.mat');

T_in = sum(abs(motor_speed_data),2)/4;


W_in = state_est_data(:,w_l); % vertical speed from estimate
Z_in = sensor_data(:,h_l);

% identifying Bang-Bang thru plot
figure();
plot(t,T_in);
xlabel('time'), ylabel('Throttle');
title('Throttle Plot');

% viable data range condition
dat_range_cond = (t>=1 & t<=2.5);

% time slice data
T_slice = T_in(dat_range_cond,:);
W_treated = (diff(W_in(dat_range_cond)))/T_s;
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
output = W_treated;
regressor = [zeros(size(T_treated(1:end-1))) T_treated(1:end-1)];

C_throttle = regressor\output;

% Estimate vs Real Data Plots
% Linear Simulation
discrete_sys = ss(discrete_A, C_throttle(2)*[T_s^2/2;T_s],[1 0; 0 1],[0;0]);
ct_sys = ss(A, [0;C_throttle(2)], eye(2), [0;0]);
Total_t_treated = detrend(T_in, 0);
y_est_total = lsim(ct_sys, Total_t_treated, [0:T_s:4], ...
    [sensor_data(t==0,h_l) state_est_data(t==0,w_l)]);
y_est_slice = lsim(ct_sys, T_treated, [1:T_s:2.5], ...
    [sensor_data(t==1,h_l) state_est_data(t==1,w_l)]);


figure(), hold on;
plot(t, W_in);
plot(t,y_est_total (:,2));
xlabel('Time'), ylabel('Vertical Speed');
title('Vertical Speed: Real vs Estimate (Total Time Span)');
legend('Real', 'Est');

figure(), hold on;
plot(t(dat_range_cond), W_in(dat_range_cond));
plot(t(dat_range_cond),y_est_slice(:,2));
xlabel('Time'), ylabel('Vertical Speed');
title('Vertical Speed: Real vs Estimate (Bang Bang Input)');
legend('Real', 'Est');

%% Theta, q, Elevator
load('systemID_data_zip/bang_bang_E/motor_speed_dataE.mat');
load('systemID_data_zip/bang_bang_E/sensor_dataE.mat');
load('systemID_data_zip/bang_bang_E/sensor_state_dataE.mat');
load('systemID_data_zip/bang_bang_E/state_est_dataE.mat');

E_in = (mixer_mat(3,:)*motor_speed_data'/4)';

Theta_in = state_est_data(:,theta_l); % vertical speed from estimate
Q_in = sensor_data(:,q_l);

% identifying Bang-Bang thru plot
figure();
plot(t,E_in);
xlabel('time'), ylabel('Elevator');
title('Elevator Plot');

% viable data range condition
dat_range_cond = (t>=1 & t<=2);

% time slice data
E_slice = E_in(dat_range_cond,:);
Q_treated = (diff(Q_in(dat_range_cond)))/T_s;
Theta_treated = diff(Theta_in(dat_range_cond)); %needs fixing
E_treated = detrend(E_slice,0);

t_treated = t(dat_range_cond);
t_treated = t_treated(1:end-1);

% plotting treated data
figure();
plot(t(dat_range_cond),E_treated);
xlabel('time'), ylabel('Elevator');
title('Bang Bang Elevator');

figure();
plot(t_treated,Q_treated); 
xlabel('time'), ylabel('Pitch Rate');
title('Respective Pitch Rate');

figure();
plot(t_treated,Theta_treated);
xlabel('time'), ylabel('Pitch Angle');
title('Respective Pitch Angle');

% Estimate C with regression
output = Q_treated;
regressor = [zeros(size(E_treated(1:end-1))) E_treated(1:end-1)];

C_elevator = regressor\output;

% Estimate vs Real Data Plots
% Linear Simulation
discrete_sys = ss(discrete_A, C_elevator(2)*[T_s^2/2;T_s],[1 0; 0 1],[0;0]);
ct_sys = ss(A, [0;C_elevator(2)], eye(2), [0;0]);
Total_e_treated = detrend(E_in, 0);
y_est_total = lsim(ct_sys, Total_e_treated, [0:T_s:4], ...
    [state_est_data(t==0,theta_l) sensor_data(t==0,q_l)]);
y_est_slice = lsim(ct_sys, E_treated, [1:T_s:2], ...
    [state_est_data(t==1,theta_l) sensor_data(t==1,q_l)]);


figure(), hold on;
plot(t, Q_in);
plot(t,y_est_total (:,2));
xlabel('Time'), ylabel('Pitch Rate');
title('Pitch Rate: Real vs Estimate (Total Time Span)');
legend('Real', 'Est');

figure(), hold on;
plot(t(dat_range_cond), Q_in(dat_range_cond));
plot(t(dat_range_cond),y_est_slice(:,2));
xlabel('Time'), ylabel('Pitch Rate');
title('Pitch Rate: Real vs Estimate (Bang Bang Input)');
legend('Real', 'Est');

%% Phi, p, Aileron
load('systemID_data_zip/bang_bang_A/motor_speed_dataA.mat');
load('systemID_data_zip/bang_bang_A/sensor_dataA.mat');
load('systemID_data_zip/bang_bang_A/sensor_state_dataA.mat');
load('systemID_data_zip/bang_bang_A/state_est_dataA.mat');

A_in = (mixer_mat(2,:)*motor_speed_data'/4)';

Phi_in = state_est_data(:,phi_l); % vertical speed from estimate
P_in = sensor_data(:,p_l);

% identifying Bang-Bang thru plot
figure();
plot(t,A_in);
xlabel('time'), ylabel('Aileron');
title('Aileron Plot');

% viable data range condition
dat_range_cond = (t>=1 & t<=2);

% time slice data
A_slice = A_in(dat_range_cond,:);
P_treated = (diff(P_in(dat_range_cond)))/T_s;
Phi_treated = diff(Phi_in(dat_range_cond)); %needs fixing
A_treated = detrend(A_slice,0);

t_treated = t(dat_range_cond);
t_treated = t_treated(1:end-1);

% plotting treated data
figure();
plot(t(dat_range_cond),A_treated);
xlabel('time'), ylabel('Aileron');
title('Bang Bang Aileron');

figure();
plot(t_treated,P_treated); 
xlabel('time'), ylabel('Roll Rate');
title('Respective Roll Rate');

figure();
plot(t_treated,Phi_treated);
xlabel('time'), ylabel('Roll Angle');
title('Respective Roll Angle');

% Estimate C with regression
output = P_treated;
regressor = [zeros(size(A_treated(1:end-1))) A_treated(1:end-1)];

C_aileron = regressor\output;

% Estimate vs Real Data Plots
% Linear Simulation
discrete_sys = ss(discrete_A, C_aileron(2)*[T_s^2/2;T_s],[1 0; 0 1],[0;0]);
ct_sys = ss(A, [0;C_aileron(2)], eye(2), [0;0]);
Total_a_treated = detrend(A_in, 0);
y_est_total = lsim(ct_sys, Total_a_treated, [0:T_s:4], ...
    [state_est_data(t==0,phi_l) sensor_data(t==0,p_l)]);
y_est_slice = lsim(ct_sys, A_treated, [1:T_s:2], ...
    [state_est_data(t==1,phi_l) sensor_data(t==1,p_l)]);


figure(), hold on;
plot(t, P_in);
plot(t,y_est_total (:,2));
xlabel('Time'), ylabel('Roll Rate');
title('Pitch Rate: Real vs Estimate (Total Time Span)');
legend('Real', 'Est');

figure(), hold on;
plot(t(dat_range_cond), P_in(dat_range_cond));
plot(t(dat_range_cond),y_est_slice(:,2));
xlabel('Time'), ylabel('Roll Rate');
title('Roll Rate: Real vs Estimate (Bang Bang Input)');
legend('Real', 'Est');

%% Psi, r, Rudder
load('systemID_data_zip/bang_bang_R/motor_speed_dataR.mat');
load('systemID_data_zip/bang_bang_R/sensor_dataR.mat');
load('systemID_data_zip/bang_bang_R/sensor_state_dataR.mat');
load('systemID_data_zip/bang_bang_R/state_est_dataR.mat');

t = 0:T_s:3.02;

Rudder_in = (mixer_mat(4,:)*motor_speed_data'/4)';

Psi_in = state_est_data(:,psi_l); % vertical speed from estimate
R_in = sensor_data(:,r_l);

% identifying Bang-Bang thru plot
figure();
plot(t,Rudder_in);
xlabel('time'), ylabel('Rudder');
title('Rudder Plot');

% viable data range condition
dat_range_cond = (t>=1 & t<=2.25);

% time slice data
Rudder_slice = Rudder_in(dat_range_cond,:);
R_treated = (diff(R_in(dat_range_cond)))/T_s;
Psi_treated = diff(Psi_in(dat_range_cond)); %needs fixing
Rudder_treated = detrend(Rudder_slice,0);

t_treated = t(dat_range_cond);
t_treated = t_treated(1:end-1);

% plotting treated data
figure();
plot(t(dat_range_cond),Rudder_treated);
xlabel('time'), ylabel('Rudder');
title('Bang Bang Rudder');

figure();
plot(t_treated,R_treated); 
xlabel('time'), ylabel('Yaw Rate');
title('Respective Yaw Rate');

figure();
plot(t_treated,Psi_treated);
xlabel('time'), ylabel('Yaw Angle');
title('Respective Yaw Angle');

% Estimate C with regression
output = R_treated;
regressor = [zeros(size(Rudder_treated(1:end-1))) Rudder_treated(1:end-1)];

C_rudder = regressor\output;

% Estimate vs Real Data Plots
% Linear Simulation
discrete_sys = ss(discrete_A, C_rudder(2)*[T_s^2/2;T_s],[1 0; 0 1],[0;0]);
ct_sys = ss(A, [0;C_rudder(2)], eye(2), [0;0]);
Total_rudder_treated = detrend(Rudder_in, 0);
y_est_total = lsim(ct_sys, Total_rudder_treated, [0:T_s:3.02], ...
    [state_est_data(t==0,psi_l) sensor_data(t==0,r_l)]);
y_est_slice = lsim(ct_sys, Rudder_treated, [1:T_s:2.25], ...
    [state_est_data(t==1,psi_l) sensor_data(t==1,r_l)]);


figure(), hold on;
plot(t, R_in);
plot(t,y_est_total (:,2));
xlabel('Time'), ylabel('Yaw Rate');
title('Yaw Rate: Real vs Estimate (Total Time Span)');
legend('Real', 'Est');

figure(), hold on;
plot(t(dat_range_cond), R_in(dat_range_cond));
plot(t(dat_range_cond),y_est_slice(:,2));
xlabel('Time'), ylabel('Yaw Rate');
title('Yaw Rate: Real vs Estimate (Bang Bang Input)');
legend('Real', 'Est');
