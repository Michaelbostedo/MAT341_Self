function N = Gradient_Descent_2(tol)

x0 = [1, 1.5]; %initialize x0%
gamma = 0.5; %initialize gamma%
err = 1; %initialize error%
N = 0; %initialize N%

while err > tol
    
    N = N+1; %allows N to iterate%
    
    x1 = x0 - (gamma*G(x0)); %calculate x1%
    
    gamma = abs(((x1-x0).'*(G(x1)-G(x0))))/(G(x1)-G(x0).'*(G(x1)-G(x0))); %calculate gamma%
    
    err = sqrt((x1-x0).'*(x1-x0)); %calc the error%
    
    x0 = x1; %sets x0 equal x1%
end

function val = G(x)

val = [-cos(x(1)); sin(x(2))]; %calcualte function value%

%a) 6
%b) 7

