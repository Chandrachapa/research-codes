figure(10)
hold on
x2= 1:maximum_SNR;
x3 = 10*log10(1000.*x2) 
y3 = (mean(mean_varianceFL_rng,1) - variance_threshold);
plot(x3 ,(mean(mean_varianceFL_rng,1) - variance_threshold),'k-','LineWidth',1)
xi = linspace(min(x3), max(x3), 150);                     % Evenly-Spaced Interpolation Vector
yi = interp1(x3, y3, xi, 'spline', 'extrap');
hold on
plot(xi,yi,'-dr','LineWidth',1)
grid on;
grid minor;
xlabel('robot count')
ylabel('error') 

figure(11)
hold on
x2 = 1:maximum_SNR;
x3 = 10*log10(1000.*x2) 
y3 = (mean(mean_outageFL_rng,1));
plot(x3 ,y3,'k-','LineWidth',1)
xi = linspace(min(x3), max(x3), 150);% Evenly-Spaced Interpolation Vector
yi = interp1(x3, y3, xi, 'spline', 'extrap');
hold on
plot(xi,yi,'-dr','LineWidth',1)
grid on;
grid minor;
xlabel('robot count')
ylabel('error')