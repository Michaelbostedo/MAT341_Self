function perform_NonLinear_Least_Squares()

N = 2500; %Initialize N%
tol = 1e-5; %Initialize tolerance%
err = 1; %Initialize error%

data = give_NonLinear_Least_Squares_Data(N); %Calls on this script to run%

xData = data(:,1); %x data%
yData = data(:,2); %y data%

beta = [1 .5 .3]'; %Beta vector%

while err > tol
    
    for i = 1:N 
        x = xData(i); %Calls x data point with all i%
        expy = exp(-(x-beta(2))^2/(2*beta(3)^2));
        
        J(i,1) = expy; 
        J(i,2) = beta(1)*((x-beta(2))/(beta(3)^2))*expy;
        J(i,3) = beta(1)*((x-beta(2))^2)/(beta(3)^3)*expy;
    end
    
    for i = 1:N
        x = xData(i); %x and y data%
        y = yData(i);
        expy = exp((-(x-beta(2))^2)/(2*beta(3)^2)); %calculates the y exponent%
        
        rVec(i,1) = y - beta(1)*expy;
    end
    
    inverse = inv(J'*J)*J';
    pseudoInv = inverse*rVec;
    betaNew = beta + pseudoInv;
    err = sqrt((betaNew-beta)'*(betaNew-beta));
    beta = betaNew;
    
end

for i = 1:N
    x = xData(i);
    expy = exp(-(x-beta(2))^2/(2*beta(3)^2));
    f(i,1) = beta(1)*expy;
    
end

beta

err

%Creates the plot with labels, legend, linewidth and markersize%
plot(xData,f,'r','Linewidth',4)
xlabel('xData');
ylabel('yData');
legend('Data','Model Fit')