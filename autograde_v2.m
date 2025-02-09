function autograde_v2(questionName)
    % Usage: autograde_v2('q4')
    
    % Get the base directory
    baseDir = pwd;

    % Add all subdirectories to path to refer to testFunction and testCases
    addpath(genpath(baseDir));

    % Path to the folder containing student submissions of each section
    submissionsPath = fullfile(baseDir, 'organized_sectionB');
    
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
    
    % Grade each student
    for i = 1:numStudents
        % ...existing student grading loop code...
        studentId = studentFolders{i};
        studentPath = fullfile(submissionsPath, studentId);
        addpath(studentPath);
        
        try
            if ~exist(fullfile(studentPath, [questionName '.m']), 'file')
                fprintf('ERROR: %s.m not found for student %s\n', questionName, studentId);
                score = 0;
            else
                % Copy student's script to current directory temporarily
                disp(studentId);
                copyfile(fullfile(studentPath, [questionName '.m']), [questionName '.m']);

                try
                    runTestsFunc = str2func(['runTests_' questionName]);
                    score = runTestsFunc(testCases);
                catch ME
                    fprintf('Error running tests for student %s: %s\n', studentId, ME.message);
                    score = 0;
                end

                % Clean up
                delete([questionName '.m']);
            end
        catch ME
            fprintf('Error for student %s: %s\n', studentId, ME.message);
            rethrow(ME);
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
        fprintf('Student %s: %0.2f/6\n', results(i).id, results(i).score);
    end
    
    fprintf('\nResults have been saved to grading_results_%s.csv\n', timestamp);
end