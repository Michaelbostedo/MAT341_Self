function N = Newtons_2D_Opt(tol)

x0=[-4.5; 4.5]; %initialize xo that is x,y%
N=0; %initialize N%
err=1; %initialize error%

while err>tol %when error is greater than tolerance run the loop%
    
    N = N+1;
    
    x1=x0-H(x0(1),x0(2))*grad(x0(1), x0(2));
       
    err=sqrt(((x1-x0).')*(x1-x0));
    
    x0=x1;
    
end
x0 %prints xo%

function val=H(x,y) %calculates the hessian matrix%
val=inv([sin(x) 0; 0 cos(y)]);

function val=grad(x,y)  %calculates the gradient for x,y%
val=[-cos(x); sin(y)];

%a) 5 iterations and converges to (x,y)=(-4.7124,0)
%b) 4 iterations and converges to (x,y)=(-4.7124,0)