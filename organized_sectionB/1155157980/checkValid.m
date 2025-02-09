% function v = checkValid(M,i,j)
%     v = 1;
%     errorcase = 0;
%     if (i ~= 1) & (i ~= 2) & (i ~= 3)
%         errorcase = 1;
%     end
%     if (j ~= 1) & (j ~= 2) & (j ~= 3)
%         errorcase = 2;
%     end
%     if errorcase ==0
%         if M(i,j) ~= 0
%             errorcase = 3;
%         end
%     end
%     if errorcase == 1
%         disp('Invalid i');
%         v = 0;
%     end
%     if errorcase == 2
%         disp('Invalid j');
%         v = 0;
%     end
%     if errorcase == 3
%         disp('Already occupied');
%         v = 0;
%     end
%     if v == 1
%         disp('Valid input');
%     end
% end
% 
