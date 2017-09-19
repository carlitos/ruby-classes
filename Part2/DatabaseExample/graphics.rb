require_relative 'db_connection'
require 'gruff'
require 'pp'
require 'pry'

graph = Gruff::Line.new
graph.title = "Product Sales"

#  graph.data Product.find(index).name, [sales]
#graph.labels = hash

graph.write('productsales.png')
