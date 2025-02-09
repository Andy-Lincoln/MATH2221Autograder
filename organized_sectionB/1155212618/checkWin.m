% function w = checkWin(M)
%     w = 0;
%     u = sum(M,1);
%     v = sum(M,2);
%     x = trace(M);
%     y = M(1,3) + M(2,2) + M(3,1);
%     z = [u,v',x,y];
% 
%     while w == 0
%         for i = 1:8
%             if z(i) == 3
%                 w = 1;
%             elseif z(i) == -3
%                 w = -1;
%             else w = 0;
% 
%             end
%         end
%     end
% end
