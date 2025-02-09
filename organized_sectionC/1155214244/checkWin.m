function w = checkWin(M)
diag = M(1,1) + M(2,2) + M(3,3);
if diag == 3
    w = 1;
    return
elseif diag == -3
    w = -1;
    return
end
for i = 1:3
    if sum(M(i,:)) == 3
        w = 1;
        return
    elseif sum(M(i,:)) == -3
        w = -1;
        return
    for j = 1:3
        if sum(M(:,j)) == 3
            w = 1;
            return
        elseif sum(M(:,j)) == -3
            w = -1;
            return 
        end
    end
    w = 0;
    return
        
    end
end
            