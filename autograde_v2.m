function autograde_v2(questionName)
    % Get the base directory
    baseDir = pwd;
   
    % Add all subdirectories to path to refer to testFunction and testCases
    addpath(genpath(baseDir));
   
    % Path to the folder containing student submissions of each section
    submissionsPath = fullfile(baseDir, 'organized_sectionC');
   
    % Check if submissions folder exists
    if ~exist(submissionsPath, 'dir')
        error('Cannot find submissions folder: %s', submissionsPath);
    end
   
    % Get all student folders
    folders = dir(submissionsPath);
    folderNames = {folders.name};
   
    % Remove some system folder by judging whether the name of file is
    % purely numeric string
    studentFolders = folderNames(cellfun(@(x) ~isempty(regexp(x, '^\d+$', 'once')), folderNames));
    numStudents = length(studentFolders);
   
    % Open results file
    timestamp = datestr(now, 'yyyymmdd-HHMMSS');
    resultsFid = fopen(fullfile(baseDir, ['grading_results_' questionName '_' timestamp '.csv']), 'w');
    fprintf(resultsFid, 'Student ID,Score\n');
   
    % Initialize results array
    results = struct('id', {}, 'score', {});
    
    % Grade each student
    for i = 1:numStudents
        studentId = studentFolders{i};
        studentPath = fullfile(submissionsPath, studentId);
        addpath(studentPath);
   
        try
            if ~exist(fullfile(studentPath, 'chutes_and_ladders.m'), 'file')
                fprintf('ERROR: chutes_and_ladders.m not found for student %s\n', studentId);
                score = 0;
            else
                disp(studentId);
                
                %% we revise the original code to add mock_randi function
                
                % Read and keep the original code for future restoration
                originalFile = fullfile(studentPath, 'chutes_and_ladders.m');
                originalCode = fileread(originalFile);
                
                % Prepare mock code
                mockCode = sprintf(['\n    global INPUT_VALUES INPUT_COUNTER;\n' ...
                                  '    INPUT_VALUES = [5 5 5 1 3 4 6 6 6 4 4 6 1 6 3 1 5 1 1 4 2 2 3 3 3 4 2 2 1 2 5 2 5 5 5 5 2 2 4 2 5 5 4 2 5 2 3 3 4 6 5 6 2 4 1 5 4 6 6 6 3];\n' ...
                                  '    INPUT_COUNTER = 1;\n\n' ...
                                  '    function val = mock_randi(a,b)\n' ...
                                  '        if nargin < 2\n'...
                                  '            b=0;\n'...
                                  '        end\n'...
                                  '        if INPUT_COUNTER > length(INPUT_VALUES)\n' ...
                                  '            error(''Ran out of test inputs - possible infinite loop'');\n' ...
                                  '        end\n' ...
                                  '        val = INPUT_VALUES(INPUT_COUNTER);\n' ...
                                  '        INPUT_COUNTER = INPUT_COUNTER + 1;\n' ...
                                  '    end\n\n' ...
                                  '    randi = @mock_randi;\n\n']);
                
                % Insert mock code after function declaration
                modifiedCode = regexprep(originalCode, ...
                    '(function\s+\w*\s*=\s*chutes_and_ladders\s*\(\s*\))', ...
                    ['$1' mockCode]);
                
                % Count and add missing 'end' statements if needed
                lines = strsplit(modifiedCode, '\n');
                controlCount = 0;
                for line = lines
                    cleanLine = strtrim(line{1});
                    
                    % Skip empty lines and comments
                    if isempty(cleanLine) || cleanLine(1) == '%'
                        continue;
                    end
                    
                    % Check for control structures but exclude elseif
                    if ~isempty(regexp(cleanLine, '^(function|while|for|switch)\b', 'once')) || ...
                       (~isempty(regexp(cleanLine, '^if\b', 'once')) && isempty(regexp(cleanLine, '^if\w+', 'once')))
                        controlCount = controlCount + 1;
                    end
                    
                    % Check for end statements
                    if ~isempty(regexp(cleanLine, '^end\b', 'once'))
                        controlCount = controlCount - 1;
                    end
                end
                
                
                % Add missing end statements if needed
                while controlCount > 0
                    modifiedCode = [modifiedCode '\nend'];
                    controlCount = controlCount - 1;
                end
                
                % For debugging purposes, save the modified code to a file
                if studentId == '1155202380'
                    fidDebug = fopen('debug.txt', 'w');
                    fprintf(fidDebug, '%s', modifiedCode);
                    fclose(fidDebug);
                end

                % Save modified code temporarily
                studentFid = fopen(originalFile, 'w');
                fprintf(studentFid, '%s', modifiedCode);
                fclose(studentFid);
                
                try
                    % Run the modified function
                    result = chutes_and_ladders();
                    if result == 61
                        score = 10;
                    else
                        score = 0;
                    end
                catch ME
                    fprintf('Error for student %s: Runtime error - %s\n', studentId, ME.message);
                    score = 0;
                end
                
                % Restore original file
                restoreFid = fopen(originalFile, 'w');
                fprintf(restoreFid, '%s', originalCode);
                fclose(restoreFid);
            end
        catch ME
            fprintf('Error for student %s: System error - %s\n', studentId, ME.message);
            score = 0;
        end
   
        % Remove the student's path from the MATLAB path
        rmpath(studentPath);
   
        % Save the result
        results(i).id = studentId;
        results(i).score = score;
        fprintf(resultsFid, '%s,%0.2f\n', studentId, score);
    end
   
    % Close the results file
    fclose(resultsFid);
   
    % Print summary
    fprintf('\nGRADING SUMMARY\n');
    fprintf('=====================================\n');
    for i = 1:numStudents
        fprintf('Student %s: %0.2f\n', results(i).id, results(i).score);
    end
    fprintf('\nResults have been saved to grading_results_%s_%s.csv\n', questionName, timestamp);
end