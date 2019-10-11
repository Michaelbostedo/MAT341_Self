function lcm_val = calculate_LCM(x,y)

notLCM = 1; %Variable to run in loop until there is an LCM found%

i = 0;  %Initilalizing i which is the counter of the loop%

while notLCM == 1

i = i+1; %The counter of the integer to be multiplied by x%

xmult = i*x; %integer times the Variable x%

j = 0; %Initialize j%

ymult = j*y; %integer times the Variable y%

while ymult <= xmult
    
    j = j+1;
    
    ymult = j*y;
    
    if ymult == xmult %If ymult and xmult are equal then LCM is found%
        
        lcm = xmult; %LCM is equal the the xmult%
        
        lcm    %Print LCM%
                
        notLCM = 0; %loop ends%
    end
    
end

end





