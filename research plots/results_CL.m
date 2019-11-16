mean_outage(maximum_power) = mean(mean(outage,2),1);%average outage probability of the system per time unit
% save(sprintf('mean_outageCL_%d', maximum_power ), 'mean_outage');

mean_variance(maximum_power) = mean(mean(variance,2),1);%average variance of the system per time unit
% save(sprintf('mean_varianceCL_%d', maximum_power ), 'mean_variance');

data_count(maximum_power) = sum(sum(data_count_CL,2));
% save(sprintf('data_countCL_%d',maximum_power ), 'data_count');

mean_optimal_cost(maximum_power) = mean(mean(optimal_cost,2),1);
% save(sprintf('optimalCL_cost_%d',maximum_power ), 'mean_optimal_cost');

mean_avg_replacement_cost(maximum_power) = mean(mean(avg_replacement_cost,2),1);
% save(sprintf('avg_replacement_costCL_%d',maximum_power ), 'mean_avg_replacement_cost');

mean_avg_comm_cost(maximum_power)  = mean(mean(avg_comm_cost,2),1);
% save(sprintf('avg_comm_costCL_%d',maximum_power ), 'mean_avg_comm_cost');

mean_LL_CL(maximum_power) = mean(mean(LL_CL,2),1);
% save(sprintf('LL_CL_%d',maximum_power ), 'mean_LL_CL');
% 
% figure(100) 
% hold all
% mean(variance,1);
% y3 = mean(variance,1);%ccdf variation with number of robots
% [f,x3]=ecdf(y3);
% myccdf = 1-f;
% plot(x3,myccdf,'gd-.','LineWidth',1)
