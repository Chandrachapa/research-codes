figure(5)
hold all
y4 = mean(mean_variancep_rng,1);%ccdf for 30 robots 
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
y3 = mean(mean_outagep_rng,1);%ccdf for 30 robots 
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

figure(7)
hold all
% plot(1:target_robots,mean_outage,'kd-.','LineWidth',2);
y3 = mean(mean_avg_replacement_costp_rng,1);%ccdf for 30 robots 
[f,x3]=ecdf(y3);
myccdf = 1-f;
plot(x3,myccdf,'m--','LineWidth',1)
p = polyfit(x3,myccdf,6);
f = polyval(p,x3);
hold on
plot(x3,f,'m-','LineWidth',1)
hold on 
xlabel('sensor cost')
ylabel('CCDF')
grid on;
grid minor;

figure(8)
hold all
% plot(1:target_robots,mean_outage,'kd-.','LineWidth',2);
y3 = mean(mean_avg_comm_costp_rng,1);%ccdf for 30 robots 
[f,x3]=ecdf(y3);
myccdf = 1-f;
plot(x3,myccdf,'m--','LineWidth',1)
p = polyfit(x3,myccdf,6);
f = polyval(p,x3);
hold on
plot(x3,f,'m-','LineWidth',1)
hold on 
xlabel('comm cost')
ylabel('CCDF')
grid on;

figure(9)
hold all
% plot(1:target_robots,mean_outage,'kd-.','LineWidth',2);
y3 = mean(mean_optimal_costp_rng,1);%ccdf for 30 robots 
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
y3 = mean(mean_outagep_rng,1);
plot(1:target_robots ,mean(mean_outagep_rng,1),'k--','LineWidth',1)
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
y3 = (mean(mean_variancep_rng,1) - variance_threshold);
plot(1:target_robots ,(mean(mean_variancep_rng,1) - variance_threshold),'k-','LineWidth',1)
xi = linspace(min(x3), max(x3), 150);                     % Evenly-Spaced Interpolation Vector
yi = interp1(x3, y3, xi, 'spline', 'extrap');
hold on
plot(xi,yi,'-dr','LineWidth',1)
grid on;
grid minor;
xlabel('robot count')
ylabel('error') 



% % %result_plots_p
% % 
% %result_plots_CL
% % figure(1)
% % hold all
% % plot(mean(data_count_p_rng,1),mean(mean_outagep_rng,1),'rd-','LineWidth',1)
% % xlabel('data count')
% % ylabel('outage')
% % grid on
% % grid minor
% % 
% % figure(2)
% % hold all
% % plot(mean(data_count_p_rng,1),mean(mean_optimal_costp_rng,1),'rd-','LineWidth',1)
% % xlabel('data count')
% % ylabel('mean_optimal_cost')
% % grid on
% % grid minor
% % 
% % figure(3)
% % hold all
% % plot(mean(data_count_p_rng,1),mean(mean_avg_replacement_costp_rng,1),'rd-','LineWidth',1)
% % hold on
% % plot(mean(data_count_p_rng,1),mean(mean_avg_comm_costp_rng,1),'rd-','LineWidth',1)
% % xlabel('data count')
% % ylabel('avg_cost')
% % grid on
% % grid minor
% % 
% % % figure(4)
% % % hold all
% % % plot(mean(data_count_p_rng,1),mean(mean_LL_p_rng,1),'md-','LineWidth',1)
% % % xlabel('data count')
% % % ylabel('LL')
% % % grid on
% % % grid minor
% 
% figure(5)
% hold all
% y3 = (mean(mean_variancep_rng,1));%ccdf for 30 robots 
% [f,x3]= ecdf(y3);
% myccdf = 1-f;
% plot(x3,myccdf,'gd--','LineWidth',1)
% p = polyfit(x3,myccdf,6);
% f = polyval(p,x3);
% hold on
% plot(x3,f,'go-')
% % axis([0  5  0  2])
% xlabel('CCDF')
% ylabel('measurement variance')
% grid on
% grid minor
% 
% figure(6)
% hold all
% hold all
% mean_avg_comm_costp_rng = mean(mean_avg_comm_costp_rng,1);
% [mean_avg_replacement_costp_rng,sortIdx]=sort(mean(mean_avg_replacement_costp_rng,1),'descend');
% mean_avg_comm_costp_rng = mean_avg_comm_costp_rng(sortIdx);
% plot(mean_avg_replacement_costp_rng,mean_avg_comm_costp_rng,'gs-','LineWidth',1)
% x3 = mean_avg_replacement_costp_rng;
% y3 = mean_avg_comm_costp_rng;
% plot(mean_avg_replacement_costp_rng,mean_avg_comm_costp_rng,'gd-','LineWidth',1)
% p = polyfit(x3,y3,6);
% f = polyval(p,x3);
% hold on
% plot(x3,f,'go-')
% xlabel('avg replacement cost')
% ylabel('avg comm cost')
% grid on
% grid minor
% 
% figure(7)
% hold all
% % plot(1:target_robots,mean_outage,'kd-.','LineWidth',2);
% y3 = mean(mean_outagep_rng,1);%ccdf for 30 robots 
% [f,x3]=ecdf(y3);
% myccdf = 1-f;
% plot(x3,myccdf,'gd-.','LineWidth',1)
% p = polyfit(x3,myccdf,6);
% f = polyval(p,x3);
% hold on
% plot(x3,f,'go-')
% % axis([0  1  0  1])
% xlabel('outage')
% ylabel('CCDF')
% grid on
% grid minor
% 
% figure(8)
% hold all
% y3 = abs(mean(mean_variancep_rng,1) - variance_threshold);%ccdf for 30 robots 
% [f,x3]=ecdf(y3);
% myccdf = 1-f;
% plot(x3,myccdf,'gd-','LineWidth',1)
% p = polyfit(x3,myccdf,6);
% f = polyval(p,x3);
% hold on
% plot(x3,f,'go-')
% % axis([0  5  0  2])
% xlabel('CCDF')
% ylabel('error')
% grid on
% grid minor
% 
% 
% figure(9)
% hold all
% % plot(1:target_robots,mean_optimal_cost,'kd-.','LineWidth',2);
% y3 = mean(mean_optimal_costp_rng,1);%ccdf for 30 robots 
% [f,x3]=ecdf(y3);
% myccdf = 1-f;
% plot(x3,myccdf,'gd-.','LineWidth',1)
% p = polyfit(x3,myccdf,6);
% f = polyval(p,x3);
% hold on
% plot(x3,f,'go-')
% xlabel('optimal cost')
% ylabel('CCDF')
% grid on
% grid minor
% 
% figure(10)
% hold all
% % plot(1:target_robots,mean_avg_replacement_cost_p,'r*-.','LineWidth',2);
% y3 = mean(mean_avg_replacement_costp_rng,1);%ccdf for 30 robots 
% [f,x3]=ecdf(y3);
% myccdf = 1-f;
% plot(x3,myccdf,'gd-.','LineWidth',1)
% p = polyfit(x3,myccdf,6);
% f = polyval(p,x3);
% hold on
% plot(x3,f,'go-')
% hold on 
% y3 = mean(mean_optimal_costp_rng,1);%ccdf for 30 robots 
% [f,x3]=ecdf(y3);
% myccdf = 1-f;
% plot(x3,myccdf,'gd--','LineWidth',1)
% p = polyfit(x3,myccdf,6);
% f = polyval(p,x3);
% hold on
% plot(x3,f,'go-')
% % axis([0  5  0  2])
% xlabel('avg cost')
% ylabel('CCDF')
% grid on
% grid minor
% 
% figure(11)
% hold all
% % plot(1:target_robots,mean_optimal_cost,'kd-.','LineWidth',2);
% y3 =mean(mean_variancep_rng,1);%ccdf for 30 robots 
% x3 = mean(mean_avg_comm_costp_rng,1)
% plot(x3,y3,'gd-.','LineWidth',1)
% p = polyfit(x3,y3,6);
% f = polyval(p,x3);
% hold on
% plot(x3,f,'go-')
% xlabel('optimal cost')
% ylabel('variance')
% grid on
% grid minor
% 
% % plot(1:target_robots,mean_avg_comm_cost_p,'r*-.','LineWidth',2);
% % hold all
% % plot(1:target_robots,mean_avg_replacement_cost,'kd-.','LineWidth',2);
% % hold on 
% % plot(1:target_robots,mean_avg_comm_cost,'kd-.','LineWidth',2);
% 
% % figure(11)
% % hold all
% % plot(1:target_robots,abs(mean(mean_LL_p_rng,1)),'md-.','LineWidth',1)
% % xlabel('no robots')
% % ylabel('LL')
% % grid on
% % grid minor
% 
% % 
% % %result_plots_p
% % figure(1)
% % hold all
% % plot(data_count,mean_outage,'gd-','LineWidth',2)
% % xlabel('data count')
% % ylabel('outage')
% % 
% % figure(2)
% % hold all
% % plot(data_count,mean_optimal_cost,'gd-','LineWidth',2)
% % xlabel('data count')
% % ylabel('mean_optimal_cost')
% % 
% % figure(3)
% % hold all
% % plot(data_count,mean_avg_replacement_cost,'g+:','LineWidth',2)
% % hold on
% % plot(data_count,mean_avg_comm_cost,'g+:','LineWidth',2)
% % xlabel('data count')
% % ylabel('avg_cost')
% % 
% % figure(4)
% % hold all
% % plot(data_count,abs(mean_LL_p),'g+:','LineWidth',2)
% % xlabel('data count')
% % 
% % figure(5)
% % hold all
% % y3 = mean_variance;%ccdf for 30 robots 
% % [f,x3]=ecdf(y3);
% % myccdf = 1-f;
% % plot(x3,myccdf,'gd-','LineWidth',2)
% % xlabel('CCDF')
% % ylabel('measurement variance')
% % 
% % figure(6)
% % hold all
% % [mean_avg_replacement_cost,sortIdx]=sort(mean_avg_replacement_cost,'descend');
% % mean_avg_comm_cost = mean_avg_comm_cost(sortIdx);
% % plot(mean_avg_replacement_cost,mean_avg_comm_cost,'gd-','LineWidth',2)
% % xlabel('avg replacement cost')
% % ylabel('avg comm cost')
% % 
% % figure(7)
% % hold all
% % % plot(1:target_robots,mean_outage,'kd-.','LineWidth',2);
% % y3 = mean_outage;%ccdf for 30 robots 
% % [f,x3]=ecdf(y3);
% % myccdf = 1-f;
% % plot(x3,myccdf,'gd-.','LineWidth',2)
% % xlabel('outage')
% % ylabel('CCDF')
% % 
% % figure(8)
% % hold all
% % plot(1:target_robots,mean_variance,'gd-.','LineWidth',2);
% % xlabel('no robots')
% % ylabel('variance')
% % 
% % 
% % figure(9)
% % hold all
% % % plot(1:target_robots,mean_optimal_cost,'kd-.','LineWidth',2);
% % y3 = mean_optimal_cost;%ccdf for 30 robots 
% % [f,x3]=ecdf(y3);
% % myccdf = 1-f;
% % plot(x3,myccdf,'gd-.','LineWidth',2)
% % xlabel('optimal cost')
% % ylabel('CCDF')
% % 
% % 
% % figure(10)
% % hold all
% % % plot(1:target_robots,mean_avg_replacement_cost_p,'r*-.','LineWidth',2);
% % y3 = mean_avg_replacement_cost;%ccdf for 30 robots 
% % [f,x3]=ecdf(y3);
% % myccdf = 1-f;
% % plot(x3,myccdf,'gd-.','LineWidth',2)
% % hold on 
% % y3 = mean_avg_comm_cost;%ccdf for 30 robots 
% % [f,x3]=ecdf(y3);
% % myccdf = 1-f;
% % plot(x3,myccdf,'go--','LineWidth',2)
% % xlabel('avg cost')
% % ylabel('CCDF')
% % 
% % figure(11)
% % hold all
% % plot(1:target_robots,abs(mean_LL_p),'gd-.','LineWidth',2)
% % xlabel('no robots')
% % ylabel('LL')
% % 
% 
% 
% % figure(5)
% % hold all
% % y3 = mean_variance_p;%ccdf for 30 robots 
% % [f,x3]=ecdf(y3);
% % myccdf = 1-f;
% % plot(x3,myccdf,'r*-.','LineWidth',2)
% % hold on
% % line([0.125 0.125], [0 1]);
% % 
% % figure(6)
% % hold all
% % [mean_avg_replacement_cost_p,sortIdx]=sort(mean_avg_replacement_cost_p,'descend');
% % mean_avg_comm_cost_p =mean_avg_comm_cost_p(sortIdx);
% % plot(mean_avg_replacement_cost_p,mean_avg_comm_cost_p ,'r*-.','LineWidth',2);
% % 
% % figure(7)
% % hold all
% % y3 = mean_outage_p;%ccdf for 30 robots 
% % [f,x3]=ecdf(y3);
% % myccdf = 1-f;
% % plot(x3,myccdf,'r*-.','LineWidth',2)
% % 
% % figure(8)
% % hold all
% % plot(1:target_robots,mean_variance_p,'r*-.','LineWidth',2);
% % 
% % figure(9)
% % hold all
% % y3 = mean_optimal_cost_p;%ccdf for 30 robots 
% % [f,x3]=ecdf(y3);
% % myccdf = 1-f;
% % plot(x3,myccdf,'r*-.','LineWidth',2)
% % 
% % figure(10)
% % hold all
% % y3 = mean_avg_replacement_cost_p;%ccdf for 30 robots 
% % [f,x3]=ecdf(y3);
% % myccdf = 1-f;
% % plot(x3,myccdf,'rd-.','LineWidth',2)
% % hold on 
% % y3 = mean_avg_comm_cost_p;%ccdf for 30 robots 
% % [f,x3]=ecdf(y3);
% % myccdf = 1-f;
% % plot(x3,myccdf,'ro--','LineWidth',2)
% % 
% % 
figure(5)
hold all
y4 = mean(mean_variancep_rng,1);%ccdf for 30 robots 
[f,x4]= ecdf(y4);
myccdf = 1-f;
plot(x4,myccdf,'r--')
hold on
p = polyfit(x4,myccdf,6);
f4 = polyval(p,x4);
plot(x4,f4,'k-','LineWidth',1)
xlabel('variance')
ylabel('ccdf')
grid on;
grid minor;

figure(6)
hold all
y3 = mean(mean_outagep_rng,1);%ccdf for 30 robots 
[f,x3]= ecdf(y3);
myccdf = 1-f;
plot(x3,myccdf,'r--','LineWidth',1)
p = polyfit(x3, myccdf ,6);
f = polyval(p,x3);
hold on
plot(x3,f,'r-','LineWidth',1)
xlabel('losses')
ylabel('ccdf')
grid on;
grid minor;
% 
figure(7)
hold all
% plot(1:target_robots,mean_outage,'kd-.','LineWidth',2);
y3 = mean(mean_avg_replacement_costp_rng,1);%ccdf for 30 robots 
[f,x3]=ecdf(y3);
myccdf = 1-f;
plot(x3,myccdf,'r--','LineWidth',1)
p = polyfit(x3,myccdf,6);
f = polyval(p,x3);
hold on
plot(x3,f,'r-','LineWidth',1)
hold on 
xlabel('sensor cost')
ylabel('CCDF')
grid on;
grid minor;
% 
figure(8)
hold all
% plot(1:target_robots,mean_outage,'kd-.','LineWidth',2);
y3 = mean(mean_avg_comm_costp_rng,1);%ccdf for 30 robots 
[f,x3]=ecdf(y3);
myccdf = 1-f;
plot(x3,myccdf,'r--','LineWidth',1)
p = polyfit(x3,myccdf,6);
f = polyval(p,x3);
hold on
plot(x3,f,'r-','LineWidth',1)
hold on 
xlabel('comm cost')
ylabel('CCDF')
grid on;
% grid minor;
% 
figure(9)
hold all
% plot(1:target_robots,mean_outage,'kd-.','LineWidth',2);
y3 = mean(mean_optimal_costp_rng,1);%ccdf for 30 robots 
[f,x3]=ecdf(y3);
myccdf = 1-f;
plot(x3,myccdf,'r--','LineWidth',1)
p = polyfit(x3,myccdf,6);
f = polyval(p,x3);
hold on
plot(x3,f,'r-','LineWidth',1)
hold on 
xlabel('optimal cost')
ylabel('CCDF')
grid on;
grid minor;

% figure(5)
% hold all
% hold all
% mean_avg_comm_costFL_rng = mean(mean_avg_comm_costFL_rng,1);
% [mean_avg_replacement_costFL_rng,sortIdx]=sort(mean(mean_avg_replacement_costFL_rng,1),'descend');
% mean_avg_comm_costFL_rng = mean_avg_comm_costFL_rng(sortIdx);
% plot(mean_avg_replacement_costFL_rng,mean_avg_comm_costFL_rng,'bd-','LineWidth',1)
% xlabel('avg replacement cost')
% ylabel('avg comm cost')
% grid on
% grid minor
% 
% figure(6)
% hold all
% y3 = mean(mean_varianceFL_rng,1) - variance_threshold;%ccdf for 30 robots 
% [f,x3]=ecdf(y3);
% myccdf = 1-f;
% plot(x3,myccdf,'bd-','LineWidth',1)
% hold on 
% xline(0.125,'--k','LineWidth',1)
% xlabel('CCDF')
% ylabel('measurement variance')
% grid on
% grid minor
% 
% figure(7)
% hold all
% % plot(1:target_robots,mean_outage,'kd-.','LineWidth',2);
% y3 = mean(mean_outageFL_rng,1);%ccdf for 30 robots 
% [f,x3]=ecdf(y3);
% myccdf = 1-f;
% plot(x3,myccdf,'bd-.','LineWidth',1)
% xlabel('outage')
% ylabel('CCDF')
% grid on
% grid minor
% 
% figure(8)
% hold all
% % plot(1:target_robots,mean_optimal_cost,'kd-.','LineWidth',2);
% y3 = mean(mean_optimal_costFL_rng,1);%ccdf for 30 robots 
% [f,x3]=ecdf(y3);
% myccdf = 1-f;
% plot(x3,myccdf,'bd-.','LineWidth',1)
% xlabel('optimal cost')
% ylabel('CCDF')
% grid on
% grid minor
% 
% figure(9)
% hold all
% % plot(1:target_robots,mean_avg_replacement_cost_p,'r*-.','LineWidth',2);
% y3 = mean(mean_avg_replacement_costFL_rng,1);%ccdf for 30 robots 
% [f,x3]=ecdf(y3);
% myccdf = 1-f;
% plot(x3,myccdf,'bd-.','LineWidth',1)
% hold on 
% y3 = mean(mean_avg_comm_costFL_rng,1);%ccdf for 30 robots 
% [f,x3]=ecdf(y3);
% myccdf = 1-f;
% plot(x3,myccdf,'mo--','LineWidth',1)
% xlabel('avg cost')
% ylabel('CCDF')
% grid on
% grid minor

figure(10)
hold on
x3 = 1:target_robots;
y3 = mean(mean_outagep_rng,1);
plot(1:target_robots ,mean(mean_outagep_rng,1),'r--','LineWidth',1)
p = polyfit(x3,y3,6);
f = polyval(p,x3);
hold on
plot(x3,f,'r-','LineWidth',1)
xlabel('robot count')
ylabel('losses')
grid on;
grid minor;

figure(11)
hold on
plot(1:target_robots ,abs(mean(mean_variancep_rng,1) - variance_threshold),'r-','LineWidth',1)
grid on;
grid minor;
xlabel('robot count')
ylabel('error')