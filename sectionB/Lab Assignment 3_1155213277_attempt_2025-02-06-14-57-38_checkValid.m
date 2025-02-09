function [M,i,j] = checkValid (M,i,j)
 
if
    if i < 1 || i > 3
    dsp(' Invalid i');
    v = 0;
    return;
    end;
else
    if j < 1 || j > 3
    disp(' Invalid j');
    v = 0;
    return;
    end;
else
    if M(i, j) ~= 0
    disp(' Already occupied');
    v=0;
    return;
    end;
     
else
    disp('Valid input');
    v=1;
end

