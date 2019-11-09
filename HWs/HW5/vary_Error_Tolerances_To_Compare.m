function vary_Error_Tolerances_To_Compare()

errTolVec = [1e-1 1e-2 1e-3 1e-4 1e-5 1e-6 1e-7 1e-8 1e-9 1e-10 1e-11 1e-12];
%goes through tolerence as a vector%

for i = 1:length(errTolVec)%uses i to go from 1 to the length of the vector%
    
    NGS(i) = golden_Search(errTolVec(i));
    NSPI(i) = successive_Parabolic_Interpolation(errTolVec(i));
    NM1D(i) = Newtons_1D_Opt(errTolVec(i));
end 
figure(1)%print the first figure with smeilog%
semilogx(errTolVec, NGS,'b','LineWidth',5); hold on
semilogx(errTolVec, NSPI, 'r','LineWidth',5); hold on
semilogx(errTolVec, NM1D, 'k','LineWidth',5); hold on
xlabel('Error Tolerance');
ylabel('Number of Iterations');
leg = legend('Golden Search','Succ. Par. Interp.','Newtons Method');


figure(2)%pritn the second figure with log%
loglog(errTolVec, NGS, 'b','LineWidth',5); hold on
loglog(errTolVec, NSPI, 'r','LineWidth',5); hold on
loglog(errTolVec, NM1D, 'k','LineWidth',5); hold on
xlabel('Error Tolerance');
ylabel('Number of Iterations');
leg = legend('Golden Search','Succ. Par. Interp.','Newtons Method');

end
% a) Newtons method convers faster to the minimum for less accurate
% tolerances.
% b) When you increase the accuracy threshold it takes less iterations
% to achieve tolerance level. 
% c) If the inital conditions change the convergence rate can change.  