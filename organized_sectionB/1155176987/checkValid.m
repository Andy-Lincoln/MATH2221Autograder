function v = checkValid(M,i,j)
M = (0,1,-1)
    if  i ~= 1
        dis('Invalid i'); reture v = 0;
        if i ~= 2
            dis('Invalid i'); reture v = 0;
            if i ~= 3
                dis('Invalid i'); reture v = 0;
                if  j ~= 1
                    dis('Invalid i'); reture v = 0;
                     if j ~= 2
                         dis('Invalid i'); reture v = 0;
                         if j ~= 3
                           dis('Invalid i'); reture v = 0;
                           if M(i,j) ~= 0
                               dis('Already occupied'); reture v = 0;
                           else dis('Valid input'); reture v = 1
                           end
                         end
                     end
                end
            end
        end
    end
end
                     
            
