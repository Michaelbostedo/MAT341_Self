function N = successive_Parabolic_Interpolation(tol)

err = 1;

N = 0; %itialize N%
x1 = 0; %intialize x1%
x2 = 0.6; %intialize x2%
x3 = 1.2; %intialize x3%


while err > tol % take the difference of x1 and x3 and compares it to tol, when tol is less the runs for system below% 
    
    N = N + 1; %To make N count over multiple iterations%
    
    A = [(x1)^2 x1 1; (x2)^2 x2 1; (x3)^2 x3 1];  %creates vector of x values to go over%
    coeffs = inv(A)*[f(x1) f(x2) f(x3)]';
    
    a = coeffs(1);
    b = coeffs(2);
    
    vertex = -b/(2*a);
    
    x3 = x2;
    x2 = x1;
    x1 = vertex;
    
    err = abs(x3 - x1);
    
end
N
%calls N, the count but does not print it to screen%
function val = f(x)
val = 0.5 - x*exp(-x^2); %funs the fuction for a value of f(x)%
% a)It takes 7 iterations to achieve accuracy of 1e-8 %
% b)It takes 186 iterations to achieve accuracy of 1e-8. Matlab did not give any warnings.%