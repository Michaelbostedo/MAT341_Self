function fit_Sine_Series()

N = 500; %initialzie the number of data points%
M = 40; %The sum upper bound%
xData = linspace(-pi,pi,N); %Initializing data for x%
yData = ((0.25*xData.^2).*cos(xData).^4.*sin(xData).^7)'; %Initializing data for y%

for j = 1:N %for loop to run over the number of data points, N%
    
    x = xData(j); %Using xData and calling it x%
    y = yData(j); %Using yData and calling it y%
    
    for i = 1:M 
        
        A(j,i) = sin(i*x);
    end
    B(j,:) = y;
end

pseudoinv = (inv(A'*A))*A'; %pseudoinv is created%

beta = pseudoinv*B; %beta value found with pseudoinv%

for j = 1:N
    
    x = xData(j);
    f(j,1) = 0;
    i = 1;
    
    while i <= M %Run the loop while i is less than or equal to M%
        
        f(j,1) = f(j,1) + beta(i)*sin(i*x); 
        i = i + 1; %counter will be incremented over%
        
    end
    
end
%next 5 lines are the plot information%
figure; plot(xData,yData,'o','Linewidth',6);
hold on;
plot(xData,f,'Linewidth',4)
xlabel('xData');
ylabel('yData');
legend('Data','Best Sine Series Fit')

res = B - A*beta;
l2norm = sqrt(res'*res)

%a)When N=500: M=5; l2norm = 0.0813, M=10; l2norm = 0.0096, M=20;           
%l2norm =2.1412e-06, M=40; l2norm = 3.9199e-09% as M is increased the
%residual will decrease.
%b)The process is called Fourier Series.%  