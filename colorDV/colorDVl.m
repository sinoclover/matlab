clc;clear;
help csvread

dat=csvread('F:\Coding\matlab\data\b=0.3p.csv');
disp(dat);
l=dat(:,1);
a=dat(:,2);
b=dat(:,3);
u=dat(:,4);

% figure(1);
% scatter(l,b,3,u)

% œﬂ–‘≤Â÷µ
figure(2);
[X,Y,Z]=griddata(l,a,u,linspace(min(l),max(l),500)',linspace(min(a),max(a),500),'v4');
surf(X,Y,Z)   
shading interp;
axis([0 1 -1 1 -2 6]);
xlabel('L'), ylabel('A'), zlabel('U');
print -djpeg -r300 jpegtest;

% figure(2);
% contour(X,Y,Z,'ShowText','on')
% axis([0 1 -1 1]);
% xlabel('L'), ylabel('A')
% print -djpeg -r300 jpegtest