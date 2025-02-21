function n = chutes_and_ladders()
p=1;
n=0
global INPUT_VALUES INPUT_COUNTER;
INPUT_VALUES = [5 5 5 1 3 4 6 6 6 4 4 6 1 6 3 1 5 1 1 4 2 2 3 3 3 4 2 2 1 2 5 2 5 5 5 5 2 2 4 2 5 5 4 2 5 2 3 3 4 6 5 6 2 4 1 5 4 6 6 6 3];
INPUT_COUNTER = 1;
function val = mock_randi(~)
    
    if INPUT_COUNTER > length(INPUT_VALUES)+1
        error('Ran out of test inputs - possible infinite loop');
    end
    val = INPUT_VALUES(INPUT_COUNTER);
    INPUT_COUNTER = INPUT_COUNTER + 1;
end

randi = @mock_randi;
while p ~= 100
   n = n+1;
   d =  randi(6);
   p = p+d;
   if p > 100
       p = 100 - (p - 100);
   end;
   switch p;
       case 4
           p = 14;
       case 9
           p = 31;
       case 20
           p = 38;
       case 28
           p = 84;
       case 36
           p = 44;
       case 40
           p = 42;
       case 51
           p = 67;
       case 71
           p = 91;
       case 80
           p = 81;
       case 16
           p = 6;
       case 47
           p = 26;
       case 49
           p = 11;
       case 56
           p = 53;
       case 62
           p = 19;
       case 64
           p = 60; 
       case 87
           p = 24;
       case 93
           p = 73;
       case 95
           p = 75;
       case 98
           p = 78;
   end;
end
end

   