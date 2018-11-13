filename = ARGV.first

txt = open(filename)

puts "Here's your file #{filename}:"
print txt.read

# Open the file enter into the ARGV

print 'Type the filename again: '
file_again = $stdin.gets.chomp

txt_again = open(file_again)

puts txt_again.read

txt.close
txt_again.close
puts ''
puts 'All the files are close.'

# Open the file enter into $stdin.gets.chomp
