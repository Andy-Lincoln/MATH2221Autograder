function w=checkWin(M)
w=0;
if sum(M(1,:))==3
    disp('Player A wins');
    w=1;
elseif sum(M(1,:))==-3
    disp('Player B wins');
    w=-1;
elseif sum(M(2,:))==3
    disp('Player A wins');
    w=1;
elseif sum(M(2,:))==-3
    disp('Player B wins');
    w=-1;
elseif sum(M(3,:))==3
    disp('Player A wins');
    w=1;
elseif sum(M(3,:))==-3
    disp('Player B wins');
    w=-1;
elseif sum(M(:,1))==3
    disp('Player A wins');
    w=1;
elseif sum(M(:,1))==-3
    disp('Player B wins');
    w=-1;
elseif sum(M(:,2))==3
    disp('Player A wins');
    w=1;
elseif sum(M(:,2))==-3
    disp('Player B wins');
    w=-1;
elseif sum(M(:,3))==3
    disp('Player A wins');
    w=1;
elseif sum(M(:,3))==-3
    disp('Player B wins');
    w=-1;
elseif sum([M(1,1),M(2,2),M(3,3)])==3
    disp('Player A wins');
    w=1;
elseif sum([M(1,1),M(2,2),M(3,3)])==-3
    disp('Player B wins');
    w=-1;
elseif sum([M(1,3),M(2,2),M(1,3)])==3
    disp('Player A wins');
    w=1;
elseif sum([M(1,3),M(2,2),M(1,3)])==-3
    disp('Player B wins');
    w=-1;
else
    disp('none of the players wins')
end
end
