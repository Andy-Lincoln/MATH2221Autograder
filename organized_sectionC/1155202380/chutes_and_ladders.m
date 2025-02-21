function n = chutes_and_ladders()
 p=1;
 n=0;
 global INPUT_VALUES INPUT_COUNTER;
    INPUT_VALUES = [2 1 1 1 3 3 3 5 4 5 6 6 2 1 5 1 4 4 6 3 3 5 5 4 3 1 4 2 1 5 2 3 5 3 5 3 5 5 3 1 2 3 2 2 5 3 6 3 5 3 5 5 3 2 5 6 2 5 3 6 5 2 6 6 4 6 4 1 2 3 5 5 5 2 4 1 1 1 5 3 2 3 1 1 6 4 6 5 4 5 6 6 1 6 4 6 4 3 5 2 3 6 4 6 5 4 2 4 1 4 4 5 6 6 5 4 6 4 1 1 6 3 6 2 4 4];
    INPUT_COUNTER = 1;
    randi = @mock_randi;
 while p~=100
     p = randi([1,6])+p;
     n=n+1;
     if p>100
         p=200-p;
     end
     if p == 4
         p=14;
     end
     if p == 9
         p=31;
     end
      if p == 20
         p=38;
      end
      if p == 28
         p=84;
      end
     if p == 36
         p=44;
     end
     if p == 40
         p=42;
     end
     if p == 51
         p=67;
     end
     if p == 71
         p=91;
     end
     if p == 80
         p=81;
     end
     if p == 16
         p=6;
     end
     if p == 47
         p=26;
     end
     if p == 49
         p=11;
     end
     if p == 56
         p=53;
     end
     if p == 62
         p=19;
     end
     if p == 64
         p=60;
     end
     if p == 87
         p=24;
     end
     if p == 93
         p=73;
     end
     if p == 95
         p=75;
     end
     if p == 98
         p=78;
     end
 end
end
function val = mock_randi(~)
    global INPUT_VALUES INPUT_COUNTER;
    if INPUT_COUNTER > length(INPUT_VALUES)+1
        error('Ran out of test inputs - possible infinite loop');
    end
    val = INPUT_VALUES(INPUT_COUNTER);
    INPUT_COUNTER = INPUT_COUNTER + 1;
end