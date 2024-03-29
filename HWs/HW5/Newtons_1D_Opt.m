function N = Newtons_1D_Opt(tol)

xn = 0.25; %initialize xn%
err = 1;  %initialize error%
N = 0;  %initialize N%

while err>tol %When error is greater than tolerance the loop will run%
    xn1 = xn;
    xn = xn - f1(xn)/f2(xn);
    err = abs(xn1-xn);
    N = N+1;
end

function val = f1(x) %first derivative%
val = exp(-x^2)*(2*(x^2)-1);

function val = f2(x)%second derivative%
val = exp(-x^2)*(6*x-4*(x^3));

%a) 6 iterations.
%b) 736 iterations, It took many more iterations to achieve 1e-8 accuracy. 
