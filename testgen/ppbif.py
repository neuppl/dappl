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

x = read_file_and_split_words("experiments/thing.thing")
x = x.replace(",", ";").replace("then", "then\n\t").replace("else", "else\n\t")
x = x.replace("discrete(", "[").replace(")", "]")

with open("ref.ref", 'w') as file:
    file.write(x)
