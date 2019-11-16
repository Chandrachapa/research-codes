
figure(5)
hold all
y4 = mean(mean_variance_ex,1);%ccdf for 30 robots 
[f,x4]= ecdf(y4);
myccdf = 1-f;
plot(x4,myccdf,'m--')
hold on
p = polyfit(x4,myccdf,6);
f4 = polyval(p,x4);
plot(x4,f4,'m-','LineWidth',1)
xlabel('variance')
ylabel('ccdf')
grid on;
grid minor;

figure(6)
hold all
y3 = mean(mean_outage_ex,1);%ccdf for 30 robots 
[f,x3]= ecdf(y3);
myccdf = 1-f;
plot(x3,myccdf,'m--','LineWidth',1)
p = polyfit(x3, myccdf ,6);
f = polyval(p,x3);
hold on
plot(x3,f,'m-','LineWidth',1)
xlabel('losses')
ylabel('ccdf')
grid on;
grid minor;

% figure(7)
% hold all
% % plot(1:target_robots,mean_outage,'kd-.','LineWidth',2);
% y3 = mean(mean_avg_replacement_costp_rng,1);%ccdf for 30 robots 
% [f,x3]=ecdf(y3);
% myccdf = 1-f;
% plot(x3,myccdf,'m--','LineWidth',1)
% p = polyfit(x3,myccdf,6);
% f = polyval(p,x3);
% hold on
% plot(x3,f,'m-','LineWidth',1)
% hold on 
% xlabel('sensor cost')
% ylabel('CCDF')
% grid on;
% grid minor;

% figure(8)
% hold all
% % plot(1:target_robots,mean_outage,'kd-.','LineWidth',2);
% y3 = mean(mean_avg_comm_costp_rng,1);%ccdf for 30 robots 
% [f,x3]=ecdf(y3);
% myccdf = 1-f;
% plot(x3,myccdf,'m--','LineWidth',1)
% p = polyfit(x3,myccdf,6);
% f = polyval(p,x3);
% hold on
% plot(x3,f,'m-','LineWidth',1)
% hold on 
% xlabel('comm cost')
% ylabel('CCDF')
% grid on;

figure(9)
hold all
% plot(1:target_robots,mean_outage,'kd-.','LineWidth',2);
y3 = mean(mean_optimal_cost_ex ,1);%ccdf for 30 robots 
[f,x3]=ecdf(y3);
myccdf = 1-f;
plot(x3,myccdf,'m--','LineWidth',1)
p = polyfit(x3,myccdf,6);
f = polyval(p,x3);
hold on
plot(x3,f,'m-','LineWidth',1)
hold on 
xlabel('optimal cost')
ylabel('CCDF')
grid on;
grid minor;

figure(10)
hold on
x3 = 1:target_robots;
y3 = mean(mean_outage_ex,1);
plot(1:target_robots ,mean(mean_outage_ex,1),'k--','LineWidth',1)
xi = linspace(min(x3), max(x3), 150);                     % Evenly-Spaced Interpolation Vector
yi = interp1(x3, y3, xi, 'spline', 'extrap');
hold on
plot(xi,yi,'-dr','LineWidth',1)
xlabel('robot count')
ylabel('losses')
grid on;
grid minor;

figure(11)
hold on
x3 = 1:target_robots;
y3 = (mean(mean_variance_ex,1) - variance_threshold);
plot(1:target_robots ,(mean(mean_variance_ex,1) - variance_threshold),'k-','LineWidth',1)
xi = linspace(min(x3), max(x3), 150);                     % Evenly-Spaced Interpolation Vector
yi = interp1(x3, y3, xi, 'spline', 'extrap');
hold on
plot(xi,yi,'-dr','LineWidth',1)
grid on;
grid minor;
xlabel('robot count')
ylabel('error') 

