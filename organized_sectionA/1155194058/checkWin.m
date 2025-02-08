%Function to check if a player wins
function w = checkWin(M)
    w = 0;
    %1. Check for rows
    row_sum = sum(M,2);
    if ismember(3,row_sum)
        w = 1;
    elseif ismember(-3,row_sum)
        w = -1;
    end
    
    %2. Check for columns
    col_sum = sum(M,1);
    if ismember(3,col_sum)
        w = 1;
    elseif ismember(-3,col_sum)
        w = -1;
    end
    
    %3. Check for diagonals: left and right
    left_diag_sum = M(1,1) + M(2,2) + M(3,3);
    right_diag_sum = M(1,3) + M(2,2) + M(3,1);
    if ismember(3,left_diag_sum)
        w = 1;
    elseif ismember(-3,left_diag_sum)
        w = -1;
    elseif ismember(3,right_diag_sum)
        w = 1;
    elseif ismember(-3,right_diag_sum)
        w = -1;
    end
end
    