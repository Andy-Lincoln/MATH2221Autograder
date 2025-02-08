if sum(M,1)==3
    w=1;
elseif sum(M,2)==3
    w=1;
elseif sum(M,1)==-3
    w=-1;
elseif sum(M,2)==-3
    w=-1;
elseif sum(diag(M))==3
    w=1;
elseif sum(diag(M))==-3
    w=-1;
elseif M(3,1)+M(2,2)+M(1,3)==3
    w=1;
elseif M(3,1)+M(2,2)+M(1,3)==-3
    w=-1;
else
    w=0;
end
w
            