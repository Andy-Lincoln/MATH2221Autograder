disp(M);
w=0
n=1
if mod(n,2)==1,
    disp('Player A:,i=input('Please input the desired row number:','Please input the desire coloum number:')
    
elseif mod(n,2)==0,
    disp('Player B:,i=input('Please input the desired row number:','Please input the desire coloum number:')
    v=checkValid_213117(M,i,j)
    w=checkWin_213117(M)
    if w=1,
        disp('Player A wins!')
    elseif w=-1,
        disp('Player B wins!')
    else n=n+1
       
       
