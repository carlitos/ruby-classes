require 'open-uri'

puts "Width?"
width = gets.chomp!

puts "Height?"
height = gets.chomp!

gatitos = open("http://placebear.com/#{width}/#{height}")

archivo = File.open("bear.jpg", "w")

gatitos.each do |l|
    archivo.write(l)
end
archivo.close

exec "open bear.jpg"
