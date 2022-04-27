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

% Controls
figure;
subplot(2,2,1);
plot(out.thrust_out);
title('Thrust');
subplot(2,2,2);
plot(out.aileron_out);
title('Aileron');
subplot(2,2,3);
plot(out.elevator_out);
title('Elevator');
subplot(2,2,4);
plot(out.rudder_out);
title('Rudder');
sgtitle('Control');


figure;
subplot(2,3,1);
plot(out.phi_est);
title('Phi');
subplot(2,3,2);
plot(out.theta_est);
title('Theta');
subplot(2,3,3);
plot(out.u_est);
title('U');
subplot(2,3,4);
plot(out.w_est);
title('W');
subplot(2,3,5);
plot(out.v_est);
title('V');
subplot(2,3,6);
plot(out.alt_est);
title('Alt');
sgtitle('States');

%% Function declarations


