function w = checkWin(M)

w = 0;

for i=1:3
    if sum(M(i,:)) == 3 || sum(M(:,i)) == 3 || sum(diag(M)) == 3 || sum(diag(fliplr(M))) == 3
        w = 1;
    elseif sum(M(i,:)) == -3 || sum(M(:,i)) == -3 || sum(diag(M)) == -3 || sum(diag(fliplr(M))) == -3
        w = -1;
    end
end