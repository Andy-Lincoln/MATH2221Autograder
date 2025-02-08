function[w] = checkWin(M)
for k = 1:3
    if sum(M(k,:)) == 3
        w = 1;
        return;
    elseif sum(M(k,:)) == -3
        w = -1;
        return;
    elseif sum(M(:,k)) == 3
        w = 1;
        return;
    elseif sum(M(:,k)) == -3
        w = -1;
        return;
    end
end
if trace(m) == 3
    w = 1;
    return;
elseif trace(m) == -3
    w = -1;
    return;
elseif sum(diag(flip(M))) == 3
    w = 1;
    return;
elseif sum(diag(flip(M))) == -3
    w = -1;
    return;
end
end
    
