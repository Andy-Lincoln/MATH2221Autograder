function w = checkWin(M)
if sum(M,1) == 3*ones(3,1)||sum(M,2) == 3*ones(1,3)||trac(M) == 3||M(1,3)+M(2,2)+M(3,1) == 3
    w = 1;
elseif sum(M,1) == -3*ones(3,1)||sum(M,2) == -3*ones(1,3)||trac(M) == -3|| trac(M) == 3||M(1,3)+M(2,2)+M(3,1) == -3
    w = -1;
else
    w = 0;
end
end
