function plot_Nested_Times()

N=[1:1:10 20:10:100 125 150];

for n=1:length(N)
    
    time(n)=calculate_Nested_For_Loop_Time(N(n));
    
end

lw=6;
fs=22;

loglog(N,time,'m','Linewidth',lw);
xlabel('n');
ylabel('Time');
leg=legend('Time');
set(gca,'Fontsize',fs);

