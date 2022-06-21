h = 0.1;
ts = 0:h:500;
opt=odeset('reltol',1e-6,'abstol',1e-9);
x0=[2e5 2e5]; 
[t,x]=ode45(@ODEFUN,ts,x0,opt);
plot(t,x(:,1),'b',t,x(:,2),'r','LineWidth',2)
legend('P','Z');
xlabel('时间');
ylabel('数量');
%text(460,1.4,'Z');
%text(460,0.2,'P');
figure 
plot(x(:,1),x(:,2),'LineWidth',2) 
xlabel('P');
ylabel('Z'); 