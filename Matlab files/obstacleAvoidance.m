x = [254 280 280 305 305 330.2];
z = [127 251/3 150 150 42 0];
x_goal = [254 330.2];
z_goal = [127 0];
x_box = [280 305 305 280 280];
z_box = [150 150 0 0 150];
x_obs_path = [280 280 305 305];
z_obs_path = [251/3 150 150 42];

% plot(x_goal, z_goal ,'--or', 'color','blue');
% hold on
plot(x,z,'-o','LineWidth',2,'color','blue');
hold on
plot(x_box, z_box,'color', 'black');
hold on
% plot(x_obs_path, z_obs_path,'LineWidth',3,'color','black');
% hold on

xlim([230 350])
ylim([-10 200])
xlabel('x-axis (mm)') 
ylabel('z-axis (mm)') 