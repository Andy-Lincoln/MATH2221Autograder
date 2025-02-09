s=0;
for n=1:100
    s=s+(n/2+log10(n));
end
y=0;
for m=1:99
    y=y+(n/2+log10(m));
end
s-y