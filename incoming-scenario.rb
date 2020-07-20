filename = "scenario.txt"

# read in the text file and save values as an array
def arraycreate(filename)
	array = IO.readlines(filename)
	selector(array, filename)
end

# select the scenario using sample method
def selector(array, filename)
	selected = array.sample
	modifyfile(selected, filename)
  puts "clear"
  puts "Incoming Scenario: "+selected.strip
end

arraycreate(filename)
