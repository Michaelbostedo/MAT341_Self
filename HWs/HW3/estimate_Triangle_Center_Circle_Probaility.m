function prob = estimate_Triangle_Center_Circle_Probaility(N)

count = 0; %Initializing the count at 0%

for i = 1:N
    
    x(1) = 2*pi*rand(); %1st random point%
    x(2) = 2*pi*rand(); %2nd random point%
    x(3) = 2*pi*rand(); %3rd random point%
    
    
    A = [x(1) x(2) x(3)]; %Creates vector A with the random points%
    sort(A); %Sort the vector A%
    
    B = sort(A);
    x1 = B(1);
    x2 = B(2);
    x3 = B(3);
    
    if x2 < (x1 + pi) && x2 > (x3 - pi)
        
        count = count + 1; %Allows count to go to further iterations%
        
    end
end
 
prob = count/N %Prints the probability which is the count where it exists over the number of trals, N%
