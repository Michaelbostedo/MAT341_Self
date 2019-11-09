function vary_Error_Tolerances_To_Compare()

errTolVec = [1e-1 1e-2 1e-3 1e-4 1e-5 1e-6 1e-7 1e-8 1e-9 1e-10 1e-11 1e-12];
%goes through tolerence as a vector%

for i = 1:length(errTolVec)%uses i to go from 1 to the length of the vector%
    
    NGS(i) = golden_Search(errTolVec(i));
    NSPI(i) = successive_Parabolic_Interpolation(errTolVec(i));
end 
hold on
figure(1)%print the first figure%
semilogx(errTolVec, NGS,'b','LineWidth',5);
xlabel('Error Tolerance');
ylabel('Number of Iterations');
leg = legend('Golden Search');
hold off

figure(2)%pritn the second figure%
hold on
loglog(errTolVec, NSPI, 'r','LineWidth',5);
xlabel('Error Tolerance');
ylabel('Number of Iterations');
leg = legend('Succ. Par. Interp.');

hold off   
end
% a)The successive_Parabolic_Interpolation appears to converge to the minimum faster than golden_Search%
% b)When the accuracy threshold reaches a certain point the golden search will converge the min quicler than 
%successive_Parabolic_Interpolation. The x values are changing slower than in previous steps.%