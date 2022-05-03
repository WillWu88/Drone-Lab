%% Homework 6
% by Jackson Cox, Will Wu
clc, close all;

% %% Extract ground pressure
% load('Flight.mat');
% ground_pressure = rt_pressure.signals.values; % pascals
% g = 9.8; % acceleration due to gravity m/s^2
% M = 0.0289644; % molar mass of air in kg/mol
% R = 8.31432; % universal gas constant Nm/mol/k
% p0 = 101325; % Pa standard pressure
% 
% T =288.15;  % Assumed temperature in kelvin
% K =-g*M/R/T;
% z_hypsometric =@(P) 1/K.*log(P./p0);
% ground_alt = mean(z_hypsometric(ground_pressure));
% 
% 
% %% Declare constants
% 
% f_s = 200; %Hz
% T_s = 1/f_s;
% 
% %Fudge Factor: (can be calculated from measuring optical flow)
% ff = 1.1;
%% Parsing Collected Data 
load('RSdata.mat');
% Controls
figure;
plot(rt_test_mixer.signals.values);
title('Thrust');



figure;
subplot(2,3,1);
plot(rt_phi_est.signals.values);
title('Phi');
subplot(2,3,2);
plot(rt_theta_est.signals.values);
title('Theta');
subplot(2,3,3);
plot(rt_u_est.signals.values);
title('U');
subplot(2,3,4);
plot(rt_w_est.signals.values);
title('W');
subplot(2,3,5);
plot(rt_v_est.signals.values);
title('V');
subplot(2,3,6);
plot(rt_alt_est.signals.values);
title('Alt');
sgtitle('States');

%% Function declarations


