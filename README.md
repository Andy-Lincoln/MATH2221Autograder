# MATLAB Assignment Autograder

This is an automated grading system for MATLAB programming assignments. The system is designed to grade student submissions for programming assignments involving function implementations.

## Directory Structure

```
Assignment3/
├── autograde.m              # Main grading script
├── testcases/              # Test cases for different questions
│   ├── testcases_checkValid.m
│   └── testcases_checkWin.m
├── graders/                # Question-specific grading logic
│   ├── runTests_checkValid.m
│   └── runTests_checkWin.m
└── sectionA/              # Student submissions folder
    ├── 1155123456/             # Student folders (named by ID)
    │   └── checkValid.m
    └── 1155123457/
        └── checkValid.m
```



## Setup Instructions

1. Create the directory structure as shown above
2. Place student submissions in `SectionA` folder
   - Each student's work should be in a folder named with their ID number
   - Each folder should contain their MATLAB function files

Remark
We request students to upload a zip file containing all matlab function files before lab and then extract all folder by extractSubmission.py.
Since the downloaded file from blackboard contains ID, we don't need ask them to create specific name on their folder. 
Whether the student compress all .m scripts into a zip file or compress a folder containing all scripts, the python script will extract it and output a folder containing students' folders shown as first "folder structure".


## Usage

1. Open MATLAB and navigate to the `Assignment3_grader` directory
2. Run the autograder:
   ```matlab
   autograde('checkValid')  % For grading checkValid.m submissions
   autograde('checkWin')    % For grading checkWin.m submissions



## Output

The grader will:

1. Test each student's submission against the test cases
2. Generate a CSV file with results (grading_results_questionName_YYYYMMDD-HHMMSS.csv)
3. Display a summary in the MATLAB command window
