
figure(11)
hold all
x3 = sum(data_count_FL_rng,1);
y3 = abs(mean(mean_varianceFL_rng,1) - variance_threshold);
cumsum_x3 = cumsum(x3);
plot(cumsum_x3,y3,'k--','LineWidth',1)
p = polyfit(cumsum_x3,y3,6);
f = polyval(p,cumsum_x3);
hold on
plot(cumsum_x3,f,'k-','LineWidth',1)
xlabel('data count')
ylabel('error')
grid on
grid minor

figure(12)
hold all
x3 = sum(data_count_FL_rng,1);
y3 = mean(mean_outageFL_rng,1);
cumsum_x3 = cumsum(x3);
plot(cumsum_x3,y3,'k--','LineWidth',1)
p = polyfit(cumsum_x3,y3,6);
f = polyval(p,cumsum_x3);
hold on
plot(cumsum_x3,f,'k-','LineWidth',1)
xlabel('data count')
ylabel('losses')
grid on
grid minor

figure(13)
hold all
x3 = sum(data_count_FL_rng,1);
y3 = mean(mean_avg_replacement_costFL_rng,1);
cumsum_x3 = cumsum(x3);
plot(cumsum_x3,y3,'k--','LineWidth',1)
p = polyfit(cumsum_x3,y3,6);
f = polyval(p,cumsum_x3);
hold on
plot(cumsum_x3,f,'k-','LineWidth',1)
xlabel('data count')
ylabel('sensor_cost')
grid on
grid minor

figure(14)
hold all
x3 = sum(data_count_FL_rng,1);
y3 = mean(mean_avg_comm_costFL_rng,1);
cumsum_x3 = cumsum(x3);
plot(cumsum_x3,y3,'k--','LineWidth',1)
p = polyfit(cumsum_x3,y3,6);
f = polyval(p,cumsum_x3);
hold on
plot(cumsum_x3,f,'k-','LineWidth',1)
xlabel('data count')
ylabel('comm_cost')
grid on
grid minor

% figure(4)
% hold all
% plot(mean(data_count_FL_rng,1),mean(mean_LL_FL_rng,1),'bd-','LineWidth',1)
% xlabel('data count')
% ylabel('LL')
% grid on
% grid minor

figure(15)
hold all
y4 = mean(mean_varianceFL_rng,1);%ccdf for 30 robots 
[f,x4]= ecdf(y4);
myccdf = 1-f;
plot(x4,myccdf,'k--')
hold on
p = polyfit(x4,myccdf,6);
f4 = polyval(p,x4);
plot(x4,f4,'k-','LineWidth',1)
xlabel('variance')
ylabel('ccdf')
grid on;
grid minor;

figure(16)
hold all
y3 = mean(mean_outageFL_rng,1);%ccdf for 30 robots 
[f,x3]= ecdf(y3);
myccdf = 1-f;
plot(x3,myccdf,'k--','LineWidth',1)
p = polyfit(x3, myccdf ,6);
f = polyval(p,x3);
hold on
plot(x3,f,'k-','LineWidth',1)
xlabel('losses')
ylabel('ccdf')
grid on;
grid minor;
% 
figure(17)
hold all
% plot(1:target_robots,mean_outage,'kd-.','LineWidth',2);
y3 = mean(mean_avg_replacement_costFL_rng,1);%ccdf for 30 robots 
[f,x3]=ecdf(y3);
myccdf = 1-f;
plot(x3,myccdf,'k--','LineWidth',1)
p = polyfit(x3,myccdf,6);
f = polyval(p,x3);
hold on
plot(x3,f,'k-','LineWidth',1)
hold on 
xlabel('sensor cost')
ylabel('CCDF')
grid on;
grid minor;
% 
figure(18)
hold all
% plot(1:target_robots,mean_outage,'kd-.','LineWidth',2);
y3 = mean(mean_avg_comm_costFL_rng,1);%ccdf for 30 robots 
[f,x3]=ecdf(y3);
myccdf = 1-f;
plot(x3,myccdf,'k--','LineWidth',1)
p = polyfit(x3,myccdf,6);
f = polyval(p,x3);
hold on
plot(x3,f,'k-','LineWidth',1)
hold on 
xlabel('comm cost')
ylabel('CCDF')
grid on;
% grid minor;
% 
figure(19)
hold all
% plot(1:target_robots,mean_outage,'kd-.','LineWidth',2);
y3 = mean(mean_optimal_costFL_rng,1);%ccdf for 30 robots 
[f,x3]=ecdf(y3);
myccdf = 1-f;
plot(x3,myccdf,'k--','LineWidth',1)
p = polyfit(x3,myccdf,6);
f = polyval(p,x3);
hold on
plot(x3,f,'k-','LineWidth',1)
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

figure(20)
hold on
x2 = 1:maximum_SNR;
x3 = 10*log10(1000.*x2) 
y3 = mean(mean_outageFL_rng,1);
plot(x3,y3,'k-','LineWidth',1)
p = polyfit(x3,y3,6);
f = polyval(p,x3);
hold on
plot(x3,f,'bd-','LineWidth',1)
xlabel('robot count')
ylabel('losses')
grid on;
grid minor;
hold on 
y3 = mean(mean_avg_comm_costFL_rng,1);
plot(x3,y3,'k--','LineWidth',1)
p = polyfit(x3,y3,6);
f = polyval(p,x3);
hold on
plot(x3,f,'ks-','LineWidth',1)

figure(21)
hold on
plot(1:maximum_SNR,(mean(mean_varianceFL_rng,1) - variance_threshold),'k-','LineWidth',1)
grid on;
grid minor;
xlabel('robot count')
ylabel('error')