function vary_Error_Tolerance_To_Compare()

errTolVec = [1e-1 1e-2 1e-3 1e-4 1e-5 1e-6 1e-7 1e-8 1e-9 1e-10 1e-11]; %puts error values into a vector%

for i = 1:length(errTolVec)
    
    gradDescVec1(i) = Gradient_Descent_1(errTolVec(i),0.5); 
    gradDescVec2(i) = Gradient_Descent_2(errTolVec(i));
    
end

figure(1) %plots figure 1 in semilog%
semilogx(errTolVec,gradDescVec1,'b','LineWidth',5) 
hold on
semilogx(errTolVec,gradDescVec2,'r','LineWidth',5)
hold off
xlabel('Error Tolerance (tol)');
ylabel('# of Iterations (N)');
legend('Fixed Step', 'Barzilai-Borwein');


figure(2) %plots figure 2 in loglog%
loglog(errTolVec,gradDescVec1,'b','LineWidth',5)
hold on
loglog(errTolVec,gradDescVec2,'r','LineWidth',5)
hold off
xlabel('Error Tolerance (tol)');
ylabel('# of Iterations (N)');
legend('Fixed Step', 'Barzilai-Borwein');

end
%a) With a step-size of 1 you can not determine which algorithm converges
%faster%
%b) The Gradient Descent 2 appears to converge faster.
%c) Teh advantage is that less iterations will be needed to converge.
%d) I would use the Barzilai-Borwein method since it is more efficent than
%the Fixed-step method. 