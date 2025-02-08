% checkWin.m
function w = checkWin(M)

    for i = 1:3
        if sum(M(i,:)) == 3
            w = 1;
            return;
        elseif sum(M(i,:)) == -3
            w = -1;
            return;
        end
    end

    for j = 1:3
        if sum(M(:,j)) == 3
            w = 1;
            return;
        elseif sum(M(:,j)) == -3
            w = -1;
            return;
        end
    end
    
    if sum(diag(M)) == 3 || sum(diag(fliplr(M))) == 3
        w = 1;
        return;
    elseif sum(diag(M)) == -3 || sum(diag(fliplr(M))) == -3
        w = -1;
        return;
    end
    
    w = 0;
end
% M = [1 1 1; 0 1 -1; -1 0 -1];
% checkWin(M)