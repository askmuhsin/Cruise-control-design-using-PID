z = tf('z', 1);
Gz = (0.000231*z^2 - 0.000299*z + 0.0000742)/(z^3 - 1.9842*z^2 +0.9842*z + 0.0000742);

figure(1)
bode(Gz)

figure(2)
pzmap(Gz)

figure(3)
rlocus(Gz)
axis([-1 1 -1 1])
zgrid()