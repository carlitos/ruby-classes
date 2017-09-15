# Of course strings are part of the String.class

puts 'Hi'.class

# We could use single or double quotes

puts 'Hello in single quotes'
puts "Hello in double quotes"

# The above has no difference in the result but, what about this?

puts "What time is it? #{Time.now.strftime("%H:%M")}"
puts 'What time is it? #{Time.now.strftime("%H:%M")}'

# OR
puts 'What time is it? ' + Time.now.strftime("%H:%M") + ', thank you!'

# My favorite example

5.times do |number|
  puts "#{number}..."
end

5.times do |number|
  puts '#{number})...'
end
