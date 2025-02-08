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

