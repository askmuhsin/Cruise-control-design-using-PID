m = 1084;   %mass
b = 17;     %damping coefficient
u = 475.72; %nominal force
r = 27.78;  %desired speed

Gs = tf(1, [m, b]); % s-domain

Ts = 1;             % sampling time
Gz = c2d(Gs, Ts);   % z-domain

% analysis of step response
figure(1)
step(u*Gs)

% Open-loop poles/zeros
figure(2)
pzmap(Gz)
axis([-1 1 -1 1])

% Open-loop Bode plot
figure(3)
bode(Gz)
