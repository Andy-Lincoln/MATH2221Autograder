function [w]=checkWin(M)
s = M(1,1)+ M(2,2) + M(3,3);
if s == 3
    w = 1;
    return
elseif s == -3
    w = -1;
    return
end
if (sum(M(1,:),2)==3)||(sum(M(2,:),2)==3)||(sum(M(3,:),2)==3)
    w=1
    return
elseif (sum(M(1,:),2)==-3)||(sum(M(2,:),2)==-3)||(sum(M(3,:),2)==-3)
    w=-1
    return
elseif (sum(M(:,1),1)==3)||(sum(M(:,2),1)==3)||(sum(M(:,2),1)==3)
    w=1
    return
elseif (sum(M(:,1),1)==-3)||(sum(M(:,2),1)==-3)||(sum(M(:,2),1)==-3)
    w=-1
    return
else
    w=0
    return
end
    
    