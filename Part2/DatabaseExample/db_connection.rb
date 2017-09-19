require 'active_record'
require 'pp'

ActiveRecord::Base.establish_connection(adapter: 'postgresql',
                                        host: 'localhost',
                                        database: 'my_basic_db')

class Product < ActiveRecord::Base
  has_many :purchases
end

class Purchase < ActiveRecord::Base
  belongs_to :product
end

class Store < ActiveRecord::Base
end

if __FILE__ == $0
  Product.create(id: 1, name: 'Soap')
  Product.create(id: 2, name: 'Paper')
  Product.create(id: 3, name: 'Rock')
  Product.create(id: 4, name: 'Scissors')
  Product.create(id: 5, name: 'Cellphone')
  Store.create(id: 1, location: 'Guanajuato')
  Store.create(id: 2, location: 'Leon')
  puts " Base information ".center(50, '*')

  rand(1..40).times do |index|
    Purchase.create(id: index + 1, product_id: rand(1..5), store_id: rand(1..2))
  end
  puts " Purchases created ".center(50, '*')

end
