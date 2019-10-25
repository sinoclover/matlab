clc;clear;
help csvread

dat=csvread('F:\Coding\matlab\data\data_colora0.35.csv');
disp(dat);
l=dat(:,1);
a=dat(:,2);
b=dat(:,3);
u=dat(:,4);

% figure(1);
% scatter(l,b,3,u)

% 线性插值
figure(2);
[X,Y,Z]=griddata(l,b,u,linspace(min(l),max(l),500)',linspace(min(b),max(b),500),'v4');
% surf(X,Y,Z)
% shading interp;
% axis([0 1 -1 1 -3 5]);
% xlabel('L'), ylabel('B'), zlabel('U');
% print -djpeg -r300 jpegtest

figure(2);
contour(X,Y,Z,'ShowText','on')
axis([0 1 -1 1]);
xlabel('L'), ylabel('B')
print -djpeg -r300 jpegtest

% % 样条插值
% x=[-0.6:0.1:0.4];
% y=[0.1:0.05:0.9];
% u=reshape(u,17,11);
% 
% xl=-0.6:0.001:0.4;
% yb=0.1:0.0005:0.9;
% [X,Y] = meshgrid(xl, yb);
% 
% data = interp2(x,y,u,X,Y,'spine');
% surf(xl,yb,data)
% shading interp;
% axis([-1 1 0 1 -3 5]);
% xlabel('L'), ylabel('B'), zlabel('U');