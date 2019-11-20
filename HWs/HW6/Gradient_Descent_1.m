function N = Gradient_Descent_1(tol,gamma)

x0 = [1, 1.5]; %initialize x0%
err = 1; %initialize error%
N = 0; %initialize N%

while err > tol
    
    N = N+1;
    
    x1 = x0 - (gamma*G(x0)); 
    
    err = sqrt((x1-x0).'*(x1-x0)); %calculating the error%
    
    x0 = x1;
    
end

function val = G(x)

val = [-cos(x(1)); sin(x(2))]; %calculate the function value%
end
end
%a) 34%
%b) 12%
%c) 35%