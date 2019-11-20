function vary_StepSize_Gamma_To_Optimize()

gammaVec = [0.5: 0.02: 1.5]; %put gamma values into vector%

for i = 1:length(gammaVec)
   
    gVec(i) = Gradient_Descent_1(1e-10, gammaVec(i)); %calculating the gradient vector%
    
end

figure(1); semilogx(gammaVec, gVec, 'b', 'LineWidth', 5); %plot the figure semilog%

ylabel('# of Iterations, N') %label the y-axis%
xlabel('Gamma Step-size') %label the x-axis%
legend('Fixed Step') %Create a legend for the plot%

end
% a) 1