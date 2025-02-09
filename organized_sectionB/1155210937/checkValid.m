function v=checkValid(M,i,j)
    if i~=1 && i~=2 && i~=3
        display("Invalid i");
        v=0;
        return
    elseif j~=1 && j~=2 && j~=3
        display("Invalid j");
        v=0;
        return
    elseif M(i,j)~=0
        display("Already occupied");
        v=0;
        return
    else
        display("Valid input");
        v=1;
        return
    end
end