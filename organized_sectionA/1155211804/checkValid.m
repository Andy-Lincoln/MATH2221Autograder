if i>3
    disp('Invalid i');
    v=0;
elseif j>3
    disp('Invalid j');
    v=0;
elseif M(i,j)~=0
    disp('Already occupied');
    v=0;
else
    disp('Valid input');
    v=1;
end
v