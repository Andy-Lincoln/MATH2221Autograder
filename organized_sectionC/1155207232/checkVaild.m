function v = checkVaild(M,i,j)
if i~=1&&i~=2&&i~=3
    disp("Invalid i");
    v=0;
elseif j~=1&&j~=2&&j~=3
    disp("Invalid i");
    v=0;
elseif M(i,j)~=0
    disp("AALready occupied");
    v=0;
else
    disp("valid input");
    v=1;
end
  