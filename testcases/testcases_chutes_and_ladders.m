% filepath: /d:/MATH2221GradeScope/testcases_q4.m
function testCases = testcases_chutes_and_ladders()
    testCases = {
        % Test case 1: 
        struct('inputs', [3 4 4 5 4 6 2 5 2 1 4 3 3 4 5 3 4 3 6 5 2 4 4 4 6 2 2 1 6 4 3 4 4 4 4 5 4 6], ...
               'expected_output', 38);
        
        % Test case 2: 
        struct('inputs', [3 5 6 3 6 6 4], ...
               'expected_output', 7);
        
        % Test case 3: 
        struct('inputs', [2 1 1 1 3 3 3 5 4 5 6 6 2 1 5 1 4 4 6 3 3 5 5 4 3 1 4 2 1 5 2 3 5 3 5 3 5 5,...
        3 1 2 3 2 2 5 3 6 3 5 3 5 5 3 2 5 6 2 5 3 6 5 2 6 6 4 6 4 1 2 3 5 5 5 2 4 1 1 1 5 3 2 3 1 1 6 4,...
        6 5 4 5 6 6 1 6 4 6 4 3 5 2 3 6 4 6 5 4 2 4 1 4 4 5 6 6 5 4 6 4 1 1 6 3 6 2 4 4], ...
               'expected_output', 126);

        % Test case 4: 
        struct('inputs', [5 3 5 3 6 6 6 3 3 2 5 6 6 4 4 1 6 3 2 6 5 6 2 5 4],...
                'expected_output', 25);

        % Test case 5:
        struct('inputs', [5 5 5 1 3 4 6 6 6 4 4 6 1 6 3 1 5 1 1 4 2 2 3 3 3 4 2 2 1 2 5 2 5 5 5 5,...
        2 2 4 2 5 5 4 2 5 2 3 3 4 6 5 6 2 4 1 5 4 6 6 6 3],...
                'expected_output', 61)


    };
end



