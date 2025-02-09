function w = checkWin(M)
function s1 = sum(M,1)
function s2 = sum(M,2)
function s3 = trace(M)
if s1 == 3
    dis('Player A wins')
    if s1 == -3
        dis('Player B wins')
        if s2 == 3
            dis('Player A wins')
            if s2 == -3
                dis('Player B wins')
                if s3 == 3
                    dis('Player A wins')
                    if s3 == -3
                        dis('Player B wins')
                    end
                end
            end
        end
    end
end

           
    
