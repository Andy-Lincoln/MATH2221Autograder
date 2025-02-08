S_n=0;
n=0;
while S_n <10
n=n+1;
S_n=S_n+1/n;
end
fprintf('The smallest n such that S_n>=10 is:%d\n',n);
