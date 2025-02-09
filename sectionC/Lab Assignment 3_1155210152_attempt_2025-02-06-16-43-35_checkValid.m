function v = checkValid(M,i,j)
v=0;
if (i~=1)&&(i~=2)&&(i~=3)
    disp('Invalid i')
    return
elseif (j~=1)&&(j~=2)&&(j~=3)
    disp('Invalid j')
    return
elseif M(i,j)~=0
    disp('Already occupied')
    return
else
    disp('Valid input')
    v=1;
end
end
    
    