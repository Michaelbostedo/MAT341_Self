function fit_Polynomial_Series()

N = 250; %Initialize the number of data points%
xData = linspace(-2*pi,2*pi,N); %Data for x%
yData = cos(xData)'; %Data for y%

for  j = 1:N %For loop running over the number of iterations N%
    
    x = xData(j);%Makes x-data point from initial xData above%
    y = yData(j);%Makes y-data point from initial yData above%
    A(j,:) = [1 x x^2 x^3 x^4 x^5 x^6 x^7 x^8 x^9 x^10 x^11 x^12];
    B(j,:) = y;
    
end

pseudoinv = (inv(A'*A))*A'; %Calc Pseudoinv%
beta = pseudoinv*B 

for j = 1:N
    
    x = xData(j);
    f(j,1) = beta(1) + beta(2)*x + beta(3)*x^2 + beta(4)*x^3 + beta(5)*x^4 + beta(6)*x^5 + beta(7)*x^6 + beta(8)*x^7 + beta(9)*x^8 + beta(10)*x^9 + beta(11)*x^10 + beta(12)*x^11 + beta(13)*x^12;
    
end

figure; plot(xData,yData,'o','Linewidth',6); %Next 4 lines are the plot of the data points%
hold on;
plot(xData,f,'Linewidth',4);
xlabel('xData');
ylabel('yData');
legend('Data','Best Polt Fit')

res = B - A*beta;
l2norm = sqrt(res'*res) %Prints L2norm%

%a)N=10; l2norm=4.3238, N=50; l2norm=5.1501e-04 , N=250; l2norm=0.0011, As
%N increases the residual decreases.
%b)We saw cos(x) written as a taylor series with coefficeints 1 and -1
%c)When N=250 coefficients are:
%   0.9999
%    -0.0000
%    -0.4998
%     0.0000
%     0.0416
%    -0.0000
%    -0.0014
%     0.0000
%     0.0000
%    -0.0000
%    -0.0000
%     0.0000
%     0.0000

%d) The coefficients appear to relate with a Taylor Series pattern.%

