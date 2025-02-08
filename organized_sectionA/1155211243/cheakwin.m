function w=cheakwin(M)
 D=M(:,[3,1,2]);
  A=sum(M,1);
  B=sum(M,2);
if sum(diag(M))==3
    w=1;
elseif sum(diag(M))==-3
    w=-1;
elseif sum(diag(D))==3
    w=1;
elseif sum(diag(D))==-3
    w=-1;
else
  for n=1:3
    if A(n)==3
        w=1;
        break;
    elseif A(n)==-3
        w=-1;
         break;
    elseif B(n)==3
         w=1;
          break;
    elseif B(n)==-3
        w=-1;
         break;
    else
        w=0;
  
    end
 end
end
end