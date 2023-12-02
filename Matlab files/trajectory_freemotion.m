clear
clc
%forward kinematic solution%
syms c1 c2 c3 c4 c5 s1 s2 s3 s4 s5
syms L1 L2 L3 d1
syms q1 q2 q3 q4 q5

%% Links Lengths
%unit in inch
l1 = 5.75;
l2 = 7.4;
l3 = 2.44;
d1 = 2.36;

%convert to meter
l1 = l1*25.4;
l2 = l2*25.4;
l3 = l3*25.4;
d1 = d1*25.4;

L1 = l1;
L2 = l2;
L3 = l3;
%-----------------------------%

%end effector location
xc = 127;
yc = 152.4;
zc = 254;

%joint angles (degrees)
q1 = rad2deg(atan(yc/xc));
q2 =   36.1341 ;
q3 = 28.552;
q4 =  -154.6862;

%-----------------------------%

x1 = 0;
y1 = 0;
z1 = d1;

x2 = x1+L1*cosd(q2)*cosd(q1);
y2 = y1+L1*cosd(q2)*sind(q1);
z2 = z1+L1*sind(q2);

x3 = x2+L2*cosd(q3+q2)*cosd(q1);
y3 = y2+L2*cosd(q3+q2)*sind(q1);
z3 = z2+L2*sind(q3+q2);

x4 = x3+L3*cosd(q2+q3+q4)*cosd(q1);
y4 = y3+L3*cosd(q2+q3+q4)*sind(q1);
z4 = z3+L3*sind(q2+q3+q4);
%-----------------------------%
xplot = [0,x1,x2,x3,xc];
yplot = [0,y1,y2,y3,yc];
zplot = [0,z1,z2,z3,zc];

disp(xplot);
disp(yplot);
disp(zplot);

plot3(xplot,yplot,zplot,'ko-','Linewidth',2)
grid on
grid minor
xlabel('x-axis (mm)') 
ylabel('y-axis (mm)')
zlabel('z-axis (mm)') 


