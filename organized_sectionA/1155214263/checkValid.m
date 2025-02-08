function v=checkValid(~,i,j)

M=zeros(3);
if i<1 || i>3 
    disp('Invalid i'), v=0;
else if j<1 || j>3
    disp('Invalid j'), v=0;
    else if M(i,j)<0 || M(i,j)>0
    disp('Already occupied'), v=0;
else
    v=1;
        end
    end
end
end