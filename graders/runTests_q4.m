function score = runTests_q4(testCases)

    % Define globals at the start of the main function
    global LAST_OUTPUT INPUT_VALUES INPUT_COUNTER;

    score = 0;
    pointsPerTest = 6/length(testCases);
    % Store original functions
    original_disp = @disp;
    original_input = @input;
    
    for i = 1:length(testCases)
        try
            % load test case
            current_test = testCases{i};
           
            % Initialize global variables for this test case
            LAST_OUTPUT = '';
            INPUT_VALUES = current_test.inputs;
            INPUT_COUNTER = 1;
            
            % Override disp and input globally
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
        
        % Restore original functions
        disp = original_disp;
        input = original_input;
    end
    
    % Clear global variables at the end
    clear global LAST_OUTPUT INPUT_VALUES INPUT_COUNTER;
end

% Helper functions to replace input and disp in students' script
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