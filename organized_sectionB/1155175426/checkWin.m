function w = checkWin(M)
    colsum = sum(M,1)
    rowsum = sum(M,2)
    if any(colsum == 3) || any(rowsum == 3) || sum(diag(M)) == 3 || sum(diag(fliplr(M))) == 3 % Player A wins
        w = 1
    elseif any(colsum == -3) || any(rowsum == -3) || sum(diag(M)) == -3 || sum(diag(fliplr(M))) == -3 % Player B wins
        w = -1
    else
        w = 0
    end
end