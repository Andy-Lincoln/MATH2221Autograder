M=zeros(3,3)
w=0
n=1
while w=0 && n<=9
    if mod(n,2)=1
    diap{'Player A');
    elseif mod(n,2)=0
     diap{'Player B');
    end
    i=input('Please input the desired row number: ');
    j=input('Please input the desired column number: ');
v=checkValid(M);
disp(M);
w=checkWin(M);
if w=1
    disp('Player A wins!');
elseif w=-1
    disp('Player B wins!');
else
    
if w=0
    disp(' The game has reached a draw')
end
end
end

