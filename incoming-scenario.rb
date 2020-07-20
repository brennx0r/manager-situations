require 'io/console'

filename = "scenarios.txt"

if ARGV[0] == nil 
	ARGV[0] = 1
end

# read in the text file and save values as an array
def arraycreate(filename)
	array = IO.readlines(filename)
	selector(array, filename)
end

# select the scenario using sample method
def selector(array, filename)
	selected = array.sample
	system "clear"
	  puts "Incoming Scenario: "+selected.strip+"\n\n (Press any key to continue.)"
	  STDIN.getch 	  
end

ARGV[0].to_i.times { arraycreate(filename) }
