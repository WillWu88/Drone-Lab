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

x_dist = 0.047625; % prop to com x distance
y_dist = 0.047625; % prop to com y distance, in meters

prop_mass = 0.001; % in kg
prop_diam = 0.066; % meters
max_rpm = 29000; % rpm
max_rev = max_rpm/60;

air_density = 1.225; % kg/m^3
c_p = 0.041; % power coefficient, assume flat, constant coeff of power

%% Curve fit estimating thrust coefficient
rev = [11000 19000 23000 25000 26500 29000]'/60;
c_t = [0.08 0.083 0.087 0.09 0.091 0.093]';

% regressor matrix
regressor = cat(2, ones(size(rev)), rev);
k_estimate = inv(regressor' * regressor) * regressor' * c_t;
offset = k_estimate(1);
slope = k_estimate(2);

residual = norm(c_t - regressor*k_estimate);
residual_cons = norm(c_t - 0.087*ones(size(c_t)));

% examine error
figure, hold on;
plot(rev, c_t, '*');
plot(rev, regressor*k_estimate);
legend('Real', 'Estimate');

%% 