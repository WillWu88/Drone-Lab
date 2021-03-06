%% Homework 6
% by Jackson Cox, Will Wu
clc, clear close all;

%% Extract ground pressure
load('Ground.mat');
ground_pressure = rt_pressure.signals.values; % pascals
g = 9.81; % acceleration due to gravity m/s^2
M = 0.0289644; % molar mass of air in kg/mol
R = 8.31432; % universal gas constant Nm/mol/k
p0 = 101325; % Pa standard pressure

T =288.15;  % Assumed temperature in kelvin
K =-g*M/R/T;
z_hypsometric =@(P) 1/K.*log(P./p0);
ground_alt = mean(z_hypsometric(ground_pressure));

%% load files

load('Stationary.mat');

%% Declare constants

f_s = 200; %Hz
T_s = 1/f_s;

%Fudge Factor: (can be calculated from measuring optical flow)
ff = 1.1;
%% Parsing Collected Data 

%might need to remove detrend here??
PbZ = double(detrend(rt_PbZ.signals.values,0));
p = double(rt_p.signals.values);
q = double(rt_q.signals.values);
r = double(rt_r.signals.values);
a_x = double(rt_a_x.signals.values);
a_y = double(rt_a_y.signals.values);
a_z = double(detrend(rt_a_z.signals.values,0));
u = double(rt_u.signals.values);
v = double(rt_v.signals.values);
pressure = double(rt_pressure.signals.values - 98440);

%% Plotting
figure;
histogram(PbZ);
xlabel('mean'), ylabel('PbZ');
title('PbZ');

figure;
histogram(p);
xlabel('mean'), ylabel('p');
title('p');

figure;
histogram(q);
xlabel('mean'), ylabel('q');
title('q');

figure;
histogram(r);
xlabel('mean'), ylabel('r');
title('r');

figure;
histogram(a_x);
xlabel('mean'), ylabel('a_x');
title('a_x');

figure;
histogram(a_y);
xlabel('mean'), ylabel('a_y');
title('a_y');

figure;
histogram(a_z);
xlabel('mean'), ylabel('a_z');
title('a_z');

figure;
histogram(u);
xlabel('mean'), ylabel('u');
title('u');

figure;
histogram(v);
xlabel('mean'), ylabel('v');
title('v');

figure;
histogram(pressure);
xlabel('mean'), ylabel('pressure');
title('pressure')

%% mean and variance
% show that detrend works
figure; hold on;
a_z = rt_a_z.signals.values;
plot(rt_tout, a_z, rt_tout, detrend(a_z,0));
legend('Org','Detrended');
a_z = rt_a_z.signals.values + 9.8;
title('Detrend Compared to Original')

all_data = [PbZ p q r a_x a_y a_z u v pressure];
all_mean = mean(all_data,1);
all_cov = cov(all_data);
all_var = diag(all_cov);

%% Define Kalman Fitler Parameters
% v phi estimate, p input
k_c = 0.22;
Aileron_A = [-9.81*k_c 9.81;0 0];
Aileron_B = [0;1];
v_phi = ss(Aileron_A, Aileron_B, [1 0], 0);
v_phi_dt = c2d(v_phi, T_s);
q_phi_dt = all_cov(2,2)*T_s;
r_phi_dt = [all_cov(9,9) 0;0 all_cov(6,6)*all_cov(7,7)];
q_scale = 0.5;

% u theta estimate
Elevator_A = [-9.81*k_c -9.81;0 0];
Elevator_B = [0;1];
u_theta = ss(Elevator_A, Elevator_B, [1 0], 0);
u_theta_dt = c2d(u_theta, T_s);
q_theta_dt = all_cov(3,3)*T_s;
r_theta_dt = [all_cov(8,8) 0;0,all_cov(5,5)*all_cov(6,6)*all_cov(7,7)];
q_scale_theta = 0.5;
%% Load In Signal
close all;
load('Stationary.mat');
PbZ = rt_PbZ;
p = rt_p;
q = rt_q;
r = rt_r;
a_x = rt_a_x;
a_y = rt_a_y;
a_z = rt_a_z;
u = rt_u;
v = rt_v;
pressure = rt_pressure;
mean_pressure = mean(pressure.signals.values);
%% Function declarations

