function calculate_Pi_Sums()
tol = 1e-6;
err_A = 1;
NA = -1;

while err_A > tol
    
    NA = NA+1;
    
    sumA = 0;
    
    for k = 0:NA
        
        sumA = sumA+6/(sqrt(3))*((-1)^k)/((3^k)*(2*k+1));
       
    end
    
    
    err_A = abs(sumA-pi);
    
    
end

NA

err_B=1;
NB=-1;

while err_B>tol
    
    
    NB=NB+1;
    
    sumB=0;
    
    for k=0:NB
       
        sumB = sumB+16*((-1)^k)/(5^(2*k+1)*(2*k+1))-4*((-1)^k)/(239^(2*k+1)*(2*k+1));
        
        
    end
    
    err_B=abs(sumB-pi);
    
end

NB

end

    