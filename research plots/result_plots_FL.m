%result_plots_FL
figure(1)
hold all
x3 = sum(data_count_FL_rng,1);
y3 = (mean(mean_varianceFL_rng,1) - variance_threshold);
% cumsum_x3 = cumsum(x3);
% plot(cumsum_x3,y3,'k--','LineWidth',1)
xi = linspace(min(x3), max(x3), 150);% Evenly-Spaced Interpolation Vector
yi = interp1(x3, y3, xi, 'spline', 'extrap');
hold on
plot(xi,yi,'-dr','LineWidth',1)
grid on 
grid minor
xlabel('data count','FontSize',24)
ylabel('variance - threshhold','FontSize',24)

figure(2)
hold all
x = sum(data_count_FL_rng,1);
y = mean(mean_outageFL_rng,1);
cumsum_x3 = cumsum(x);
% plot(cumsum_x3,y,'k--','LineWidth',1)
xi = linspace(min(x), max(x), 150);% Evenly-Spaced Interpolation Vector
yi = interp1(x, y, xi, 'spline', 'extrap');
hold on
plot(xi,yi,'-dr','LineWidth',1)
grid on 
grid minor
xlabel('data count','FontSize',24)
ylabel('outage/losses','FontSize',24)

figure(7)
hold all
x = sum(data_count_FL_rng,1);
y = mean(mean_avg_replacement_costFL_rng,1);
cumsum_x3 = cumsum(x);
% plot(cumsum_x3,y,'k--','LineWidth',1)
xi = linspace(min(x), max(x), 150);                     % Evenly-Spaced Interpolation Vector
yi = interp1(x, y, xi, 'spline', 'extrap');
hold on
plot(xi,yi,'-dr','LineWidth',1)
grid on 
grid minor
xlabel('data count','FontSize',24)
ylabel('sensor cost','FontSize',24)

figure(4)
hold all
x3 = sum(data_count_FL_rng,1);
y3 = mean(mean_avg_comm_costFL_rng,1);
cumsum_x3 = cumsum(x3);
% plot(cumsum_x3,y3,'k--','LineWidth',1)
xi = linspace(min(x3), max(x3), 150);% Evenly-Spaced Interpolation Vector
yi = interp1(x3, y3, xi, 'spline', 'extrap');
hold on
plot(xi,yi,'-dr','LineWidth',1)
xlabel('data count','FontSize',24)
ylabel('comm_cost','FontSize',24)
grid on
grid minor


% figure(6)
% hold all
% y3 = mean(mean_outageFL_rng,1);%ccdf for 30 robots % [f,x3]= ecdf(y3);
% % myccdf = 1-f;
% % plot(x3,myccdf,'k--','LineWidth',1)
% % xi = linspace(min(x3), max(x3), 150);                     % Evenly-Spaced Interpolation Vector
% % yi = interp1(x3, y3, xi, 'spline', 'extrap');
% % hold on
% % plot(xi,yi,'-dr','LineWidth',1)
% x3 = linspace(min(y3),max(y3),200);
% y3 = 1-evcdf(x3,0,1);
% xi = x3;
% yi = interp1(x3, y3, xi, 'spline', 'extrap');
% hold on
% plot(xi,yi,'-dr','LineWidth',1)
% xlabel('losses')
% ylabel('ccdf')
% grid on;
% grid minor;
% 
% figure(7)
% hold all
% % plot(1:target_robots,mean_outage,'kd-.','LineWidth',2);
% y3 = mean(mean_avg_replacement_costFL_rng,1);%ccdf for 30 robots 
% [f,x3]= ecdf(y3);
% myccdf = 1-f;
% myccdf = (myccdf);
% plot(x3,myccdf,'k--','LineWidth',1)
% xi = linspace(min(x3), max(x3), 150);                     % Evenly-Spaced Interpolation Vector
% yi = interp1(x3, y3, xi, 'spline', 'extrap');
% hold on
% plot(xi,yi,'-dr','LineWidth',1)
% hold on 
% xlabel('sensor cost')
% ylabel('CCDF')
% grid on;
% grid minor;
% 
% figure(8)
% hold all
% % plot(1:target_robots,mean_outage,'kd-.','LineWidth',2);
% y3 = mean(mean_avg_comm_costFL_rng,1);%ccdf for 30 robots 
% [f,x3]= ecdf(y3);
% myccdf = 1-f;
% myccdf = (myccdf);
% plot(x3,myccdf,'k--','LineWidth',1)
% xi = linspace(min(x3), max(x3), 150);                     % Evenly-Spaced Interpolation Vector
% yi = interp1(x3, y3, xi, 'spline', 'extrap');
% hold on
% plot(xi,yi,'-dr','LineWidth',1)
% hold on 
% xlabel('comm cost')
% ylabel('CCDF')
% grid on;
% grid minor;
% % 
% figure(9)
% hold all
% % plot(1:target_robots,mean_outage,'kd-.','LineWidth',2);
% y3 = mean(mean_optimal_costFL_rng,1);%ccdf for 30 robots 
% [f,x3] = ecdf(y3);
% myccdf = 1-f;
% myccdf = (myccdf);
% plot(x3,myccdf,'k--','LineWidth',1)
% xi = linspace(min(x3), max(x3), 150);                     % Evenly-Spaced Interpolation Vector
% yi = interp1(x3, y3, xi, 'spline', 'extrap');
% hold on
% plot(xi,yi,'-dr','LineWidth',1)
% hold on 
% xlabel('optimal cost')
% ylabel('CCDF')
% grid on;
% grid minor;

figure(5)
hold on
x3 = 1:target_robots;
y3 = mean(mean_outageFL_rng,1);
plot(1:target_robots ,mean(mean_outageFL_rng,1),'k--','LineWidth',1)
xi = linspace(min(x3), max(x3), 150);                     % Evenly-Spaced Interpolation Vector
yi = interp1(x3, y3, xi, 'spline', 'extrap');
hold on
plot(xi,yi,'-dr','LineWidth',1)
xlabel('robot count')
ylabel('losses')
grid on;
grid minor;

figure(6)
hold on
x3 = 1:target_robots;
y3 = (mean(mean_varianceFL_rng,1) - variance_threshold);
plot(1:target_robots ,(mean(mean_varianceFL_rng,1) - variance_threshold),'k-','LineWidth',1)
xi = linspace(min(x3), max(x3), 150);                     % Evenly-Spaced Interpolation Vector
yi = interp1(x3, y3, xi, 'spline', 'extrap');
hold on
plot(xi,yi,'-dr','LineWidth',1)
grid on;
grid minor;
xlabel('robot count')
ylabel('error') 



% % 
% %result_plots_FL
% figure(1)
% hold all
% x3 = sum(data_count_FL_rng,1);
% y3 = abs(mean(mean_varianceFL_rng,1) - variance_threshold);
% cumsum_x3 = cumsum(x3);
% plot(cumsum_x3,y3,'--','color',[0.6 .2 .9],'LineWidth',1)
% p = polyfit(cumsum_x3,y3,6);
% f = polyval(p,cumsum_x3);
% hold on
% plot(cumsum_x3,f,'o-','color',[0.6 .2 .9],'LineWidth',1)
% xlabel('data count')
% ylabel('error')
% grid on
% grid minor
% 
% figure(2)
% hold all
% x3 = sum(data_count_FL_rng,1);
% y3 = mean(mean_outageFL_rng,1);
% cumsum_x3 = cumsum(x3);
% plot(cumsum_x3,y3,'--','color',[0.6 .2 .9],'LineWidth',1)
% p = polyfit(cumsum_x3,y3,6);
% f = polyval(p,cumsum_x3);
% hold on
% plot(cumsum_x3,f,'o-','color',[0.6 .2 .9],'LineWidth',1)
% xlabel('data count')
% ylabel('losses')
% grid on
% grid minor
% 
% figure(3)
% hold all
% x3 = sum(data_count_FL_rng,1);
% y3 = mean(mean_avg_replacement_costFL_rng,1);
% cumsum_x3 = cumsum(x3);
% plot(cumsum_x3,y3,'--','color',[0.6 .2 .9],'LineWidth',1)
% p = polyfit(cumsum_x3,y3,6);
% f = polyval(p,cumsum_x3);
% hold on
% plot(cumsum_x3,f,'o-','color',[0.6 .2 .9],'LineWidth',1)
% xlabel('data count')
% ylabel('sensor_cost')
% grid on
% grid minor
% 
% figure(4)
% hold all
% x3 = sum(data_count_FL_rng,1);
% y3 = mean(mean_avg_comm_costFL_rng,1);
% cumsum_x3 = cumsum(x3);
% plot(cumsum_x3,y3,'--','color',[0.6 .2 .9],'LineWidth',1)
% p = polyfit(cumsum_x3,y3,6);
% f = polyval(p,cumsum_x3);
% hold on
% plot(cumsum_x3,f,'0-','color',[0.6 .2 .9],'LineWidth',1)
% xlabel('data count')
% ylabel('comm_cost')
% grid on
% grid minor

figure(5)
hold all
y4 = mean(mean_varianceFL_rng,1);%ccdf for 30 robots 
[f,x4]= ecdf(y4);
myccdf = 1-f;
plot(x4,(myccdf),'--','color',[0.6 .2 .9])
hold on
p = polyfit(x4,(myccdf),6);
f4 = polyval(p,x4);
plot(x4,f4,'o-','color',[0.6 .2 .9],'LineWidth',1)
xlabel('variance')
ylabel('ccdf')
grid on;
grid minor;
% 
figure(6)
hold all
y3 = mean(mean_outageFL_rng,1);%ccdf for 30 robots 
[f,x3]= ecdf(y3);
myccdf = 1-f;
plot(x3,myccdf,'--','color',[0.6 .2 .9],'LineWidth',1)
p = polyfit(x3, myccdf ,5);
f = polyval(p,x3);
hold on
plot(x3,f,'o-','color',[0.6 .2 .9],'LineWidth',1)
xlabel('losses')
ylabel('ccdf')
grid on;
grid minor;


figure(7)
hold all
% plot(1:target_robots,mean_outage,'kd-.','LineWidth',2);
y3 = mean(mean_avg_replacement_costFL_rng,1);%ccdf for 30 robots 
[f,x3]=ecdf(y3);
myccdf = 1-f;
plot(x3,myccdf,'--','color',[0.6 .2 .9],'LineWidth',1)
p = polyfit(x3,myccdf,6);
f = polyval(p,x3);
hold on
plot(x3,f,'o-','color',[0.6 .2 .9],'LineWidth',1)
hold on 
xlabel('sensor cost')
ylabel('CCDF')
grid on;
grid minor;

figure(8)
hold all
% plot(1:target_robots,mean_outage,'kd-.','LineWidth',2);
y3 = mean(mean_avg_comm_costFL_rng,1);%ccdf for 30 robots 
[f,x3]=ecdf(y3);
myccdf = 1-f;
plot(x3,myccdf,'--','color',[0.6 .2 .9],'LineWidth',1)
p = polyfit(x3,myccdf,6);
f = polyval(p,x3);
hold on
plot(x3,f,'o-','color',[0.6 .2 .9],'LineWidth',1)
hold on 
xlabel('comm cost')
ylabel('CCDF')
grid on;
grid minor;

figure(9)
hold all
% plot(1:target_robots,mean_outage,'kd-.','LineWidth',2);
y3 = mean(mean_optimal_costFL_rng,1);%ccdf for 30 robots 
[f,x3]=ecdf(y3);
myccdf = 1-f;
plot(x3,myccdf,'--','color',[0.6 .2 .9],'LineWidth',1)
p = polyfit(x3,myccdf,6);
f = polyval(p,x3);
hold on
plot(x3,f,'o-','color',[0.6 .2 .9],'LineWidth',1)
hold on 
xlabel('optimal cost')
ylabel('CCDF')
grid on;
grid minor;

% 
% figure(10)
% hold on
% x3 = 1:target_robots;
% y3 = mean(mean_outageFL_rng,1);
% plot(1:target_robots ,mean(mean_outageFL_rng,1),'--','color',[0.6 .2 .9],'LineWidth',1)
% p = polyfit(x3,y3,6);
% f = polyval(p,x3);
% hold on
% plot(x3,f,'o-','color',[0.6 .2 .9],'LineWidth',1)
% xlabel('robot count')
% ylabel('losses')
% grid on;
% grid minor;
% 
% figure(11)
% hold on
% plot(1:target_robots ,(mean(mean_varianceFL_rng,1) - variance_threshold),'-','color',[0.6 .2 .9],'LineWidth',1)
% grid on;
% grid minor;
% xlabel('robot count')
% ylabel('error')