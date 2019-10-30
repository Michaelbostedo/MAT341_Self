function N = golden_Search(tol)

err = 1; %initializing the error%
t = (sqrt(5)-1)/2; %Setting what t is equal to%
a = 0; %itialize a%
b = 2; %itialize b%
N = 1; %itialize N%

x1 = a + (1-t)*(b-a); %set what x1 is equal to%
x2 = a + t*(b-a); %set what x2 is equal to%
f1 = f(x1); %set that f1 is equal to the fuction of x1%
f2 = f(x2); %set that f2 is equal to the fuction of x2%

while err > tol %while loop for the error compared to the tolerance%
    
    N = N + 1; %To make N count over multiple iterations%
    
    if f1 > f2 %If statements for f1 and f2%
        a = x1;
        x1 = x2;
        f1 = f2;
        x2 = a + t*(b-a);
        f2 = f(x2);
        
    else %if not the if statment above then these conditions below%
        b = x2;
        x2 = x1;
        f2 = f1;
        x1 = a + (1-t)*(b-a);
        f1 = f(x1);
    end
    err = b-a; %the error value%
end
   %prints the value of the number of iterations to the screen%
N
end

function val = f(x)
val = 0.5 - x*exp(-x^2); %uses the fuction to find a vale given the above conditios%
end
% a) It takes 41 iterations to achieve accuracy of 1e-8 %