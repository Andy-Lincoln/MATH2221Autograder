function w = checkWin(M)
   
    rowSums = sum(M, 2);  
    colSums = sum(M, 1); 

    
    mainDiagSum = sum(diag(M));          
    antiDiagSum = sum(diag(flipud(M)));  

   
    if any(rowSums == 3) || any(colSums == 3) || mainDiagSum == 3 || antiDiagSum == 3
        w = 1;
        return;
    end

    
    if any(rowSums == -3) || any(colSums == -3) || mainDiagSum == -3 || antiDiagSum == -3
        w = -1;
        return;
    end

   
    w = 0;
end

