function val=square_Root_Sequence(m,n)

m=7;
n=100;

val=sqrt(m);

for j=2:n
    
    if mod(n,2)==0
        x=-1;
    else
        x=1;
    end
    val=sqrt(m+(-1)^j*x*val);
    
end
end


