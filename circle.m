clear
clc
close all

final_time = 60;
T = 0.01
F = length(0:T:final_time)

xc = zeros(F,1);
yc = zeros(F,1);
theta = zeros(F,1);
delta = 0.1974*ones(F,1);
beta = 0;
L = 2;
lr = 1.2;
wmax = 1.22;

v = pi()*ones(F,1);
w = zeros(F,1);

for k = 2:F 
    xc(k) = xc(k-1) + T*v(k-1)*cos(theta(k-1)+beta);
    yc(k) = yc(k-1) + T*v(k-1)*sin(theta(k-1)+beta);
    theta(k) = theta(k-1) + T*v(k-1)*cos(beta)*tan(delta(k-1))/L;
end

plot(xc,yc,'o')
