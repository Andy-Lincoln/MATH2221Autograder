function n = chutes_and_ladders()
board = containers.Map('KeyType', 'double', 'ValueType', 'double');
board(4)= 14;
board(9)= 31;
board(20)= 38;
board(28)= 84;
board(36)= 44;
board(40)= 42;
board(51)= 67;
board(71)= 91;
board(80)= 81;

board(16)= 6;
board(47)= 26;
board(49)= 11;
board(56)= 53;
board(62)= 19;
board(64)= 60;
board(87)= 24;
board(93)= 73;
board(95)= 75;
board(98)= 78;

position = 1;
n=0;

    while position ~= 100
        roll = randi(6);
        n=n+1;
        new_position = position + roll;
    
        if new_position >100
            new_position = 100 - (new_position - 100);
        end
    
        if isKey(board, new_position)
            new_position = board(new_position);
        end
        position = new_position;
    end
end
    