%% Homework 5
% by Jackson Cox, Will Wu
clear, clc, close all;

%% load files

load('RSdata.mat');

%% Declare constants

f_s = 200; %Hz
T_s = 1/f_s;

%Fudge Factor: (can be calculated from measuring optical flow)
ff = .90;
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
pressure = double(detrend(rt_pressure.signals.values,0));

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
a_z = detrend(rt_a_z.signals.values,0);

all_data = [PbZ p q r a_x a_y a_z u v pressure];
all_mean = mean(all_data,1);
all_cov = cov(all_data);
all_var = diag(all_cov);

%% Load In Signal
load('RSdata.mat');
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