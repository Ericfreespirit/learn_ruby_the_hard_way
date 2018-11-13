from_file, to_file = ARGV

puts "Copying from #{from_file} to #{to_file}"

# we could do these two on one line, how?
in_file = open(from_file); indata = in_file.read # To count the 1st file length

puts "The input file is #{indata.length} bytes long"
puts "Does the output file exist? #{File.exist?(to_file)}"

out_file = open(to_file, 'w') # Create the 2nd file, copy by the 1st file
puts 'The second file is create, press RETURN to continue !'
$stdin.gets


out_file.write(indata) # Copy the 1st file to the 2nd file by putting in

puts 'Alright, all done.'

out_file.close
in_file.close