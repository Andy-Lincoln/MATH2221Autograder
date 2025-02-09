M = zeros(3,3);
disp(M);
w = 0;
n = 1;
while (w == 0) && (n <= 9)
    if mod(n,2)
        disp("Player A:");
    else 
        disp("Computer:");
    end
    if mod(n,2)
        i = input('Please input the desired row number:  ');
        j = input('Please input the desired column number:  ');
        while v ~= checkValid(M,i,j)
            i = input('Please input the desired row number:  ');
            j = input('Please input the desired column number:  '); 
        end
        M(i,j) = 1;
    else
        p = 1;
        for i = 1:3
            for j = 1:3
                if M(i,j) == 0
                    M(i,j) = 1;
                    b = checkWin(M);
                    if b == 1
                        M(i,j) = -1;
                        disp(['Pick M(' num2str(i) ',' num2str(j) ').' ]);
                        p = 0;
                    else
                        M(i,j) = 0;
                    end        
                end
                if p == 0
                    break;
                end
            end
            if p == 0
                break;
            end
        end
        
        for i = 1:3
            for j = 1:3
                if M(i,j) == 0
                    M(i,j) = -1;
                    b = checkWin(M);
                    if b == -1
                        M(i,j) = -1;
                        disp(['Pick M(' num2str(i) ',' num2str(j) ').' ]);
                        p = 0;
                    else
                        M(i,j) = 0;
                    end        
                end
                if p == 0
                    break;
                end
            end
            if p == 0
                break;
            end
        end
        
        piority = [5,1,3,7,9,2,4,6,8];
        index = 1;
        while p == 1
            i = (piority(index) - mod(piority(index),3))/3+1;
            if i == 4
                i = 3;
            end

            j = mod(piority(index),3);
            if j == 0
                j = 3;
            end

            if M(i,j) == 0
                M(i,j) = -1;
                disp(['Pick M(' num2str(i) ',' num2str(j) ').' ]);
                p = 0;
            end
            index = index + 1;
        end
        
        
    end
    disp(M);
    w = checkWin(M);
    if w == 1
        disp('Player A wins!');
    elseif w == -1
        disp('Computer wins!');
    else
        n = n+1;
    end
    
end
if w == 0
    disp('The game has reached a draw');
end