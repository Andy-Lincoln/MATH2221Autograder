function w = checkWin(M)
   sum_row = sum(M');
   sum_col = sum(M);
   sum_dia = [ 0 0 0 ]; 
   sum_dia(1) = sum(diag(M));
   sum_dia(2) = sum(diag(fliplr(M)));
        for i = 1:3

            if (sum_row(i) == 3) | (sum_col(i) == 3) | (sum_dia == 3)
                w = 1;
            elseif (sum_row(i) == -3) | (sum_col(i) == -3) | (sum_dia == -3)
                w = -1;
            else
            
            end
        end
        if (sum_row ~= -3 | 3) & (sum_col ~= -3 | 3) & (sum_dia ~= -3 | 3)
            w = 0;
        end
end
        
        