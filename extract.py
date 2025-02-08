import os
import zipfile
import re
import shutil

def flatten_directory(directory):
    """
    If directory contains only one folder, move all contents up one level
    """
    # Get all items in the directory
    items = os.listdir(directory)
    
    # If there's exactly one item and it's a directory
    if len(items) == 1 and os.path.isdir(os.path.join(directory, items[0])):
        subfolder = os.path.join(directory, items[0])
        # Get all files/folders from the subfolder
        for item in os.listdir(subfolder):
            # Move each item to parent directory
            shutil.move(
                os.path.join(subfolder, item),
                os.path.join(directory, item)
            )
        # Remove the now-empty subfolder
        os.rmdir(subfolder)


def organize_submissions(source_dir, output_dir):
    # Create output directory if it doesn't exist
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)
    
    # Regular expression to extract student ID
    # Matches pattern "Lab Assignment 3_1155173918_attempt_2025-02-06-11-56-44"
    id_pattern = r'Lab Assignment \d+_(\d+)_attempt_'
    
    # Process each file in the source directory
    for filename in os.listdir(source_dir):
        filepath = os.path.join(source_dir, filename)
        match = re.search(id_pattern, filename)
        
        if match:
            student_id = match.group(1)
            student_dir = os.path.join(output_dir, student_id)
            
            # Create student directory if it doesn't exist
            if not os.path.exists(student_dir):
                os.makedirs(student_dir)
            
            # If it's a zip file
            if filename.endswith('.zip'):
                try:
                    with zipfile.ZipFile(filepath, 'r') as zip_ref:
                        zip_ref.extractall(student_dir)
                    # Add this line to flatten directory if needed
                    flatten_directory(student_dir)
                    print(f"Successfully extracted submission for student {student_id}")
                except Exception as e:
                    print(f"Error extracting submission for student {student_id}: {str(e)}")
            

    # Clean up: remove all files that aren't folders in output directory
    for item in os.listdir(output_dir):
        item_path = os.path.join(output_dir, item)
        if not os.path.isdir(item_path):
            os.remove(item_path)

    print("\nOrganization complete!")
    print(f"Total number of submissions processed: {len([d for d in os.listdir(output_dir) if os.path.isdir(os.path.join(output_dir, d))])}")

# Usage
if __name__ == "__main__":
    # Replace these paths with your actual paths
    source_directory = "D:/MATH2221GradeScope/sectionA"
    output_directory = "D:/MATH2221GradeScope/organized_sectionA"
    organize_submissions(source_directory, output_directory)
