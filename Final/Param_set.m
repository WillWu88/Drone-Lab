%% ESE-4481 HW 7
% By Will Wu, Jackson Cox
clear, clc, close all;
%% Constant Declaration
m = 0.068;
Jxx = 0.69e-4;
Jyy = 0.775e-4;
Jzz = 1.5e-4;
g = 9.8;
h = 10; % elevation

J = [Jxx 0 0; 0 Jyy 0; 0 0 Jzz];
syms px_e py_e pz_e u v w phi theta psi phi_dot theta_dot...
    psi_dot T A E R

r_phi = [1 0 0;0 cos(phi) sin(phi);0 -sin(phi) cos(phi)];
r_theta = [cos(theta) 0 -sin(theta);0 1 0; sin(theta) 0 cos(theta)];
r_psi = [cos(psi) sin(psi) 0; -sin(psi) cos(psi) 0; 0 0 1];

R_e2b = r_phi * r_theta * r_psi;
R_b2e = transpose(R_e2b); % rotation matrices are orthonormal

x = [px_e py_e pz_e u v w phi theta psi phi_dot theta_dot...
    psi_dot];

control = [T A E R];

%system of diff eq
x_dot = simplify([R_b2e * [u v w]';
                 (cos(phi)*sin(theta)*cos(psi)+sin(phi)*sin(psi))*T/m;
                 (cos(phi)*sin(theta)*sin(psi)-sin(phi)*cos(psi))*T/m;
                 -g + (cos(phi)*cos(theta))*T/m;
                 phi_dot;
                 theta_dot;
                 psi_dot;
                 (Jyy-Jxx)/Jxx*theta_dot*psi_dot + A/Jxx;
                 (Jzz-Jxx)/Jyy*theta_dot*psi_dot + E/Jyy;
                 (Jxx-Jyy)/Jzz*phi_dot*theta_dot + R/Jzz;]);

T_eq = g*m/(cos(0)*cos(0));
% eqilibrium points
x_eq = [0 0 h 0 0 0 0 0 0 0 0 0];
u_eq = [T_eq 0 0 0];

%% Linerization

jacob_a = jacobian(x_dot, x);
jacob_b = jacobian(x_dot, control);

% substitute in equilibrium and 
lin_a_eq = double(subs(jacob_a, [x control], [x_eq u_eq]));
lin_b_eq = double(subs(jacob_b, [x control], [x_eq u_eq]));
c = eye(length(x), length(x));

%% linearize equations
