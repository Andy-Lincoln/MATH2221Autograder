function testCases = test_checkValid()
    testCases = {
        % Valid case (should return 1)
        {zeros(3), 1, 1, 1};
        
        % Invalid i cases (should return 0)
        {zeros(3), 4, 1, 0};
        {zeros(3), 0, 1, 0};
        
        % Invalid j cases (should return 0)
        {zeros(3), 1, 4, 0};
        {zeros(3), 1, 0, 0};
        
        % Occupied cell cases (should return 0)
        {[1 0 0; 0 0 0; 0 0 0], 1, 1, 0};
        {[-1 0 0; 0 0 0; 1 0 0], 3, 1, 0}
    };
end