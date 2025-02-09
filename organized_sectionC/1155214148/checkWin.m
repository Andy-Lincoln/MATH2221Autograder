function w = checkWin(M)
S1=sum(M,1); S2=sum(M,2);
    if ismember(3,S1) || ismember(3,S2)
        w=1;
    elseif ismember(-3,S1) || ismember(-3,S2)
        w=-1;
    elseif sum(diag(M))==3 || sum(diag(flip(M)))==3
        w=1;
    elseif sum(diag(M))==-3 || sum(diag(flip(M)))==-3
        w=-1;
    else
        w=0;
    end
end