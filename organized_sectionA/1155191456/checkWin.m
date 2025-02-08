function w = checkWin(M)
    for i = 1:3
        row = sum(M(i,:));
        if row == 3
            w = 1;
            return;
        elseif row == -3
            w = -1;
            return;
        end
    end
    
    for j = 1:3
        col = sum(M(:,j));
        if col == 3
            w = 1;
            return;
        elseif col == -3
            w = -1;
            return;
        end
    end
    
    diag1 = sum(diag(M));
    if diag1 == 3
        w = 1;
        return;
    elseif diag1 == -3
        w = -1;
        return;
    end
    
    diag2 = sum(diag(fliplr(M)));
    if diag2 == 3
        w = 1;
        return;
    elseif diag2 == -3
        w = -1;
        return;
    end
    
    w = 0;
end