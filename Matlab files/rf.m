
 L1=146.1;
 L2=188.0;
 L3=62.0;
 d1=59.9;
 px=-254;
 pz=127;
 py=0;
 qt=0;
 r=sqrt(px^2+py^2);
 z=pz-d1;
 p0e = [ px py pz ]' ;
disp('Desired position =')
disp(p0e)
disp('Desired total angle =')
disp(qt*180/pi)
if norm(p0e) > L1+L2+L3
    error('desired position is out of the workspace')
end
if L1+L2+L3*cos(qt)< r
    error('desired total angle is not matched with desired position')
end 
if L1+L2+L3*sin(qt)< z
    error('desired total angle is not matched with desired position')
end 
R=sqrt((z-L3*sin(qt))^2+(r-L3*cos(qt))^2);
cp=((L1^2 +L2^2 - R^2)/(2*L1*L2));
sp1=sqrt(1-cp^2) ;
sp2 = - sqrt(1-cp^2);
if atan2(sp1,cp)>0
    q31=pi-atan2(sp1,cp);
end
if atan2(sp1,cp)<0
  q31=-pi-atan2(sp1,cp);
end
if atan2(sp2,cp)>0
     q32=pi-atan2(sp2,cp);
end
if atan2(sp2,cp)<0
     q32=-pi-atan2(sp2,cp);
end
tk1=(L2*sin(q31))/(L1+L2*cos(q31));
tk2=(L2*sin(q32))/(L1+L2*cos(q32));


k1=atan(tk1);
k2=atan(tk2);
q21=atan((z-L3*sin(qt))/(r-L3*cos(qt)))-k1;
q22=atan((z-L3*sin(qt))/(r-L3*cos(qt)))-k2;

q41=qt-q21-q31;
q42=qt-q22-q32;
disp('1 solution:  2 solution:')
disp([q21  q22]*180/pi)
disp([q31  q32]*180/pi)
disp([q41  q42]*180/pi)
x0=0;
y0=0;
x1=cos(q21)*L1;
x2=x1+cos(q31+q21)*L2;
x3=x2+cos(qt)*L3;
y1=sin(q21)*L1;
y2=y1+sin(q31+q21)*L2;
y3=y2+sin(qt)*L3;

x=[x0,x1,x2,x3];
y=[y0,y1,y2,y3];
plot(x,y,'*g')
plot(x,y,'b')