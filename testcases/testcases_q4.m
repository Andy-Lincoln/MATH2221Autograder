% filepath: /d:/MATH2221GradeScope/testcases_q4.m
function testCases = testcases_q4()
    testCases = {
        % Test case 1: Player A wins (diagonal)
        struct('inputs', [1,1, 2,2, 1,2, 2,1, 1,3], ...
               'expected_output', 'Player A wins!');
        
        % Test case 2: Player B wins (horizontal)
        struct('inputs', [1,1, 2,1, 1,2, 2,2, 3,3, 2,3], ...
               'expected_output', 'Player B wins!');
        
        % Test case 3: Draw game
        struct('inputs', [1,1, 1,2, 2,2, 2,1, 1,3, 3,3, 2,3, 3,1, 3,2], ...
               'expected_output', 'The game has reached a draw')
    };
end

% Here we define struct array testCases with 3 test cases. 
% Each struct has two fields: inputs and expected_output.