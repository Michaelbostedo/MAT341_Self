function OpCount = go_Go_Gaussian_Elimination(N)

B = rand(N,N); %Creates a random matrix of NxN%
OpCount = 0; %Initialize the counter%

for L = 1:N %Loop for 1 to N iterations%
    
    for i = L:N %Now run the L iteration%
        
        for j = 1:N %Loop for new matrix%
            
            A = (B(i,j)/B(L,L));
            OpCount = OpCount + 1;
            
            if i == L %Checks to see i equals L and will run if it does%
                
                B(i,j) = A;
            else
                val = A*B(L,j);
                OpCount = OpCount + 1;
                B(i,j) = val - B(i,j);
                OpCount = OpCount + 1;
            end
        end
    end
end

OpCount 

for L = N:-1:2 %New matrix L%
    
    for i = L-1:-1:1
        
        A = B(i,L)*B(L,L);
        OpCount = OpCount + 1;
        B(i,L) = B(i,L) - A;
        OpCount = OpCount + 1;
    end
end