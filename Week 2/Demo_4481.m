mu = 4;
myDynamics = @(z)[mu * (z(1)-1/3*z(1)^3 - z(2)); 1/mu * z(1)];


[tout, yout] = ode45(@myDynamics, [0 20], [3 4]);
