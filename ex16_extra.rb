# My code... extra credit section

file_q = ARGV.first
script = $0

puts "You are going to read #{file_q} from #{script}."

print "Continue? (y/n) "
v = STDIN.gets.chomp

if v == 'y'
  puts "Opening file..."
  target_q = File.open(file_q, 'r')

  puts "You are now reading..."
  puts target_q.read

  target_q.close

  print "Do you want to edit the file? (y/n)"
  ans = STDIN.gets.chomp
  if ans.downcase == 'y'
    puts "Write down some contents..."
    print "Line 1: "; line1 = STDIN.gets.chomp
    print "Line 2: "; line2 = STDIN.gets.chomp
    print "Line 3: "; line3 = STDIN.gets.chomp

    target_q = File.open(file_q, 'w')
    target_q.write("%s\n%s\n%s\n" % [line1, line2, line3])
    target_q.close

    target_q = File.open(file_q, 'r')
    puts "The edited file now contains:"
    puts target_q.read

    target_q.close
  else
    puts "No changes made to the file. Now exiting..."
  end
else
  puts "Goodbye!"
end

