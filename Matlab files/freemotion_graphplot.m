
syms q dq ddq t

t = 0 : 0.1 : 3;

q1 = 0*t;
dq1 = 0*t;

q2 = -43.3169+11.28*t.^2-2.51*t.^3;
dq2 = 22.56*t - 7.53*t.^2;
ddq2 = 22.56-15.06*t;

q3 = 106.1965-29.515*t.^2+6.559*t.^3;
dq3 = -59.03*t + 19.677*t.^2;
ddq3 = -59.03+39.354*t;

q4 = -62.8796-11.732*t.^2+2.607*t.^3;
dq4 = -23.464*t + 7.821*t.^2;
ddq4 = -23.464+15.642*t;

plot(t,dq1,'DisplayName', '\theta_1');
hold on
plot(t,dq2,'DisplayName', '\theta_2');
hold on
plot(t,dq3,'DisplayName', '\theta_3');
hold on
plot(t,dq4,'DisplayName', '\theta_4');
hold on
xlabel('time (second)') 
ylabel('\theta (degree/s)')
legend



