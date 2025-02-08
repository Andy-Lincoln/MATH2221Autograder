 x_=zeros(100,1);
 x_(1)=1;
 
 for n=2:100
     x_(n)=x_(n-1)/2+n^2;
 end
 x_(100)
