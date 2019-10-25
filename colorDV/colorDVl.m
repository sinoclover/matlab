clc;clear;
help csvread

dat=csvread('F:\Coding\matlab\data\data_colorl0.8.csv');
disp(dat);
l=dat(:,1);
a=dat(:,2);
b=dat(:,3);
u=dat(:,4);

% figure(1);
% scatter(l,b,3,u)

% œﬂ–‘≤Â÷µ
figure(2);
[X,Y,Z]=griddata(a,b,u,linspace(min(a),max(a),500)',linspace(min(b),max(b),500),'v4');
surf(X,Y,Z)
shading interp;
axis([-1 1 -1 1 -3 5]);
xlabel('A'), ylabel('B'), zlabel('U');
print -djpeg -r300 jpegtest;