def read_file_and_split_words(filename):
    try:
        # Open the file in read mode
        with open(filename, 'r') as file:
            # Read the content of the file as a string
            file_content = file.read()
            # Split the content into words based on spaces
            words = file_content.split()
            return file_content
    except FileNotFoundError:
        print(f"File '{filename}' not found.")
        return []

def remove_empty_lines(input_file, output_file):
    with open(input_file, 'r') as infile:
        with open(output_file, 'w') as outfile:
            for line in infile:
                if line.strip():  # Check if the line is not empty after stripping whitespace
                    outfile.write(line)

remove_empty_lines('new2.bif', 'new.bif')