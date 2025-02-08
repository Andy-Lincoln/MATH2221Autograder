M=zeros(3,3);
disp('M')
w=0;
if mod(n,2)==1
    disp('Player A');
else if mod(n,2)==0
    disp('Player B');
i=input('Please input the desired row number:');
j=input('Please input the desired column number:');
    end
end
function v=checkValid(M,i,j)
M=[0 0 1;0 1 -1;0 0 -1];
if i<1 || i>3
    disp('Invalid i');
    v=0;
else if j<1 || j>3
        disp('Invalid j');
        v=0;
    else if M(i,j)~=0
            disp('Aleardy occupied');
            v=0;
        else
            disp('Valid input');
            v=1;
        end
    end
end
end
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
if w==1
    disp('Player A wins!');
else if w==-1
        disp('Player B wins!');
    else disp('The game has reached a draw')
    end
end
end
