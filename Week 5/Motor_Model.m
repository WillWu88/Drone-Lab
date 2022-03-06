%% Homework 4
% Part 2: Motor Model
% by Will Wu and Jackson Cox

clear, clc, close all;

%% Constants

T_s = 1/200;
F_s = 1/T_s;

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
max_volt = 4.1; % max battery voltage, from the battery packaging


%% Battery Model
% Load Data
load('log_chirp_data/hover_voltage.mat');
% load('log_chirp_data/hover_voltage_trial2.mat');


t = 0:T_s:(length(motor_speed_data)/F_s);
t = t(1:end-1)';

% examine hover motor speed
figure; hold on;
plot(t, motor_speed_data(:,1));
% legend('1','2','3','4');
xlabel('Time'), ylabel('Motor Speed');
title('Motor Speed');

% examine battery voltage, state
figure;
plot(t,sensor_data(:,h_l));
title('Altitude');

% volt_percent = double(volt_percent)/100;
volt_V = double(volt_V);

figure; hold on;
plot(t,double(volt_percent) .* volt_V(1)/100, t, volt_V);
legend('Percentage', 'Actual');

% Percentage data looks unusable here, proceeding with volt_V
volt_percent = volt_V/max_volt;
figure; hold on;
plot(t,volt_percent);
title('Voltage Percentage');

regressor = [ones(size(volt_percent)) volt_percent];
output_m1 = motor_speed_trim ./motor_speed_data(:,1);
output_m2 = motor_speed_trim ./motor_speed_data(:,2);
output_m3 = motor_speed_trim ./motor_speed_data(:,3);
output_m4 = motor_speed_trim ./motor_speed_data(:,4);
% first entry is extremely large. Consider removal

c1 = regressor\output_m1;
c2 = regressor\output_m2;
c3 = regressor\output_m3;
c4 = regressor\output_m4;

% examine fit quality

% motor 1: prediction vs actual
predicted_m1_v = motor_speed_trim ./ (c1(1) + c1(2)*volt_percent);
predicted_m2_v = motor_speed_trim ./ (c2(1) + c2(2)*volt_percent);
predicted_m3_v = motor_speed_trim ./ (c3(1) + c3(2)*volt_percent);
predicted_m4_v = motor_speed_trim ./ (c4(1) + c4(2)*volt_percent);

figure, hold on;
subplot(2,2,1);
plot(t, motor_speed_data(:,1), t, predicted_m1_v);
legend('Actual', 'Predicted');

subplot(2,2,2);
plot(t, motor_speed_data(:,2), t, predicted_m2_v);
legend('Actual', 'Predicted');

subplot(2,2,3);
plot(t, motor_speed_data(:,3), t, predicted_m3_v);
legend('Actual', 'Predicted');

subplot(2,2,4);
plot(t, motor_speed_data(:,4), t, predicted_m4_v);
legend('Actual', 'Predicted');

sgtitle('Voltage Drop Compensation: Predicted vs Actual Motor Speed');

%% Motor Modelling

% Load Data
load('log_chirp_data/log_chirp_50Hz.mat');
% load('log_chirp_data/log_chirp_1Hz.mat');
% load('log_chirp_data/log_chirp_5Hz.mat');
% load('log_chirp_data/log_chirp_10Hz.mat');
% load('log_chirp_data/log_chirp_20Hz.mat');

% Data file specific parameters
t = 0:T_s:(length(motor_speed_data)/F_s);
t = t(1:end-1)';



% examine motor data: Motor 1
t_chirp = 0:T_s:22.995; %changed ranged to only second chirp because the 
% first chirp does not correlate well with motor speeds
range = (t_chirp>=10 & t_chirp<= 20);
figure(), hold on;
plot(t_chirp(range),detrend(motor_speed_data(range,1),0));
plot(t_chirp(range),chirp_data(range,1));
legend("n_a","n_c"); 
xlabel("Time (s)");
ylabel("Amplitude (Hz)");
title("Motor 1: Commanded motor speed and actual motor speed over time");

%Motor 2:
figure(), hold on;
plot(t_chirp(range),detrend(motor_speed_data(range,2),0));
plot(t_chirp(range),chirp_data(range,2));
legend("n_a","n_c");
xlabel("Time (s)");
ylabel("Amplitude (Hz)");
title("Motor 2: Commanded motor speed and actual motor speed over time");

%Motor 3:
figure(), hold on;
plot(t_chirp(range),detrend(motor_speed_data(range,3),0));
plot(t_chirp(range),chirp_data(range,3));
legend("n_a","n_c");
xlabel("Time (s)");
ylabel("Amplitude (Hz)");
title("Motor 3: Commanded motor speed and actual motor speed over time");

%Motor 4:
figure(), hold on;
plot(t_chirp(range),detrend(motor_speed_data(range,4),0));
plot(t_chirp(range),chirp_data(range,4));
legend("n_a","n_c");
xlabel("Time (s)");
ylabel("Amplitude (Hz)");
title("Motor 4: Commanded motor speed and actual motor speed over time");

