import os
import zipfile
import re
import shutil
import py7zr

def flatten_directory(directory):
    """
    If directory contains only one folder, move all contents up one level
    """
    items = os.listdir(directory)
    
    if len(items) == 1 and os.path.isdir(os.path.join(directory, items[0])):
        subfolder = os.path.join(directory, items[0])
        for item in os.listdir(subfolder):
            shutil.move(
                os.path.join(subfolder, item),
                os.path.join(directory, item)
            )
        os.rmdir(subfolder)

def extract_archive(filepath, extract_path):
    """
    Extract different types of archives (.zip, .7z)
    """
    file_lower = filepath.lower()
    if file_lower.endswith('.zip'):
        with zipfile.ZipFile(filepath, 'r') as zip_ref:
            zip_ref.extractall(extract_path)
    elif file_lower.endswith('.7z'):
        with py7zr.SevenZipFile(filepath, mode='r') as z:
            z.extractall(extract_path)

def has_matlab_files(filepath):
    """
    Check if archive contains .m files
    """
    file_lower = filepath.lower()
    if file_lower.endswith('.zip'):
        with zipfile.ZipFile(filepath, 'r') as zip_ref:
            return any(name.endswith('.m') for name in zip_ref.namelist())
    elif file_lower.endswith('.7z'):
        with py7zr.SevenZipFile(filepath, mode='r') as z:
            return any(name.endswith('.m') for name in z.getnames())
    return False

def organize_submissions(source_dir, output_dir):
    if os.path.exists(output_dir):
        raise Exception(f"Output directory {output_dir} already exists. You can use it directly or delete it to start fresh.")
    
    os.makedirs(output_dir)
    
    id_pattern = r'Lab Assignment \d+_(\d+)_attempt_'
    valid_extensions = ('.zip', '.7z')
    
    for filename in os.listdir(source_dir):
        filepath = os.path.join(source_dir, filename)
        match = re.search(id_pattern, filename)
        
        # Check for RAR files first and skip them with warning
        if filename.lower().endswith('.rar'):
            student_id = match.group(1) if match else "Unknown"
            print(f"Error processing submission for student {student_id}: RAR file format not supported! Please submit as ZIP!")
            continue

        if match and filename.lower().endswith(valid_extensions):
            student_id = match.group(1)
            student_dir = os.path.join(output_dir, student_id)
            
            try:
                os.makedirs(student_dir, exist_ok=True)
                
                if not has_matlab_files(filepath):
                    print(f"Warning: No .m files found in submission for student {student_id}")
                
                extract_archive(filepath, student_dir)
                flatten_directory(student_dir)
                
                extracted_files = [f for f in os.listdir(student_dir) if f.endswith('.m')]
                if extracted_files:
                    print(f"Successfully extracted {len(extracted_files)} .m files for student {student_id}")
                else:
                    print(f"Warning: No .m files found after extraction for student {student_id}")
                    
            except Exception as e:
                print(f"Error processing submission for student {student_id}: {str(e)}")

    # Clean up non-directory files
    for item in os.listdir(output_dir):
        item_path = os.path.join(output_dir, item)
        if not os.path.isdir(item_path):
            os.remove(item_path)

    print("\nOrganization complete!")
    print(f"Total number of submissions processed: {len([d for d in os.listdir(output_dir) if os.path.isdir(os.path.join(output_dir, d))])}")

if __name__ == "__main__":
    source_directory = "D:/MATH2221GradeScope/sectionA"
    output_directory = "D:/MATH2221GradeScope/organized_sectionA"
    organize_submissions(source_directory, output_directory)