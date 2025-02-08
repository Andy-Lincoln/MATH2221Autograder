function w=checkWin(M)
if sum(M(1,:))== 3
        w=1;
    else if sum(M(1,:))== -3
            w=-1;
        else if sum(M(:,1))== 3
                w=1;
                else if sum(M(:,1))== -3
                w=-1;
                    else if trace(M)==3
                            w=1;
                        else if trace(M)==-3
                                w=-1;
                    else
                        w=0;
                        
                    end
            end
        end
end
end
end
                 
                      