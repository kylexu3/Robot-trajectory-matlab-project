clear all
clc

L1=146.1;
L2=188.0;
L3=62.0;
d1=59.9;
x00=0;
y00=0;
x0=0;
y0=59.9;
a1=0; a2=-42.48/180*pi; a3=102/180*pi; a4=-70.78/180*pi; at=a2+a3+a4;
x1=cos(a2)*L1;
x2=x1+cos(a2+a3)*L2;
x3=x2+cos(at)*L3;
y1=sin(a2)*L1;
y2=y1+sin(a2+a3)*L2;
y3=y2+sin(at)*L3;
x=[x00,x0,x1,x2,x3];
y=[y00,y0,y1,y2,y3];
plot(x,y,'og','MarkerFaceColor','g')
hold on
plot(x,y,'g')
hold on

a10=0; a20=-43.32/180*pi; a30=106.2/180*pi; a40=-62.88/180*pi; at0=a20+a30+a40;
x10=cos(a20)*L1;
x20=x10+cos(a20+a30)*L2;
x30=x20+cos(at0)*L3;
y10=sin(a20)*L1;
y20=y10+sin(a20+a30)*L2;
y30=y20+sin(at0)*L3;
x=[x00,x0,x10,x20,x30];
y=[y00,y0,y10,y20,y30];
plot(x,y,'om','MarkerFaceColor','m')
hold on
plot(x,y,'m')
hold on

a11=0; a21=-41.32/180*pi; a31=97.09/180*pi; a41=-78.31/180*pi; at1=a21+a31+a41;
x11=cos(a21)*L1;
x21=x11+cos(a21+a31)*L2;
x31=x21+cos(at1)*L3;
y11=sin(a21)*L1;
y21=y11+sin(a21+a31)*L2;
y31=y21+sin(at1)*L3;
x=[x00,x0,x11,x21,x31];
y=[y00,y0,y11,y21,y31];
plot(x,y,'ob','MarkerFaceColor','b')
hold on
plot(x,y,'b')
hold on

a12=0; a22=-39.32/180*pi; a32=90.46/180*pi; a42=-84.94/180*pi; at2=a22+a32+a42;
x12=cos(a22)*L1;
x22=x12+cos(a22+a32)*L2;
x32=x22+cos(at2)*L3;
y12=sin(a22)*L1;
y22=y12+sin(a22+a32)*L2;
y32=y22+sin(at2)*L3;
x=[x00,x0,x12,x22,x32];
y=[y00,y0,y12,y22,y32];
plot(x,y,'oc','MarkerFaceColor','c')
hold on
plot(x,y,'c')
hold on

a13=0; a23=-36.58/180*pi; a33=82.22/180*pi; a43=-90.7/180*pi; at3=a23+a33+a43;
x13=cos(a23)*L1;
x23=x13+cos(a23+a33)*L2;
x33=x23+cos(at3)*L3;
y13=sin(a23)*L1;
y23=y13+sin(a23+a33)*L2;
y33=y23+sin(at3)*L3;
x=[x00,x0,x13,x23,x33];
y=[y00,y0,y13,y23,y33];
plot(x,y,'om','MarkerFaceColor','m')
hold on
plot(x,y,'m')
hold on

a14=0; a24=-33.29/180*pi; a34=72.67/180*pi; a44=-95.71/180*pi; at4=a24+a34+a44;
x14=cos(a24)*L1;
x24=x14+cos(a24+a34)*L2;
x34=x24+cos(at4)*L3;
y14=sin(a24)*L1;
y24=y14+sin(a24+a34)*L2;
y34=y24+sin(at4)*L3;
x=[x00,x0,x14,x24,x34];
y=[y00,y0,y14,y24,y34];
plot(x,y,'oy','MarkerFaceColor','y')
hold on
plot(x,y,'y')
hold on

a15=0; a25=-29.06/180*pi; a35=61.08/180*pi; a45=-99.67/180*pi; at5=a25+a35+a45;
x15=cos(a25)*L1;
x25=x15+cos(a25+a35)*L2;
x35=x25+cos(at5)*L3;
y15=sin(a25)*L1;
y25=y15+sin(a25+a35)*L2;
y35=y25+sin(at5)*L3;
x=[x00,x0,x15,x25,x35];
y=[y00,y0,y15,y25,y35];
plot(x,y,'og','MarkerFaceColor','g')
hold on
plot(x,y,'g')
hold on

a15=0; a25=-29.06/180*pi; a35=61.08/180*pi; a45=-99.67/180*pi; at5=a25+a35+a45;
x15=cos(a25)*L1;
x25=x15+cos(a25+a35)*L2;
x35=x25+cos(at5)*L3;
y15=sin(a25)*L1;
y25=y15+sin(a25+a35)*L2;
y35=y25+sin(at5)*L3;
x=[x00,x0,x15,x25,x35];
y=[y00,y0,y15,y25,y35];
plot(x,y,'ok','MarkerFaceColor','k')
hold on
plot(x,y,'k')
hold on

a16=0; a26=-22.34/180*pi; a36=44.69/180*pi; a46=-101.4/180*pi; at6=a26+a36+a46;
x16=cos(a26)*L1;
x26=x16+cos(a26+a36)*L2;
x36=x26+cos(at6)*L3;
y16=sin(a26)*L1;
y26=y16+sin(a26+a36)*L2;
y36=y26+sin(at6)*L3;
x=[x00,x0,x16,x26,x36];
y=[y00,y0,y16,y26,y36];
plot(x,y,'or','MarkerFaceColor','r')
hold on
plot(x,y,'r')
hold on

a17=0; a27=-9.58/180*pi; a37=17.65/180*pi; a47=-98.07/180*pi; at7=a27+a37+a47;
x17=cos(a27)*L1;
x27=x17+cos(a27+a37)*L2;
x37=x27+cos(at7)*L3;
y17=sin(a27)*L1;
y27=y17+sin(a27+a37)*L2;
y37=y27+sin(at7)*L3;
x=[x00,x0,x17,x27,x37];
y=[y00,y0,y17,y27,y37];
plot(x,y,'om','MarkerFaceColor','m')
hold on
plot(x,y,'m')
hold on
title('Robot Positions')
xlabel('x(mm)');ylabel('z(mm)')