filename = ARGV.first

puts "We're going to erase #{filename}"
puts "If you don't want that, hit CRTL-C (^C)."
puts 'If you do want that, hit RETURN.'

$stdin.gets

puts 'Opening the file...'
target = open(filename, 'w')

puts 'Truncating the file. Goodbye!'
target.truncate(0)

puts "Now I'm going to ask you for three lines."

print 'line 1: '
line1 = $stdin.gets.chomp
print 'line 1: '
line2 = $stdin.gets.chomp
print 'line 3: '
line3 = $stdin.gets.chomp

puts "I'm going to write these to the file."


line = "%{first} %{second} %{third}"
line % {first: "#{line1}\n", second: "#{line2}\n", third: "#{line3}\n"}
target.write(line)

puts 'And finally, we close it.'
target.close
