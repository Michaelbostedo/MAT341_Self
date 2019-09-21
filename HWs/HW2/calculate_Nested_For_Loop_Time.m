function time = calculate_Nested_For_Loop_Time(N)
%info given by HW and used to take time and illustarate how much creating
%multiple for-loops will effect the run time%
tic

k=0;
%N=100;

for i1=1:N
    for i2=1:N
        for i3=1:N
            for i4=1:N
                k=k+1;
            end
        end
    end
end


time = toc;

          