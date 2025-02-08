% checkValid.m
function v = checkValid(M,i,j)
    if ~(i >= 1 && i <= 3 && floor(i) == i)
        disp("Invalid i")
        v = 0;
        return;
    elseif ~(j >= 1 && j <= 3 && floor(j) == j)
        disp("Invalid j")
        v = 0;
        return;
    elseif M(i,j)~=0
        disp("Already occupied")
        v = 0;
        return;
    else
        disp("Valid input")
        v = 1;
        return;
    end
end
%M = [0 0 1; 0 1 -1; 0 0 -1];
%checkValid(M, 1, 4)
%checkValid(M, 2, 2)
%checkValid(M, 3, 1)