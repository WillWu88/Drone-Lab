%% ESE 4481 Homework 3
% By Will Wu
clear, clc, close all

%% Constant Declaration:
m = 0.068;
Jxx = 0.69e-4;
Jyy = 0.775e-4;
Jzz = 1.5e-4;
g = 9.8;

J = [Jxx 0 0; 0 Jyy 0; 0 0 Jzz];

F_b = zeros;
M_b = zeros;

W = 0.047625; % prop to com x distance
L = 0.047625; % prop to com y distance, in meters

prop_mass = 0.001; % in kg
prop_diam = 0.066; % meters
max_rpm = 29000; % hertz

% Curve fit estimating thrust coefficient
rpm = [11000 19000 23000 25000 26500 29000]';
c_t = [0.08 0.083 0.087 0.09 0.091 0.093]';

% regressor matrix
regressor = cat(2, ones(size(rpm)), rpm);
k_estimate = inv(regressor' * regressor) * regressor' * c_t;
offset = k_estimate(1);
slope = k_estimate(2);

residue = norm(c_t - regressor*k_estimate);
residue_cons = norm(c_t - 0.087*ones(size(c_t)));

% examine error
figure, hold on;
plot(rpm, c_t, '*');
plot(rpm, regressor*k_estimate);
legend('Real', 'Estimate');
%% 