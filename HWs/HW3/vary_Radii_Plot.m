% Prob of 0.5 is r-value = 25%
% Prob of 0.1 is r-value = 40%
% Prob of 0.01 is r-value = 55%
function vary_Radii_Plot()

N = 1e5; %Initialize N to be 1e5%

rVec = [0.01:0.005:0.10 0.1:0.01:0.5]; %Incriments over multiple r-values%

for i = 1:length(rVec)
    
    estimateVec(i) = estimate_Coin_In_Square_Probability(rVec(i),N); %Call the previous script 
    %in part a to utalize to calulate over multiple values of r%
    
end

lw = 3; %Initialize the Linewidth%

fs =15; %Initialize the Fontsize%

loglog(estimateVec, 'm', 'LineWidth', lw); %makes function logritmic and sets the color and linewidth of the graph%

xlabel('radius'); %Sets the xlabel for the graph%

ylabel('probability'); %Sets the ylabel for the graph%

set(gca, 'FontSize', fs); %Sets the fontsize on the graph%

end

