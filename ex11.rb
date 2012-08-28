# Exercise 11: Asking Questions (Aug 26)

print "How old are you? "
age = gets.chomp()
print "How tall are you? "
height = gets.chomp()
print "How much do you weigh? "
weight = gets.chomp()

puts "So you're #{age} years old, #{height} tall and #{weight} heavy."

# Another way to get input aside from gets.chomp
print "Where do you live?"
place = STDIN.gets

puts "Oh, #{place}"
