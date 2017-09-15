# Numbers in Ruby classes
puts 5.class
puts 5.0.class

# We could also do

puts 1_000_000

# This is the interesting part of numbers methods

puts 1.+(1)

# Try this:
#
puts "Integer methods"
print 1.methods
puts "\n\nFloat methods"
print 1.0.methods
