function w = checkWin(M)
    col = sum (M,1);
    row = sum (M,2);
    diag1 = M(1,1) + M(2,2) + M(3,3);
    diag2 = M(1,3) + M(2,2) + M(3,1);
    if col(1,1) == 3
        w = 1;
    elseif col(1,2) == 3
        w = 1;
    elseif col(1,3) == 3
        w = 1;
    elseif col(1,1) == -3
        w = -1;
    elseif col(1,2) == -3
        w = -1;
    elseif col(1,3) == -3
        w = -1;
    elseif row(1,1) == 3
        w = 1;
    elseif row(2,1) == 3
        w = 1;
    elseif row(3,1) == 3
        w = 1;
    elseif row(1,1) == -3
        w = -1;
    elseif row(2,1) == -3
        w = -1;
    elseif row(3,1) == -3
        w = -1;
    elseif diag1 == 3
        w = 1;
    elseif diag1 == -3
        w = -1;
    elseif diag2 == 3
        w = 1;
    elseif diag2 == -3
        w = -1;
    else
        w = 0;
    end