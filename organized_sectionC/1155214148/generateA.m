function A = generateA(m,n)
i=1; B=[]; C=[];
    while i <= m
        j=1;
        while j <= n
            if mod(i+j,3)==0
                B=[B,1];
            else
                B=[B,-1];
            end
            j=j+1;
        end
    C=[C;B];
    B=[];
    i=i+1;
    end
    A = C;
end
        