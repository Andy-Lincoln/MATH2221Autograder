% function n = chutes_and_ladders()
% 
% b=1;
% n=1;
% while b <= 100
% d=randi([1,6],1);
% b=b+d;
% if b+d>100
%     b=200-(d+b);
% end
% if b==4
%     b=14;
% elseif b==9
%         b=31;
% elseif b==20
%     b=38;
% elseif b==28
%     b=84;
% elseif b==36
%     b=44;
% elseif b==40
%     b=42;
% elseif b==51
%     b=67;
% elseif b==71
%     b=91;
% elseif b==80
%     b=81;
% elseif b==16
%     b=6;
% elseif b==47
%     b=26;
% elseif b==49
%     b=11;
% elseif b==56
%     b=53;
% elseif b==62
%     b=19;
% elseif b==64
%     b=60;
% elseif b==87
%     b=24;
% elseif b==93
%     b=73;
% elseif b==95
%     b=75;
% elseif b==98
%     b=78;
% end
% n=n+1;
% end
% n