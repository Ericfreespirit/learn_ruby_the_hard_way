- Open the file with ARGV and $stdin.gets.chomp
> Don't forget to close the file
- irb: read and open files 
> 1.8.6 :090 > txt = File.open("ex15_sample.txt")
> => #<File:ex15_sample.txt> 
>1.8.6 :091 > puts txt.read()