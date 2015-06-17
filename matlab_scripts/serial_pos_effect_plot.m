clear;
clc;

i=1:10;
mu_i = zeros(3,length(i));

for x=1:length(i)
    mu_i(1,x) = ((x-5)^2 - x + 6)/30 + 0.26;
end

for x=1:length(i)
    mu_i(2,x) = ((x-5)^2 - x + 6)/50 + 0.25;
end

for x=1:length(i)
    mu_i(3,x) = ((x-5)^2 - x + 6)/100 + 0.05;
end
mu_i(3,1:3) = mu_i(3,1:3)*1.5;
mu_i(3,8:10) = mu_i(3,8:10)*1.5;

hold all;
for x=1:3
    plot(i,mu_i(x,:));
end
axis([1,10,0,1]);
xlabel('Serial Position');
ylabel('Mean Probability of Recall');
legend('N < K', 'N = K', 'N > K', 'Location', 'North');
saveas(gcf, './figures/mean_prob_recall_vs_ser_pos.pdf');
savefig('./figures/mean_prob_recall_vs_ser_pos.fig');