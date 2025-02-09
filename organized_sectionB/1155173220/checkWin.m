function w = checkWin(M)
    A = sum(M,1);
    B = transpose(sum(M,2));
    C = M(1,1) + M(2,2) + M(3,3);
    D = M(1,3) + M(2,2) + M(3,1);
    sums = [A B C D];
    w = 0;
    for i = sums
        if i == 3
            w = 1;
            break;
        elseif i == -3
            w = -1;
            break;
        end
    end
end