function w = checkWin(M)
for i = sum(M,1)
    if i==3
        w=1;
        return
    elseif i==-3
        w=-1;
        return
    else 
        w=0;
    end 
end
for j = sum(M,2)'
    if j==3
        w=1;
        return
    elseif j==-3
        w=-1;
        return
    else 
        w=0;
    end
end
if trace(M)==3
    w=1;
        return
elseif trace(M)==-3
        w=-1;
        return
else 
        w=0;
end
if M(1,3)+M(2,2)+M(3,1)==3
        w=1;
        return
    elseif M(1,3)+M(2,2)+M(3,1)==-3
        w=-1;
        return
    else
        w=0;
    end
  end
   

      
  