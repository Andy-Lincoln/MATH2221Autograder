function v = checkValid(M,i,j)
if i ~= 1 && i ~= 2 && i ~= 3
    disp('Invalid i');
    v = 0;
elseif j ~= 1 && j ~= 2 && j ~= 3
    disp('Invalid j');
    v = 0;
elseif M(i,j) ~= 0
    disp('Already occupied');
    v = 0;
else disp('Valid input');
    v = 1;
end
end