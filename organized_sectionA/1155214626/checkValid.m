function v = checkValid(M,i,j)


i = input('input i: ');
j = input('input j: ');

if (i~=1 & i~=2 & i~=3)
    v=0
    display('Not valid i')
elseif j~=1 & j~=2 & j~=3
    v=0
    display('Not valid j')
elseif M(i,j) ~= 0
    v=0
    display ('Entry already occupied')
else 
    v=1
    display ('Valid input')
end
    