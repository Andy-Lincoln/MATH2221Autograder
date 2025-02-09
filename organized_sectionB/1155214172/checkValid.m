function v=checkValid(M,i,j)
    if (i~=1&i~=2&i~=3)
        v=0
        disp('Invalid i');
    elseif (j~=1&j~=2&j~=3)
        v=0
        disp('Invalid j');
    elseif M(i,j)~=0
        v=0
        disp('Already occupied');
    else
        v=1
        disp('Valid output')
    end
end