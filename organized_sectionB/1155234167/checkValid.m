function v=checkValid(M,i,j)
a='Invalid i';
b='Invalid j';
c='Alreday occupied';
d='Valid input';
if i~=1&i~=2&i~=3
    disp(a)
    v=0;
else if j~=1&j~=2&j~=3
        disp(b)
        v=0;
    else if M(i,j)~=0
            disp(c)
            v=0;
        else disp(d)
            v=1;
        end
    end
end
end