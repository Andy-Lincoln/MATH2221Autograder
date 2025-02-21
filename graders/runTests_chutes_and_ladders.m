function score = runTests_chutes_and_ladders(testCases)
    % Initialize score
    score = 0;
    maxScore = 7;
    
    try
        % Read original student file
        studentFile = 'chutes_and_ladders.m';
        originalCode = fileread(studentFile);
        
        % Create mock code to insert
        mockCode = sprintf(['global INPUT_VALUES INPUT_COUNTER;\n' ...
                          'INPUT_VALUES = [5 5 5 1 3 4 6 6 6 4 4 6 1 6 3 1 5 1 1 4 2 2 3 3 3 4 2 2 1 2 5 2 5 5 5 5 2 2 4 2 5 5 4 2 5 2 3 3 4 6 5 6 2 4 1 5 4 6 6 6 3];\n' ...
                          'INPUT_COUNTER = 1;\n\n' ...
                          'function val = mock_randi(~)\n' ...
                          '    global INPUT_VALUES INPUT_COUNTER;\n' ...
                          '    if INPUT_COUNTER > length(INPUT_VALUES)\n' ...
                          '        error(''Ran out of test inputs - possible infinite loop'');\n' ...
                          '    end\n' ...
                          '    val = INPUT_VALUES(INPUT_COUNTER);\n' ...
                          '    INPUT_COUNTER = INPUT_COUNTER + 1;\n' ...
                          'end\n\n' ...
                          'randi = @mock_randi;\n\n']);
        
        % Insert mock code at the beginning of the function body
        modifiedCode = regexprep(originalCode, ...
            'function\s+\w*\s*=\s*chutes_and_ladders\s*\(\s*\)\s*', ...
            ['function n = chutes_and_ladders()\n' mockCode]);
        
        % Write modified code to temporary file
        tempFile = 'temp_chutes_and_ladders.m';
        fid = fopen(tempFile, 'w');
        fprintf(fid, '%s', modifiedCode);
        fclose(fid);
        
        % Run modified function
        result = temp_chutes_and_ladders();
        
        % Check result
        if result == 61
            score = maxScore;
        end
        
        % Clean up
        delete(tempFile);
        
    catch ME
        fprintf('Error: %s\n', ME.message);
        score = 0;
    end
end
