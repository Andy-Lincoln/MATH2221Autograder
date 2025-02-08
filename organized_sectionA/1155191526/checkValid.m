function v=checkValid(M,i,j)
v=0
if i~=1&i~=2&i~=3
    disp('Invalid i')
elseif j~=1&j~=2&j~=3
    disp('Invalid j')
elseif M(i,j)~=0
    disp('Already occupied')
else v=1
    disp('Valid input')
end
end