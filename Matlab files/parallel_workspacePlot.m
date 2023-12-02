syms xc yc
syms xc1 xc2 xc3
syms yc1 yc2 yc3
syms xpp1 xpp2 xpp3
syms ypp1 ypp2 ypp3
syms r_plat r_base
syms phi1 phi2 phi3
syms c1 c2 c3
syms d1 d2 d3
syms R1 R2 R3
syms SA L
syms theta1 theta2 theta3
syms a

SA = 170;
L = 130;
r_plat = 130;
r_base = 290;

xwork = [];
ywork = [];


step = 5;
step_a = 1;
for i = -600:step:600 % for xc
    for j = -600:step:600 % for yc
        for k = 0:step:360 % for a
        xc = i;
        yc = j;

        a = deg2rad(k);
        
        xc1 = xc;
        yc1 = yc;

        T12 = [1 0 0 2*r_base*cosd(30); 0 1 0 0 ; 0 0 1 0; 0 0 0 1];
        T13 = [1 0 0 r_base*cosd(30); 0 1 0 1.5*r_base; 0 0 1 0; 0 0 0 1];
        P1 = [xc1;yc1;0;1];
        P2 = inv(T12) * P1;
        P3 = inv(T13) * P1;

        xc2 = P2(1,1);
        yc2 = P2(2,1);

        xc3 = P3(1,1);
        yc3 = P3(2,1);
        
         phi1 = a + (pi/6);
         phi2 = a + (5*pi/6);
         phi3 = a + (3*pi/2);
        
        xpp1 = xc1 - r_plat*cos(phi1);
        xpp2 = xc2 - r_plat*cos(phi2);
        xpp3 = xc3 - r_plat*cos(phi3);
        
        ypp1 = yc1 - r_plat*sin(phi1);
        ypp2 = yc2 - r_plat*sin(phi2);
        ypp3 = yc3 - r_plat*sin(phi3);
        
        R1 = sqrt(xpp1^2 + ypp1^2);
        R2 = sqrt(xpp2^2 + ypp2^2);
        R3 = sqrt(xpp3^2 + ypp3^2);
        
        c1 = atan(ypp1/xpp1);
        c2 = atan(ypp2/xpp2);
        c3 = atan(ypp3/xpp3);
        
        d1 = acos((R1^2 + SA^2 - L^2)/(2*R1*SA));
        d2 = acos((R2^2 + SA^2 - L^2)/(2*R2*SA));
        d3 = acos((R3^2 + SA^2 - L^2)/(2*R3*SA));

        theta1 = c1+d1;
        theta2 = c2+d2;
        theta3 = c3+d3;
         

        if(imag(theta1)==0 & imag(theta2)==0 & imag(theta3)==0)
             xwork(end+1) = i;
             ywork(end+1) = j;
             
        end
        end

    end
end

%Base - coordination
x_base = [0 r_base*3^0.5 (r_base*3^0.5)/2 0];
y_base = [0 0 r_base*1.5 0];


 figure (1)
 scatter(xwork,ywork,5,'.');
 xlabel('x-axis (mm)') ;
 ylabel('y-axis (mm)') ;
 line(x_base,y_base);

