function calculate_Pi_Sums()
tol = 1e-6; %value for error tolerance%
err_A = 1; %initializing the error for a%
NA = -1;

while err_A > tol
    
    NA = NA+1;
    
    sumA = 0;
    
    for k = 0:NA %the sum of A from the hw which represent the series a_n%
        
        sumA = sumA+6/(sqrt(3))*((-1)^k)/((3^k)*(2*k+1));
       
    end
    
    
    err_A = abs(sumA-pi); %error of a is given by absolute value that sumb from above minus pi%
    
    
end

NA

err_B=1;  %initializing the error for b%
NB=-1;

while err_B>tol
    
    
    NB=NB+1;
    
    sumB=0;
    
    for k=0:NB
        %the sum of B from the hw which represent the series b_n%
        sumB = sumB+16*((-1)^k)/(5^(2*k+1)*(2*k+1))-4*((-1)^k)/(239^(2*k+1)*(2*k+1));
        
        
    end
    
    err_B=abs(sumB-pi); %error of b is given by absolute value that sumb from above minus pi%
    
end

NB

end

    