
clear all
clc 
syms x y z
x0=254;
x1=330.2;% Type two points to get the straight line function
y0=0;
y1=0;
z0=127;
z1=0;
if y1-y0==0 || x1-x0==0
    disp('no x-y function')
else x=((y-y0)/(y1-y0))*(x1-x0)+(x1-x0)
end
if y1-y0==0 || z1-z0==0
    disp('no z-y function')
else y=((z-z0)/(z1-z0))*(y1-y0)+(y1-y0)
end
if z1-z0==0 || x1-x0==0
    disp('no x-z function')
else x=((z-z0)/(z1-z0))*(x1-x0)+(x1-x0)
end

%then we can put the value to get sample points below
X=[-43.32,-42.57,-41.22,-39.28,-36.69,-33.32,-28.84,-22.39,-9.58];
X1=[106.20,102.18,96.95,90.43,82.47,72.81,60.83,45.04,17.65];
X2=[-62.88,-70.85,-78.22,-84.9,-90.78,-95.73,-99.49,-101.41,-98.07];
X3=[0,0,0,0,0,0,0,0,0];
Y=[0,0.5,1,1.5,2,2.5,3,3.5,4];
p=polyfit(Y,X,5);
xfit=polyval(p,Y);
p1=polyfit(Y,X1,5);
x1fit=polyval(p1,Y);
p2=polyfit(Y,X2,5);
x2fit=polyval(p2,Y);
p3=polyfit(Y,X3,5);
x3fit=polyval(p3,Y);
hold on
plot(Y,xfit,'mo','MarkerFaceColor','m')
plot(Y,xfit,'m-')
plot(Y,x1fit,'gs','MarkerFaceColor','g')
plot(Y,x1fit,'g-')
plot(Y,x2fit,'bd','MarkerFaceColor','b')
plot(Y,x2fit,'b-')
plot(Y,x3fit,'kp','MarkerFaceColor','k')
plot(Y,x3fit,'k-')
title('Fit Quintic to Position')
xlabel('Time(s)');ylabel('Joint Position(degrees)')