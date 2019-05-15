produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(products)
  fruit = {}
  products.each do |key, value|
    fruit[key] = value if value.downcase == 'fruit'
  end
  fruit
end

puts select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}
