
clear all

syms t q
t=0:0.025:4;
q1=0.1655*t.^5+(-1.281*t.^4)+3.557*t.^3+(-2.825*t.^2)+2.402*t-43.34
plot(t,q1,'m.','LineWidth',1.5)
hold on
q2=-0.2946*t.^5+2.294*t.^4+-6.484*t.^3+(4.933*t.^2)+-9.557*t+106.2
plot(t,q2,'g.','LineWidth',1.5)
hold on
q3=0.1318*t.^5+-1.042*t.^4+3.026*t.^3+(-2.254*t.^2)+-15.27*t+-62.9
plot(t,q3,'b.','LineWidth',1.5)
hold on
q4=0*t;
plot(t,q4,'k.','LineWidth',1.5)
hold on
title('Discrete Reference Points')
xlabel('Timestep(40HZ)');ylabel('Joint Reference Position(degrees)')