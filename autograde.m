function autograde(questionName)
    % Usage: autograde('checkValid') or autograde('checkWin') or autograde('q4')
   
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
   
    % Load test cases
    testCasesFunc = str2func(['testcases_' questionName]);
    testCases = testCasesFunc();
   
    % Open results file
    timestamp = datestr(now, 'yyyymmdd-HHMMSS');
    fid = fopen(fullfile(baseDir, ['grading_results_' questionName '_' timestamp '.csv']), 'w');
    fprintf(fid, 'Student ID,Score\n');
   
    % Initialize results array
    results = struct('id', {}, 'score', {});
   
    % Grade each student
    for i = 1:numStudents
        studentId = studentFolders{i};
        studentPath = fullfile(submissionsPath, studentId);
        addpath(studentPath);
   
        % The following part is the core of whole program:
        % grade each student and detect possible issues which may occur
        % System error: cannot open the prenamed file
        % Runtime error: runtime error in the student's code
        try
            if ~exist(fullfile(studentPath, [questionName '.m']), 'file')
                fprintf('ERROR: %s.m not found for student %s\n', questionName, studentId);
                score = 0;
            else
                disp(studentId);
   
                try
                    runTestsFunc = str2func(['runTests_' questionName]);
                    score = runTestsFunc(testCases);
                catch ME
                    fprintf('Error for student %s: Runtime error - %s\n', studentId, ME.message);
                    score = 0;
                end
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
        fprintf(fid, '%s,%0.2f\n', studentId, score);
    end
   
    % Close the results file
    fclose(fid);
   
    % Print summary
    fprintf('\nGRADING SUMMARY\n');
    fprintf('=====================================\n');
    for i = 1:numStudents
        fprintf('Student %s: %0.2f/7\n', results(i).id, results(i).score);
    end
    fprintf('\nResults have been saved to grading_results_%s_%s.csv\n', questionName, timestamp);
end
