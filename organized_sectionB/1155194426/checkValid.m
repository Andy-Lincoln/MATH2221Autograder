function v=checkValid(M,i,j)
if i<1
    display('Invalid i')
    v=0;
elseif i>3
    display('Invalid i')
    v=0;
elseif j<1
    display('Invalid j')
    v=0;
elseif j>3
    display('Invalid j')
    v=0;
elseif M(i,j)~=0
    display('Already occupied')
    v=0;
else
    display('Valid input')
    v=1;
end
end
