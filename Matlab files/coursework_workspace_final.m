%% Links Lengths
%unit in inch
l1 = 5.75;
l2 = 7.4;
l3 = 2.44;
d1 = 2.36;

%convert to mm
l1 = l1*25.4;
l2 = l2*25.4;
l3 = l3*25.4;
d1 = d1*25.4;

%calculate
xwork = [];
ywork = [];
zwork = [];

step = 30;

for i = 1:step:350 % for q1
    for j = 1:step:270 % for q2
        for k = 1:step:320 % for q3
            for l = 1:step:320 % for q4
                x_value = cos(deg2rad(i))*(l2*cos(deg2rad(j+k)) + l1*cos(deg2rad(j)) + l3*sin(deg2rad(j+k+l)));
                y_value = sin(deg2rad(i))*(l2*cos(deg2rad(j+k)) + l1*cos(deg2rad(j)) + l3*sin(deg2rad(j+k+l)));
                z_value = d1 - (l2*sin(deg2rad(j+k))) - (l1*sin(deg2rad(j))) + (l3*cos(deg2rad(j+k+l)));
                xwork(end+1) = x_value;
                ywork(end+1) = y_value;
                zwork(end+1) = z_value;
                
            end
        end
    end
end

%3D-plot
figure (1)
scatter3(xwork,ywork,zwork,5,'.');
xlabel('x-axis (mm)') 
ylabel('y-axis (mm)')
zlabel('z-axis (mm)') 

%XY-plot
figure (2)

scatter(xwork,ywork,5,'.');
xlabel('x-axis (mm)') 
ylabel('y-axis (mm)') 

%XZ-plot
figure (3)
scatter(xwork,zwork,5,'.');
xlabel('x-axis (mm)') 
ylabel('z-axis (mm)') 

%YZ-plot
figure (4)
scatter(ywork,zwork,5,'.');
xlabel('y-axis (mm)') 
ylabel('z-axis (mm)') 