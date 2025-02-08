n=0;
Sn=0;
while Sn <10
n=n+1;  
Sn=Sn+1/n;
end
n=n-1
fprintf('The smallest n such that Sn >=10 is:%d\n',n);