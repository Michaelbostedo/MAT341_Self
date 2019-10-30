function N = successive_Parabolic_Interpolation(tol)

N = 0; %itialize N%
x1 = 0; %intialize x1%
x2 = 0.6; %intialize x2%
x3 = 2; %intialize x3%


while abs(x3 - x1) > tol % take the difference of x1 and x3 and compares it to tol, when tol is less the runs for system below% 
    
    N = N + 1; %To make N count over multiple iterations%
    
    A = [(x1)^2, x1, 1, f(x1); (x2)^2, x2, 1, f(x2); (x3)^2, x3, 1, f(x3)];  %creates vector of x values to go over%
    
    B = rref(A); % finds the reduced row echelon form of the vector A%
    
    xMin = -B(2,4)/(2*B(1,4)); %calculates the x-minimum of the vector B% 
    
    x3 = x2;
    x2 = x1;
    x1 = xMin;
end
N; %calls N, the count but does not print it to screen%
function val = f(x)
val = 0.5 - x*exp(-x^2); %funs the fuction for a value of f(x)%
% a)It takes 7 iterations to achieve accuracy of 1e-8 %
% b)It takes 186 iterations to achieve accuracy of 1e-8. Matlab did not give any warnings.%