function w = checkWin(M)
if sum(M(1,:))==3 || sum(M(2,:))==3 || sum(M(3,:))==3 || sum(M(:,1))==3 || sum(M(:,2))==3 || sum(M(:,3))==3 || sum(diag(M))==3 || (M(3,1)+M(2,2)+M(1,3)==3)
    w=1;
elseif sum(M(1,:))==-3 || sum(M(2,:))==-3 || sum(M(3,:))==-3 || sum(M(:,1))==-3 || sum(M(:,2))==-3 || sum(M(:,3))==-3 || sum(diag(M))==-3|| (M(3,1)+M(2,2)+M(1,3)==-3)
    w=-1;
else
    w=0;
end
end