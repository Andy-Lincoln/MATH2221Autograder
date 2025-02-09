M = zeros(3)
disp(M)
w = 0
n = 1
while w == 0 & n <= 9
    if mod(n,2) == 1
        disp('Player A:')
    else
        disp('Player B:')
    end
    
    i = input('Please input the desired row number: ')
    j = input('Please input the desired column number: ')
    
    
    if w == 0
       if checkValid(M,i,j)== 1
           if mod(n,2) == 1
              M(i,j) = 1;
           else
              M(i,j) = -1;
           end
           if checkWin(M)== 1
               w = 1;
              disp('Player A wins!')
           elseif checkWin(M)== -1
               w = -1;
               disp('Player B wins!')
           end
           
   
       else
           disp('Invalid input')

           w = 0;
       end
    end
    n = n+1;
end
 
