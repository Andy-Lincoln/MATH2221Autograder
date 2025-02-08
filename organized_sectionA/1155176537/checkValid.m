function v=checkValid(M,i,j)
I='Invalid i';
J='Invalid j';
A='Already occuipied';
V='Valid input';

if i~=[1 2 3]
    disp(I);
    v=0;
elseif j~=[1 2 3]
        disp(J);
        v=0;
elseif M(i,j)~=0
            disp(A);
            v=0;
else
            disp(V);
            v=1;
end

       
            