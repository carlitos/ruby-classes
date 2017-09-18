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

my_products = Store.all
pp my_products
puts my_products.count
