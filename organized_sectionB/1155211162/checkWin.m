function [w] = checkWin(M)
sumrow = sum(M,2).';
sumcol = sum(M,1);
sumdiag = [M(1,1)+M(2,2)+M(3,3) , M(1,3)+M(2,2)+M(3,1)];
sums = [sumrow, sumcol, sumdiag];
% Check for player A
if sum((sums == 3*ones(1,8))) ~= 0
    w = 1;
    return
end
if sum((sums == -3*ones(1,8))) ~= 0
    w = -1;
    return
end
w = 0;
end

