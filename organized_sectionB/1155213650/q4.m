M= zeros(3);
w=0;
n=1
while w=0 & n<=9
    if n is odd
        disp("Player A");
        if n is even
            disp("Player B");
            
           i = input('Please input the desired row number: ');
           j = input('Please input the desired column number: ');
           
function v = checkValid(M,i,j)
if i~=1& i~=2& i~=3
    disp("Invalid i");
    v=0;
elseif j~=1&j~=2&j~=3
    disp("Invalid j");
    v=0;
elseif M(i,j)~=0
        disp("Already occupied");
        v=0;
    else
        disp("Valid input");
        v=1;
end
end



function w =checkWin(M)
if sum(M,1)=3 | sum(M,2)=3 |diag(M)=3
    w=1; 
elseif sum(M,1)=-3|sum(M,2)=-3|diag(M)=-3 
    w=-1;
else
    w=0;
end 
end
if w=1
    disp("Player A wins!");
    if w= -1
        disp("Player B wins!");
    else n=n+1
    end
end
if w=0
    disp("The game has reached a draw")
end