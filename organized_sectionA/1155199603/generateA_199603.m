function A=generateA_199603(m,n)
A=zeros(m,n);
 for i=1:3
      for j=1:4
          if mod(i+j,3)==0
              A(i,j)=1;
          else
              A(i,j)=-1;
          end
      end
 end
 A
end


