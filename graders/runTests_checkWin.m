function score = runTests_checkWin(testCases)
    numTests = length(testCases);
    pointsPerTest = 7/numTests;
    score = 0;
    
    for i = 1:numTests
        testCase = testCases{i};
        M = testCase{1};
        expected = testCase{2};
        
        try
            % Run student's function
            result = checkWin(M);
            
            % Check result
            if result == expected
                score = score + pointsPerTest;
                fprintf('Test %d: PASSED\n', i);
            else
                fprintf('Test %d: FAILED (got %d, expected %d)\n', i, result, expected);
            end
        catch ME
            fprintf('Test %d: ERROR - %s\n', i, ME.message);
        end
    end
    
    % Round to 2 decimal places
    score = round(score, 2);
    fprintf('Score: %0.2f/7\n', score);
end