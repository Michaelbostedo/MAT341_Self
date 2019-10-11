%for N=1e5 prob=0.6408  for N=1e4 prob=0.6476 for N=1e8 prob=0.6401%
% Yes it is reasonable since it appears to converges to a point of roughly 0.64 for
% whatever value or N used% This is more difficult compared to the problem
% in class since we had the answer to the problem in class without using a
% computer where as here we do not%
function prob = estimate_Coin_In_Square_Probability(r,N)

countFlip = 0; %Initialize the countFlip%

for j = 1:N 
    
    x = rand; %x equals a random value%
    y = rand; %y equals a random value%
    
    if ((x-r>0) &&(x+r<1) && (y-r>0) && (y+r<1))
        
        countFlip = countFlip + 1; %Incriments to the next countflip%
        
    end
end
 prob = countFlip/N %Prints the probability the countflip over the number of trials, N%
 
 