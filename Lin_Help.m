%% Linearize Helper
% by Will Wu
close all, clc, clear;

syms phi theta psi;
R_phi= [1 0 0;0 cos(phi) sin(phi); 0 -sin(phi) cos(phi)];
R_theta = [cos(theta) 0 -sin(theta);0 1 0; sin(theta) 0 cos(theta)];
R_psi = [cos(psi) sin(psi) 0; -sin(psi) cos(psi) 0; 0 0 1];

H_theta = [1 0 -sin(theta); 
    0 cos(phi) sin(phi)*cos(theta); 
    0 -sin(phi) cos(phi)*cos(theta)];
H_theta_inv = simplify(inv(H_theta));

R_earth2body = simplify(R_phi * R_theta * R_psi);
R_body2earth = simplify(transpose(R_earth2body));
check = simplify(R_body2earth * R_earth2body);

syms u v w px py pz;
x = [px py pz u v w]';
x_dot = simplify(R_body2earth * [u v w]');

syms m g;
grav = R_earth2body * [0 0 m*g]';
