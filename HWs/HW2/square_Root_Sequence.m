function val=square_Root_Sequence(m,n)

m=43;%initialize value for n%
n=100;

val=sqrt(m);

for j=2:n
    
    if mod(n,2)==0 %mod to find remainder%
        x=-1;
    else
        x=1;
    end
    val=sqrt(m+(-1)^j*x*val); %calulate the specific value
    
end
end
%13=3%
%31=5%
%43=6%

