clear all;
clc;
close all;

nmax = 100;
max_error = 1e-3;

%initialization
ii = 1;
error(ii)=10;

xe = input('enter xe: ');
ye = input ('enter ye: ');
ze = input ('enter ze: ');

%input robot arm length
D1 = input ('enter length D1: ');
L1 = input ('enter length L1: ');
L2 = input ('enter length L2: ');


%initial guess for angles
% theta1(ii) = pi*input('enter initial guess for theta 1 in deg: ')/180;
theta1(ii) = pi*input('enter initial guess for theta 1 (deg): ')/180;
theta2(ii) = pi*input('enter initial guess for theta 2 (deg): ')/180;
theta3(ii) = pi*input('enter initial guess for theta 3 (deg): ')/180;



f1 = cos(theta1(ii))*(L2*cos(theta2(ii) + theta3(ii)) + L1*cos(theta2(ii))) - xe;
f2 = sin(theta1(ii))*(L2*cos(theta2(ii) + theta3(ii)) + L1*cos(theta2(ii))) - ye;
f3 = D1 + L1*sin(theta2(ii)) + L2*sin(theta3(ii)) - ze;



% Recursive Loop
while(ii<nmax) && (error(ii)>max_error)
     J = [-sin(theta1(ii))*(L2*cos(theta2(ii) + theta3(ii)) + L1*cos(theta2(ii))), -cos(theta1(ii))*(L2*sin(theta2(ii) + theta3(ii)) + L1*sin(theta2(ii))), -L2*sin(theta2(ii) + theta3(ii))*cos(theta1(ii));
          cos(theta1(ii))*(L2*cos(theta2(ii) + theta3(ii)) + L1*cos(theta2(ii))), -sin(theta1(ii))*(L2*sin(theta2(ii) + theta3(ii)) + L1*sin(theta2(ii))), -L2*sin(theta2(ii) + theta3(ii))*sin(theta1(ii));
          0,L1*cos(theta2(ii)),L2*cos(theta3(ii))];

     fx = [cos(theta1(ii))*(L2*cos(theta2(ii) + theta3(ii)) + L1*cos(theta2(ii))) - xe;sin(theta1(ii))*(L2*cos(theta2(ii) + theta3(ii)) + L1*cos(theta2(ii))) - ye;D1 + L1*sin(theta2(ii)) + L2*sin(theta3(ii)) - ze]
     theta = [theta1(ii);theta2(ii);theta3(ii)]-inv(J)*fx;
     ii = ii + 1;
     theta1(ii)=theta(1);
     theta2(ii)=theta(2);
     theta3(ii)=theta(3);
 
     error(ii)=norm(fx);
end

%plot the results
figure;
title('Inverse Kinematics solution for 2DOF planar arm using Newton-Raphson method');
subplot(4,1,1);
plot(theta1,'*-');
xlabel('iteration number');
ylabel('theta1');
subplot(4,1,2);
plot(theta2,'*-');
xlabel('iteration number');
ylabel('theta2');
subplot(4,1,3);
plot(theta3,'*-');
xlabel('iteration number');
ylabel('theta3');
subplot(4,1,4);
plot(error,'*-');
xlabel('iteration number');
ylabel('error');

disp('theta1: ');
disp(rad2deg(theta1(end)));
disp('theta2: ');
disp(rad2deg(theta2(end)));
disp('theta3: ');
disp(rad2deg(theta3(end)));

%visualize the results
figure;
plot(xe,ze,'rx','MarkerFaceColor',[1 0 0]);
hold on;
line([0 0 L1*cos(theta2(end)) L1*cos(theta2(end))+L2*cos(theta2(end)+theta3(end))],[0 50 D1+L1*sin(theta2(end)) D1+L1*sin(theta2(end))+L2*sin(theta3(end))],'LineWidth',3,'Color','k');
plot(xe,ze,'go','MarkerSize',3,'MarkerFaceColor',[0 0 1]);
xlim([-10 230]);
ylim([-0.4 180]);
legend('goal position','computed robot arm');