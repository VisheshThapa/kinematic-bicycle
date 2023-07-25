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

v = 4*ones(F,1);
w = 0.02*zeros(F,1);

for k = 2:F 
    xc(k) = xc(k-1) + T*v(k-1)*cos(theta(k-1)+beta);
    yc(k) = yc(k-1) + T*v(k-1)*sin(theta(k-1)+beta);
    theta(k) = theta(k-1) + T*v(k-1)*cos(beta)*tan(delta(k-1))/L;
    if (650 < k) && (k <750)
        w(k-1) = 0.753;
    elseif (750 < k) && (k < 850)
        w(k-1) = -0.753;
    elseif (2200 < k) && (k < 2300)
        w(k-1) = 0.753;
    elseif (2300 < k) && (k < 2400)
        w(k-1) = -0.753
    elseif (3700 < k) && (k < 3800)
        w(k-1) = 0.753   
    elseif (3800 < k) && (k < 3900)
        w(k-1) = -0.753
    elseif (5200 < k) && (k < 5300)
        w(k-1) = 0.753
    elseif (5300 < k) && (k < 5400)
        w(k-1) = -0.753
    end
end

plot(xc,yc,'o')
