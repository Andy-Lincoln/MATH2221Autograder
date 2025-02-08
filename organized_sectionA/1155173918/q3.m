% q3.m
s = 0;
cnt = 0;
while s < 10
    cnt = cnt + 1;
    s = s + 1/cnt; 
end
disp(cnt), disp(s)