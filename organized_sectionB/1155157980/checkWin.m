function w = checkWin(M)
    w = 0;
    V = sum(M,1);
    H = sum(M,2);
    for i = 1:3
        if V(i) == 3 | H(i) == 3
            w = 1;
        end
        if V(i) == -3 | H(i) == -3
            w = -1;
        end
    end
    if M(1,1) + M(2,2) + M(3,3) == 3
        w = 1;
    end
    if M(1,1) + M(2,2) + M(3,3) == -3
        w = -1;
    end
    if M(1,3) + M(2,2) + M(3,1) == 3
        w = 1;
    end
    if M(1,3) + M(2,2) + M(3,1) == -3
        w = -1;
    end
end
