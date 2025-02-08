%Calculate harmonic series and find the minimum n such that S_n >= 10

i = 0;
S = 0;

while S < 10
    i = i + 1; %update index
    S = S + 1/i; %perform summation
    %lastly check if S is too large, if yes, end the loop
end

disp(i);