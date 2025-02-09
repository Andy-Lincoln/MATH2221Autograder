function w = checkWin(M)
A = sum(M,1);
B = sum(M,2);
if (ismember(3,A) || ismember(3,B))
    w = 1;
    elseif (ismember(-3,A) || ismember(-3,B))
        w = -1;
        elseif (( M(1,1) + M(2,2) + M(3,3)) == 3)||(( M(1,3) + M(2,2) + M(3,1)) == 3)
            w = 1;
            elseif (( M(1,1) + M(2,2) + M(3,3)) == -3)||(( M(1,3) + M(2,2) + M(3,1)) == -3)
                    w = -1;
                else
                    w = 0;
end
