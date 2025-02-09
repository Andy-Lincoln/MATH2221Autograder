function w=checkWin(M)
for i=1:3
    for j=1:3
        
        if (sum(M(i,:))==3)||(sum(M(:,j))==3)||(diag(M)==3)||(diag(fliplr(M))==3)
            A=1;
            return;
        elseif ~((sum(M(i,:))==3)||(sum(M(:,j))==3)||(diag(M)==3)||(diag(fliplr(M))==3))
            A=0;
            return;
        elseif (sum(M(i,:))==-3)||(sum(M(:,j))==-3)||(diag(M)==-3)||(diag(fliplr(M))==-3)
            B=1;
            return;
            
        elseif ~((sum(M(i,:))==-3)||(sum(M(:,j))==-3)||(diag(M)==-3)||(diag(fliplr(M))==-3)
            
            B=0;
            return;
        end
    end
end
if A==0&&B==0
    w=0
elseif A==1
    w=1
elseif B==1
    w=-1
end
end