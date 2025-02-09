function v = checkValid(M,i,j)
    if i == 1 || i == 2 || i == 3
        if j == 1 || j == 2 || j == 3
            if(M(i,j) == 0)
                disp("Valid input");
                v = 1;
            else
                disp("Already occupied");
                v = 0;
            end
        else
            disp("Invalid j");
            v = 0;
        end
    else
        disp("Invalid i");
        v = 0;
    end
end
        