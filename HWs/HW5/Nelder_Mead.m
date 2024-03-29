function N = Nelder_Mead(tol)

err = 1; %initialze error%

%initialize all values of x and y%
x1 = 0.35; 
x2 = 4;
x3 = 4.5;
y1 = 2.8;
y2 = 4;
y3 = 4.5;

N = 0; %Initialize the value of N%

 xvec = [x1 x2 x3]; %inputting values of x in a vector%
 yvec = [y1 y2 y3]; %inputting values of y in a vector%
 fvec = [f(x1,y1) f(x2,y2) f(x3,y3)]; %inputting values of x and y in a function vector% 

while err>tol
    %Sorting fvec and initializing least and greatest values for x%
   [fnew, indsvec] = sort(fvec);
    xleast = xvec(indsvec(1));
    xmid = xvec(indsvec(2));
    xgreat = xvec(indsvec(3));
    %initializing least and greatest values for y%
    yleast = yvec(indsvec(1));
    ymid = yvec(indsvec(2));
    ygreat = yvec(indsvec(3));
    
    xmidpt = 1/2*(xleast+xmid);
    xreach = xmidpt + (xmidpt - xgreat);
                                            %finding the midpoint of x and
                                            %y and the reach values of x
                                            %and y%
    ymidpt = 1/2*(yleast+ymid);
    yreach = ymidpt + (ymidpt - ygreat);
    
    if f(xreach,yreach)<f(xgreat, ygreat) %comparing the x,y reach and x and y great%
    xgreat = xreach;
    ygreat = yreach;
    else
        if f(xreach,yreach)>f(xgreat, ygreat) 
            xcenter = 1/2*(xmidpt+xgreat);
            ycenter = 1/2*(ymidpt+ygreat);
          
            if f(xcenter, ycenter)<f(xgreat, ygreat)
                xgreat = xcenter;
                ygreat = ycenter;
            else
                xmid = 1/2*(xleast+xmid);
                xgreat = 1/2*(xleast+xgreat);
                ymid = 1/2*(yleast+ymid);
                ygreat = 1/2*(yleast+ygreat);
            end
        end
    end
 xvec = [xleast xmid xgreat]; %input xleast, mid, great and  yleast, mid, great into a vector%
 yvec = [yleast ymid ygreat];
 fvec = [f(xleast,yleast) f(xmid,ymid) f(xgreat,ygreat)];
           
            err = abs(f(xgreat,ygreat)-f(xleast,yleast)); %calculating the error%
            N = N+1;
end

xleast
yleast
N
end
   function val = f(x,y)
   val = -(sin(x) + cos(y));   %function to calculate x,y%       

   end
            
%a) 29 iterations%
%b) The points appear to converge to (1.57,2.6e-08). The true (x,y) is
%(pi/2,0) which is not the exact accuracy at 1e-8. The tolerance needs to
%be higher than 1e-8 to hit that level of accuracy.
%c) 58 iterations will reach 1e-8 accuracy. It located the (1.5709,
%-1.1087e-04)as the minima. The initial guess was more accuarate for a so
%it did not take as many iterations to reach the minima. 
%d) The algorithm finds (-4.7123, -2.8363e-04) as the minima. 