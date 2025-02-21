function n = chutes_and_ladders()
    % Define ladders and chutes using arrays
    ladders = [4, 9, 20, 28, 36, 40, 51, 71, 80];
    ladder_dest = [14, 31, 38, 84, 44, 42, 67, 91, 81];
    
    chutes = [16, 47, 49, 56, 62, 64, 87, 93, 95, 98];
    chute_dest = [6, 26, 11, 53, 19, 60, 24, 73, 75, 78];

    position = 1; % Start at Box 1
    n = 0; % Count number of dice rolls
    
    while position ~= 100
        % Roll a fair six-sided die
        d = randi([1, 6]);
        
        % Tentative move forward
        position = position + d;
        
        % Handle overshooting beyond Box 100
        if position > 100
            position = 100 - (position - 100); % Bounce back
        else
            % Check if landed on a ladder
            for i = 1:length(ladders)
                if position == ladders(i)
                    position = ladder_dest(i);
                    break; % Exit loop once ladder is found
                end
            end
            
            % Check if landed on a chute
            for i = 1:length(chutes)
                if position == chutes(i)
                    position = chute_dest(i);
                    break; % Exit loop once chute is found
                end
            end
        end
        
        % Increment dice roll counter
        n = n + 1;
    end
end
