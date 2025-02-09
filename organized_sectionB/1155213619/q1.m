function x = q1(targetTerm)
    x1 = 1;
    currentTerm=x1;

    for n=2:targetTerm
        currentTerm = currentTerm/2+sqrt(n);
    end
    x=currentTerm;
end
