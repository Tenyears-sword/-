function dxdt = ODEFUN(~,x)
dxdt = zeros(2,1);
cel = 10;    %21 22 23  25  27 30
light = 0.1;  %0.8 0.9  1   1.3 1.5 1.8  
sal = 25;
r = rfunc(cel,light,sal);
K = 4e5;
alpha = 0.8;
mu = 0.0017;
beta = 0.3;
theta = 1.356*cel-0.044*cel^2;
f = x(1)./(K/3+x(1));
g = 2e-3*log(x(1)+1);  
dxdt(1) = r*x(1).*(1-x(1)/K)-alpha*f.*x(2);
dxdt(2) = beta*f.*x(2)-(mu+theta*g).*x(2);
end