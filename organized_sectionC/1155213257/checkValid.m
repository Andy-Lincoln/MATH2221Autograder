
M=[0,0,1;0,1,-1;0,0,-1]
i=input('row=');j=input('column=');
 if i~=1:3
      disp('Invalid i')
      v=0;
      else if j~=1:3
       disp('Invalid j')
       v=0;
      else if M(i,j)~=0
       disp('Already occupied')
       v=0;
       else
         disp('Valid input')
       v=1
          
          end
          end
 end
