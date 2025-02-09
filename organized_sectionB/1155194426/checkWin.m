function w=checkWin(M)
if M(1,1)+M(1,2)+M(1,3)==3
    w=1;
elseif  M(2,1)+M(2,2)+M(2,3)==3
    w=1;
elseif  M(3,1)+M(3,2)+M(3,3)==3
    w=1;
elseif M(1,1)+M(2,2)+M(3,3)==3
    w=1;
elseif M(1,3)+M(2,2)+M(3,1)==3
    w=1;
elseif  M(1,1)+M(2,1)+M(3,1)==3
    w=1;
elseif  M(1,2)+M(2,2)+M(3,2)==3
    w=1;
elseif M(1,3)+M(2,3)+M(3,3)==3
    w=1;
else if M(1,1)+M(1,2)+M(1,3)==-3
    w=-1;
elseif  M(2,1)+M(2,2)+M(2,3)==-3
    w=-1;
elseif  M(3,1)+M(3,2)+M(3,3)==-3
    w=-1;
elseif M(1,1)+M(2,2)+M(3,3)==-3
    w=-1;
elseif  M(1,1)+M(2,1)+M(3,1)==-3
    w=-1;
elseif  M(1,2)+M(2,2)+M(3,2)==-3
    w=-1;
elseif M(1,3)+M(2,3)+M(3,3)==-3
    w=-1;
elseif M(1,3)+M(2,2)+M(3,1)==-3
    w=-1;
else
    w=0;
    end
end

