function plot_Gaussian_Elimination_Scaling()

NVec = 2:1:100; %The N-Vector%

for i = 1:length(NVec) %For loop to go the NVec%
    
    OpCount(i) = go_Go_Gaussian_Elimination(NVec(i)); %calls the script%
    
end
%Plotting of figure 1 and 2 to follow%
figure(1); loglog(NVec,OpCount,'Blue','Linewidth',5)
xlabel('N')
ylabel('OpCount')

figure(2); plot(NVec,OpCount,'Blue','LineWidth',5)
xlabel('N')
ylabel('OpCount')
%a)As your matrix increases the number of operations increases. figure 1 is linear and figure 2 is quadratic%