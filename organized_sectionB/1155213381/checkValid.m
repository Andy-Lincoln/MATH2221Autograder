function v= checkValid(M,i,j)
if ismember(i, [1, 2, 3])
    v=0;
    disp('Invalid i');
elseif ismember(j, [1, 2, 3])
    v=0;
    disp('Invalid j');
elseif M(i,j)~=0
    v=0;
    disp('Already occupied');
else
    v=1;
    disp('Valid input');
end
