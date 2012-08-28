# Reading Files

# Get the first argument when running the ruby script from the shell
filename = ARGV.first

# Set the prompt line's text
prompt = ">>> "

# Assign 'txt' the filename given on the ARGV's second parameter
txt = File.open(filename)

# Display the name and contents of the file using the string interpolation and the .read() method
puts "Here's your file: #{filename}"
puts txt.read()

# Asks the user to type again a filename...
puts "I'll also ask you to type the filename again:"

# Display the prompt line so the user can see where to input the filename
print prompt

# Assign the user standard input to variable file_again
# remove whitespaces using .chomp() method
file_again = STDIN.gets.chomp

# Get the contents of the file_again and assign to txt_again variable
txt_again = File.open(file_again)

# Display the contents of the file
puts txt_again.read()

