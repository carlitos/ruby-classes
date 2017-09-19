def my_method
    puts "reached the top"
      yield
        puts "reached the bottom"
end

my_method { puts "reached yield" }
