function w = checkWin(M)
   i = 1;
   
   while i <= 3
       if M(i,1) == M(i,2) == M(i,3) == 1
           w = 1;
           i = 4;
       else
           i = i+1;
       end
   end
    i = 1;
    while i <= 3
        if M(1,i) == M(2,i) == M(3,i) == 1
            w = 1;
            i = 4;
        else
           i = i+1;
        end
    end
     if M(1,1) == M(2,2) == M(3,3) == 1
         w = 1;
     end
     
     if M(1,3) == M(2,2) == M(3,1) == 1
         w = 1;
     end
     
    i = 1;
    while i <= 3
       if M(i,1) == M(i,2) == M(i,3) == -1
           w = -1;
           i = 4;
       else
           i = i+1;
       end
    end
    i = 1;     
    while i <= 3
        if M(1,i) == M(2,i) == M(3,i) == -1
            w = -1;
            i = 4;
        else
           i = i+1;
        end
    end
     if M(1,1) == M(2,2) == M(3,3) == -1
         w = -1;
     end
     
     if M(1,3) == M(2,2) == M(3,1) == -1
         w = -1;
         
     end
end