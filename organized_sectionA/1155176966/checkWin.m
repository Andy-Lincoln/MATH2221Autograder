function w = checkWin(M)
    Msum = [sum(M,1),reshape(sum(M,2),1,3),trace(M),M(3,1)+M(2,2)+M(1,3)];
    w = 0;
    for i = Msum
        if i == 3
            w = 1;
            break;
        elseif i == -3
            w = -1;
            break;
        end
    end   
end
    
    
        
