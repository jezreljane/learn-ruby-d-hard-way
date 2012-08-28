# Reading and Writing Files
# Exercise 16

# Get the name of the file (first argument)
filename = ARGV.first

# Assign to variable script the name of the ruby file
script = $0

# Prompt the user that the file will be erased.
puts "We're going to erase #{filename}."

# Give the user some options:
# to continue or to abort the process
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit  RETURN."

# Get the user input
print "? "
STDIN.gets

# Open the file in the write mode ('w')
puts "Opening the file..."
target = File.open(filename, 'w')

# Truncate the file
puts "Truncating the file... Goodbye!"
target.truncate(target.size)

# Ask for user input again.
puts "Now I'm ging to ask you for three lines."

# Get and assign user inputs to variables
print "line 1: "; line1 = STDIN.gets.chomp
print "line 2: "; line2 = STDIN.gets.chomp
print "line 3: "; line3 = STDIN.gets.chomp

# Write the 3 lines as the file content
puts "I'm going to write these to the file."

target.write(line1)   # display line1 value
target.write("\n")    # insert blank line
target.write(line2)
target.write("\n")
target.write(line3)
target.write("\n")

# Closes the edited file.
puts "And finally, we close it."
target.close
