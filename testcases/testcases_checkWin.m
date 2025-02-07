function testCases = test_checkWin()
    testCases = {
        % No winner
        {[0 0 0; 0 0 0; 0 0 0], 0};
        % Row win for player 1
        {[1 1 1; 0 0 0; 0 0 0], 1};
        % Column win for player -1
        {[-1 0 0; -1 0 0; -1 0 0], -1};
        % Diagonal wins...
        % ... add more test cases ...
    };
end