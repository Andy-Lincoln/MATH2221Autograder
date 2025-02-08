function w= checkWin(M)
i=1;
for i=1:3
  if sum(M(:,i))==3
      w=1;
      return
  elseif sum(M(i,:))==3
      w=1;
      return
  elseif sum(M(:,i))==-3
      w=-1;
      return
  elseif sum(M(i,:))==-3
      w=-1;
      return
  else 
      w=0;
  end
  i=i+1;
end
if sum(diag(M))==3 || sum(diag(flip(M)))==3
    w=1;
elseif sum(diag(M))==-3 || sum(diag(flip(M)))==-3
    w=-1;
else
end