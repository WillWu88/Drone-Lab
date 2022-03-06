%% Homework 5
% Part 2: Motor Model
% by Will Wu and Jackson Cox

clear, clc, close all;

%% Load All Data
load('log_chirp_data/hover_voltage.mat');
% load('log_chirp_data/hover_voltage_trial2.mat');
% load('log_chirp_data/log_chirp_1Hz.mat');
% load('log_chirp_data/log_chirp_5Hz.mat');
% load('log_chirp_data/log_chirp_10Hz.mat');
% load('log_chirp_data/log_chirp_20Hz.mat');
% load('log_chirp_data/log_chirp_50Hz.mat');
%% Constants

T_s = 1/1000;
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

motor_speed_trim = 292.4758;

t = 0:T_s:(length(motor_speed_data)/F_s);
t = t(1:end-1)';

%% Chirp 1

% examine hover motor speed
figure; hold on;
plot(t, motor_speed_data(:,1));
% legend('1','2','3','4');
xlabel('Time'), ylabel('Motor Speed');
title('Motor Speed');

% examine battery voltage, state
figure;
plot(t,sensor_data(:,7));

% volt_percent = double(volt_percent)/100;
volt_V = double(volt_V);

figure; hold on;
plot(t,double(volt_percent) .* volt_V(1)/100, t, volt_V);
legend('Times Percent', 'Actual');