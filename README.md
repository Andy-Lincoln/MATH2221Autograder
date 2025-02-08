# MATLAB Assignment Autograder

An automated grading system for MATLAB programming assignments, designed to efficiently grade multiple student submissions with predefined test cases.

## Directory Structure

```plaintext
Assignment3/
├── autograde.m              # Main grading script
├── extract.py              # Script to organize student submissions
├── testcases/              # Test cases for different questions
│   ├── testcases_checkValid.m
│   └── testcases_checkWin.m
├── graders/                # Question-specific grading logic
│   ├── runTests_checkValid.m
│   └── runTests_checkWin.m
├── sectionA/              # Raw submissions downloaded from Blackboard
│   └── Lab Assignment 3_1155123456_attempt_2025-02-06.zip
└── Organized_sectionA/    # Processed student submissions
    ├── 1155123456/       # Auto-generated student folders
    │   └── checkValid.m
    |   └── checkWin.m
    |   └── q1.m
    |   └── q2.m
    |   └── q3.m
    └── 1155123457/
    |   └── checkValid.m
    |   └── checkWin.m
    |   └── q1.m
    |   └── q2.m
    |   └── q3.m
```

## Setup Process

1. Download student submissions from Blackboard
2. Place all downloaded zip files in `sectionA` folder
3. Run the extraction script:
   ```python
   python extract.py
   ```
   This will:
   - Extract all submissions
   - Organize files into student ID folders
   - Handle both zipped files and zipped folders
   - Create the final structure in `Organized_sectionA`

## Grading Process

1. Open MATLAB and navigate to the Assignment3 directory
2. Run the autograder with the desired question:
   ```matlab
   autograde('checkValid')  % Grade checkValid.m submissions
   autograde('checkWin')    % Grade checkWin.m submissions
   ```

## Output Files

The grader generates two types of output:

1. Console Output
   ```plaintext
   Testing student 1155123456
   =====================================
   Test 1: PASSED
   Test 2: PASSED
   Test 3: FAILED 
   Score: 4.67/7
   ```

2. CSV Result File
   - Filename: `grading_results_checkValid_20250207-103000.csv`
   - Format: `Student ID, Score`
   - Location: Same directory as autograde.m

## Adding New Questions

1. Create test cases file:
   ```matlab
   // filepath: /testcases/testcases_newQuestion.m
   function testCases = testcases_newQuestion()
       testCases = {
           {input1, expected1};
           {input2, expected2};
           % Add more test cases
       };
   end
   ```

2. Create grader file:
   ```matlab
   // filepath: /graders/runTests_newQuestion.m
   function score = runTests_newQuestion(testCases)
       % Implement grading logic
   end
   ```

3. Run with:
   ```matlab
   autograde('newQuestion')
   ```
