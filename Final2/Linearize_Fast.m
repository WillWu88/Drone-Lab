% Jackson Cox
% Assignment 7

clc; close all;
T_s = 1/200;
%symbolic variables
syms phi theta psi;
%rotation matrices
roll_BE = simplify(inv([1 0 0; 0 cos(phi) sin(phi); 0 -sin(phi) cos(phi)]));
pitch_BE = simplify(inv([cos(theta) 0 -sin(theta); 0 1 0; sin(theta) 0 cos(theta);]));
yaw_BE = simplify(inv([cos(psi) sin(psi) 0; -sin(psi) cos(psi) 0; 0 0 1;]));
%initial condition solver
syms m g
grav_body = roll_BE'*pitch_BE'*yaw_BE'*[0;0;m*g];
grav_body = subs(grav_body, phi, 0);
vb_i = roll_BE'*pitch_BE'*yaw_BE'*[1;0;0];
vb_i = subs(vb_i,[phi psi],[0 0]);
syms u v w 
vb = [u;v;w;];
pE_dot = yaw_BE*pitch_BE*roll_BE*vb;
syms p q r
w_BE =[p;q;r];
BigT = [phi;theta; psi];
H = [1 0 -sin(theta); 0 cos(phi) sin(phi)*cos(theta); 0 -sin(phi) cos(phi)*cos(theta)];
BigT_dot = simplify(inv(H)*w_BE);
syms v1 v2 v3 v4 rho ct D m g T A E R
FbT = [0;0;T];
FbA = -T*[0.22 0 0; 0 0.22 0; 0 0 0;]*vb;
FgB = roll_BE'*pitch_BE'*yaw_BE'*[0;0; m*g];
vb_dot = (1/m)*(FbT + FbA + FgB - cross(w_BE,m*vb)) ;
syms Jp n1 n2 n3 n4 Jxx Jyy Jzz
MbT = ([A;E;R]);
MbOmega = cross(w_BE, [0;0;Jp*2*pi*(n1-n2+n3-n4);]);
J = [Jxx 0 0; 0 Jyy 0; 0 0 Jzz];
w_BE_dot = inv(J)*(MbT +MbOmega -cross(w_BE,J*w_BE));

%linearization
f= [pE_dot;vb_dot(3);vb_dot(2);BigT_dot(1);w_BE_dot(1);vb_dot(1);BigT_dot(2);w_BE_dot(2);BigT_dot(3);w_BE_dot(3)];
%state vector 
syms pN pE pD 
x_vec = [pN;pE;pD;w;v;phi;p;u;theta;q;psi;r;];
%input vector
u_vec = [T; A; E; R;];
%initial conditions
x0 = [0; 0; -1; sin(-.2119); 0; 0; 0; cos(.2119); -.2119; 0; 0; 0;]; %hover or initial velocity??? Ask about this.
xhover = [0; 0; -1; 0; 0; 0; 0; 0; 0; 0; 0; 0;];
ic_hover = [m*g;0;0;0]; %not sure how to code this up as 1 m/s of x-velocity
ic_u = [0.6522;0;0;0];
f_x = jacobian(f, x_vec);
f_u = jacobian(f,u_vec);
A = subs(f_x,x_vec, x0);
A = simplify(subs(A, u_vec, ic_u));
B = subs(f_u, x_vec, x0);
B = simplify(subs(B, u_vec, ic_u));
% add step where we plug in constants
A = subs(A, [g D ct rho m Jp],[9.81 2*.066 .08 1.225 .068 1.089*10^(-6)]);
B = subs(B, [m Jxx Jyy Jzz], [.068 .69e-4 .775e-4 1.5e-4]);


% Decoupling into 5 Different Systems
% Throttle, PD, and w
A_dT_PD = double(A(3:4,3:4));
B_dT_PD = double(B(3:4,1));
A_dt_v = double(A(5:7,5:7));
A_dt_u = double(A(8:10,8:10));
A_dt_psi = double(A(11:12,11:12));
B_dt_v = double(B(5:7, 2));
B_dt_u = double(B(8:10, 3));
B_dt_psi = double(B(11:12,4));
A_dt_PN = double(A(1:2,1:2));
B_dt_PN = double([A(1,8) A(1,11);A(2,8) A(2,11)]);

%changing to discrete time for Kalman filters
% Throttle, PD, and w 
syms t
Thrust_A = expm(A_dT_PD .* (1/200));
fun = expm(A_dT_PD.*t);
Thrust_B = double(int(fun, 0, 1/200))*B_dT_PD;

% V Phi P (Aileron) need to be fixed so they aren't zero
% Aileron_A = expm(A_dt_v(1:2,1:2) .* (1/200));
% fun2 = expm (A_dt_v(1:2,1:2).*t);
% Aileron_B = double(int(fun2,0,1/200))*eye(2);

% Aileron_B = Aileron_B(1:2);
% U theta q (Elevator) needs to be fixed
Elevator_A = expm(A_dt_u(1:2,1:2) .* (1/200));
fun3 = expm(A_dt_u(1:2,1:2).*t);
Elevator_B = double(int(fun3,0,1/200))*eye(2);
% Elevator_A = Elevator_A(1:2,1:2);
% Elevator_B = Elevator_B(1:2);
%% Controllability and Observability of Decoupled Systems 
syms s
% PD w
ctrb_PD = rref(ctrb(A_dT_PD, B_dT_PD));
obsv_PD = rref(obsv(A_dT_PD, eye(2)));
tf_PD = simplify(eye(2) * inv(s*eye(2) - A_dT_PD) * B_dT_PD);
% V Phi P
ctrb_v = rref(ctrb(A_dt_v, B_dt_v));
obsv_v = rref(ctrb(A_dt_v, eye(3)));
tf_v = simplify(eye(3) * inv(s*eye(3) - A_dt_v) * B_dt_v);
% u theta q
ctrb_u = rref(ctrb(A_dt_u, B_dt_u));
obsv_u = rref(obsv(A_dt_u, eye(3)));
% Psi R
ctrb_psi = rref(ctrb(A_dt_psi, B_dt_psi));
obsv_psi = rref(ctrb(A_dt_psi, eye(2)));
tf_psi = simplify(eye(2) * inv(s*eye(2) - A_dt_psi) * B_dt_psi);
% PN PE
ctrb_pn = rref(ctrb(A_dt_PN, B_dt_PN));
obsv_pn = rref(ctrb(A_dt_PN, eye(2)));
tf_pn = simplify(eye(2) * inv(s*eye(2) - A_dt_PN) * B_dt_PN);


%% Linearizing Mixer Matrix
syms a b c d
v_motor = (1/4)*[1/a 1/b 1/c -1/d; 
           1/a -1/b 1/c 1/d; 
           1/a -1/b -1/c -1/d; 
           1/a 1/b -1/c 1/d;]*u_vec;
n = sqrt(v_motor);
n_lin = jacobian(n, u_vec);
Mixer =  double(subs(n_lin, [u_vec; a; b; c; d;], [.66708; 0; 0; 0;(1.86e-6);(8.856e-8);(8.856e-8);(9.766e-9)]));

%% Run param set, lqr calc
load('cov_data.mat');

g = 9.81; % acceleration due to gravity m/s^2
M = 0.0289644; % molar mass of air in kg/mol
R = 8.31432; % universal gas constant Nm/mol/k
p0 = 101325; % Pa standard pressure

T =288.15;  % Assumed temperature in kelvin
K =-g*M/R/T;

f_s = 200; %Hz
T_s = 1/f_s;

%Fudge Factor: (can be calculated from measuring optical flow)
ff = 1.1;
ground_alt = 180.2070;
%% Calculating LQR
[K_PD, S] = lqr(A_dT_PD, B_dT_PD, [50 0; 0 1], 10000);
[K_v, S] = lqr(A_dt_v, B_dt_v, [1 0 0; 0 50 0; 0 0 1], 10000);
[K_u, S] = lqr(A_dt_u, B_dt_u, [1 0 0; 0 1 0; 0 0 50], 10000);
[K_psi, S] = lqr(A_dt_psi, B_dt_psi, [50 0; 0 1], 10000);