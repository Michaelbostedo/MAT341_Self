function plot_Nested_Times()
%used to save time and reference the previous script%
N=[1:1:10 20:10:100 125 150];

for n=1:length(N)
    
    time(n)=calculate_Nested_For_Loop_Time(N(n));
    
end

lw=6;%linewidth value%
fs=22;%fontsize value%

loglog(N,time,'m','Linewidth',lw);
xlabel('n');%x axis label%
ylabel('Time');%y axis label%
leg=legend('Time');$legend label%
set(gca,'Fontsize',fs);

