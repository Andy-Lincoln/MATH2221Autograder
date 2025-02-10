function autograde(questionName)
    % Usage: autograde('checkValid') or autograde('checkWin') or
    % autograde('q4')
    
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
    
    % remoce some system folder by judging whether the name of file is
    % purely numeric string
    studentFolders = folderNames(cellfun(@(x) ~isempty(regexp(x, '^\d+$', 'once')), folderNames));
    numStudents = length(studentFolders);
    
    % Load test cases
    testCasesFunc = str2func(['testcases_' questionName]);
    testCases = testCasesFunc();
    
    % Open results file
    timestamp = datestr(now, 'yyyymmdd-HHMMSS');
    fid = fopen(fullfile(baseDir, ['grading_results_' questionName '_' timestamp '.csv']), 'w');
    fprintf(fid, 'Student ID,Score\n');
    
    % Initialize results array
    results = struct('id', {}, 'score', {});
    
    % Set timeout duration (in seconds)
    timeoutDuration = 1;

    % Grade each student
    for i = 1:numStudents
        studentId = studentFolders{i};
        studentPath = fullfile(submissionsPath, studentId);
        addpath(studentPath);
        
        % The following part is the core of whole programme:
        % grade each student and detect two possible issues which may occur
        % System error: cannot open the prenamed file
        % Runtime error: existing endless loop
        try
            if ~exist(fullfile(studentPath, [questionName '.m']), 'file')
                fprintf('ERROR: %s.m not found for student %s\n', questionName, studentId);
                score = 0;
            else
                disp(studentId);

                % Create timer for timeout
                t = timer('TimerFcn', @(~,~) timeout_callback(), ...
                    'StartDelay', timeoutDuration);
                start(t);

                try
                    runTestsFunc = str2func(['runTests_' questionName]);
                    score = runTestsFunc(testCases);
                catch ME
                    if strcmp(ME.identifier, 'MATLAB:timer:timeout')
                        fprintf('Error for student %s: Infinite loop detected (timeout after %d seconds)\n', ...
                            studentId, timeoutDuration);
                    else
                        fprintf('Error for student %s: Runtime error - %s\n', studentId, ME.message);
                    end
                    score = 0;
                end

                % Stop and clean up timer
                stop(t);
                delete(t);
            end
        catch ME
            fprintf('Error for student %s: System error - %s\n', studentId, ME.message);
            score = 0;
        end
        
        rmpath(studentPath);
        results(i).id = studentId;
        results(i).score = score;
        fprintf(fid, '%s,%0.2f\n', studentId, score);
    end
    
    fclose(fid);
    
    % Print summary
    fprintf('\nGRADING SUMMARY\n');
    fprintf('=====================================\n');
    for i = 1:numStudents
        fprintf('Student %s: %0.2f/7\n', results(i).id, results(i).score);
    end
    
    fprintf('\nResults have been saved to grading_results_%s.csv\n', timestamp);
end

function timeout_callback()
    ME = MException('MATLAB:timer:timeout', 'Function timed out');
    throwAsCaller(ME);
end