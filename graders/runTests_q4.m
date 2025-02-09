% filepath: /d:/MATH2221GradeScope/runTests_q4.m
function score = runTests_q4(testCases)
    score = 0;
    pointsPerTest = 6/length(testCases);
    
    % Store original functions
    original_disp = @disp;
    original_input = @input;
    
    for i = 1:length(testCases)
        try
            % Setup for capturing final output
            final_output = '';
            current_test = testCases{i};
            input_counter = 1;
            
            % Define global variables to store state
            global LAST_OUTPUT INPUT_VALUES INPUT_COUNTER;
            LAST_OUTPUT = '';
            INPUT_VALUES = current_test.inputs;
            INPUT_COUNTER = 1;
            
            % Override disp and input globally
            global custom_disp custom_input;
            disp = @test_disp;
            input = @test_input;
            
            % Run student's script
            run('q4.m');
            
            % Check final output
            if strcmp(strip(LAST_OUTPUT), strip(current_test.expected_output))
                score = score + pointsPerTest;
                fprintf('Test case %d: Passed\n', i);
            else
                fprintf('Test case %d: Failed - Expected "%s" but got "%s"\n', ...
                    i, current_test.expected_output, LAST_OUTPUT);
            end
            
        catch ME
            fprintf('Test case %d: Error - %s\n', i, ME.message);
        end
        
        % Restore original functions after each test
        disp = original_disp;
        input = original_input;
    end
    
    score = min(7, score);  % Cap at 7 marks
    clear global LAST_OUTPUT INPUT_VALUES INPUT_COUNTER;
end

% Helper functions defined outside main function
function test_disp(x)
    global LAST_OUTPUT;
    if ischar(x) || isstring(x)
        LAST_OUTPUT = char(x);
    end
end

function val = test_input(~)
    global INPUT_VALUES INPUT_COUNTER;
    val = INPUT_VALUES(INPUT_COUNTER);
    INPUT_COUNTER = INPUT_COUNTER + 1;
end