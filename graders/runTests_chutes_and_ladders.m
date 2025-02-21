function score = runTests_chutes_and_ladders(testFile)
    % Initialize score
    score = 0;
    
    try
        % Convert string to function handle and then call it
        func = str2func(testFile);
        result = func();
        
        % Check result against expected value
        if result == 61  % Expected number of moves
            score = 10;
        end
    catch ME
        fprintf('Runtime error: %s\n', ME.message);
        score = 0;
    end
end