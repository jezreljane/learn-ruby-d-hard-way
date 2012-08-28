# Ready to display 10, binary and don't..
x = "There are #{10} types of people."
binary = "binary"
do_not = "don't"
y = "Those who know #{binary} and those who #{do_not}."

# Display: There 10 types of people.
puts x

# Display: Those who know binary and those who don't.
puts y

# Display: I said: There are 10 types of people..
puts "I said: #{x}."

# Display: I also said: 'Those who know binary and those who don't.'
puts "I also said: '#{y}'."

# Assign false to variable name hilarious
hilarious = false

# String interpolation for hilarious
joke_evaluation = "Isn't that joke so funny!? #{hilarious}"

# Display Isn't that joke so funny!? false
puts joke_evaluation

# Assign string values to w and e
w = "This is the left side of ..."
e = "a string with a right side."

# Display the sentence This is the left side of ...a string with a right side
puts w + e
