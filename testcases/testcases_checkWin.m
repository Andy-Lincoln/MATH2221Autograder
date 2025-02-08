function testCases = testcases_checkWin()
    testCases = {
        % No winner
        {[0 1 -1; 
          -1 1 0; 
          1 -1 0], 0};
        
        % Row win for player 1
        {[1 1 1; 
          0 -1 -1; 
          0 0 0], 1};
        
        % Column win for player -1
        {[1 -1 0; 
          0 -1 1; 
          1 -1 0], -1};
        
        % Main diagonal win for player 1
        {[1 -1 0; 
          -1 1 0; 
          0 0 1], 1};
        
        % Anti-diagonal win for player -1
        {[1 0 -1; 
          0 -1 1; 
          -1 0 0], -1};
        
        % Test case from the question
        {[1 1 1; 
          0 1 -1; 
          -1 0 -1], 1};
        
        % Full board with winner
        {[1 1 -1; 
          -1 1 0; 
          -1 1 0], 1}
    };
end
