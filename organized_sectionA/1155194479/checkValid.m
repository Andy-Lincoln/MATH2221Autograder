function v= checkValid(M,i,j);
% M=zeros(3,3);
if i~= 1 && 2 && 3
    disp('Invalid i');
    v=0;
elseif j~=1 && 2 && 3
        disp('Invalid j');
        v=0;
elseif M(i,j) ~=0
            disp('Already occupied');
            v=0;
else
            disp('Valid input');
            v=1;
end
end
        
  
    