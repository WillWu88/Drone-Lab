%% ESE-4481 HW 2
% By Will Wu
clear, clc, close all;
%% Constant Declaration
m = 0.068;
Jxx = 0.69e-4;
Jyy = 0.775e-4;
Jzz = 1.5e-4;
g = 9.8;
h = 10; % elevation

J = [Jxx 0 0; 0 Jyy 0; 0 0 Jzz];
syms px py pz px_dot py_dot pz_dot phi theta psi phi_dot theta_dot...
    psi_dot T A E R

x = [px py pz px_dot py_dot pz_dot phi theta psi phi_dot theta_dot...
    psi_dot];

u = [T A E R];

%system of diff eq
x_dot = [px_dot;
         py_dot;
         pz_dot;
         (cos(phi)*sin(theta)*cos(psi)+sin(phi)*sin(psi))*T/m;
         (cos(phi)*sin(theta)*sin(psi)-sin(phi)*cos(psi))*T/m;
         -g + (cos(phi)*cos(theta))*T/m;
         phi_dot;
         theta_dot;
         psi_dot;
         (Jyy-Jxx)/Jxx*theta_dot*psi_dot + A/Jxx;
         (Jzz-Jxx)/Jyy*theta_dot*psi_dot + E/Jyy;
         (Jxx-Jyy)/Jzz*phi_dot*theta_dot + R/Jzz;];

T_eq = g*m/(cos(0)*cos(0));
% eqilibrium points
x_eq = [0 0 -h 0 0 0 0 0 0 0 0 0];
u_eq = [T_eq 0 0 0];
%% Linerization

jacob_a = jacobian(x_dot, x);
jacob_b = jacobian(x_dot, u);

% substitute in equilibrium and 
lin_a_eq = double(subs(jacob_a, [x u], [x_eq u_eq]));
lin_b_eq = double(subs(jacob_b, [x u], [x_eq u_eq]));
c = eye(length(x), length(x));

%% Simulation
t = 0:0.001:1;
throttle_step = cat(1, 0.01*(heaviside(t-0.1) - heaviside(t-0.2)), ...
                       zeros(size(t)),...
                       zeros(size(t)),...
                       zeros(size(t)));
elev_step = cat(1, zeros(size(t)),...
                   zeros(size(t)),...
                   0.004 * (heaviside(t-0.1) - heaviside(t-0.2)),...
                   zeros(size(t)));
aileron_step = cat(1, zeros(size(t)),...
                   0.004 * (heaviside(t-0.1) - heaviside(t-0.2)),...
                   zeros(size(t)),...
                   zeros(size(t)));
rudder_step = cat(1, zeros(size(t)),...
                   zeros(size(t)),...
                   zeros(size(t)),...
                   0.004 * (heaviside(t-0.1) - heaviside(t-0.2)));


% plotting input signals
% figure; hold on;
% plot(t, throttle_step, t, elev_step, t, aileron_step, t, rudder_step);
% legend('T','E','A','R');

% create linearized state space system of drone
drone_linearized = ss(lin_a_eq, lin_b_eq, c, zeros(length(x),length(u)));

% simulate model using lsim
t_out = lsim(drone_linearized, throttle_step, t);
e_out = lsim(drone_linearized, elev_step, t);
a_out = lsim(drone_linearized, aileron_step, t);
r_out = lsim(drone_linearized, rudder_step, t);

%% Plotting

% Throttle Step Response
figure, hold on;
subplot(2,2,1);
plot(t, t_out(:,1:3));
legend('X','Y','Z');
title('Position Delta');
subplot(2,2,2);
plot(t, t_out(:,4:6));
legend('U','V','W');
title('Velocity Delta');
subplot(2,2,3);
plot(t, t_out(:,7:9));
legend('\phi','\theta','\psi');
title('Rotation Delta');
subplot(2,2,4);
plot(t, t_out(:,10:12));
legend('P','Q','R');
title('Angular Speed Delta');

sgtitle('Throttle Step Response');

% Elevator Step Response
figure, hold on;
subplot(2,2,1);
plot(t, e_out(:,1:3));
legend('X','Y','Z');
title('Position Delta');
subplot(2,2,2);
plot(t, e_out(:,4:6));
legend('U','V','W');
title('Velocity Delta');
subplot(2,2,3);
plot(t, e_out(:,7:9));
legend('\phi','\theta','\psi');
title('Rotation Delta');
subplot(2,2,4);
plot(t, e_out(:,10:12));
legend('P','Q','R');
title('Angular Speed Delta');

sgtitle('Elevator Step Response');

% Aileron Step Response
figure, hold on;
subplot(2,2,1);
plot(t, a_out(:,1:3));
legend('X','Y','Z');
title('Position Delta');
subplot(2,2,2);
plot(t, a_out(:,4:6));
legend('U','V','W');
title('Velocity Delta');
subplot(2,2,3);
plot(t, a_out(:,7:9));
legend('\phi','\theta','\psi');
title('Rotation Delta');
subplot(2,2,4);
plot(t, a_out(:,10:12));
legend('P','Q','R');
title('Angular Speed Delta');

sgtitle('Aileron Step Response');

% Rudder Step Response
figure, hold on;
subplot(2,2,1);
plot(t, r_out(:,1:3));
legend('X','Y','Z');
title('Position Delta');
subplot(2,2,2);
plot(t, r_out(:,4:6));
legend('U','V','W');
title('Velocity Delta');
subplot(2,2,3);
plot(t, r_out(:,7:9));
legend('\phi','\theta','\psi');
title('Rotation Delta');
subplot(2,2,4);
plot(t, r_out(:,10:12));
legend('P','Q','R');
title('Angular Speed Delta');

sgtitle('Rudder Step Response');

