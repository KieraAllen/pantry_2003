require "minitest/autorun"
require "minitest/pride"
require './lib/pantry'

class PantryTest < Minitest::Test

  def test_it_exists
    pantry = pantry = Pantry.new
    assert_instance_of Pantry, pantry
  end
end


# pry(main)> ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 200})
# # => #<Ingredient:0x007fd88582ed98...>


#
# pry(main)> pantry = Pantry.new
# # => #<Pantry:0x007fd8858863b8...>
#
# pry(main)> pantry.stock
# # => {}
#
# pry(main)> pantry.stock_check(ingredient1)
# # => 0
#
# pry(main)> pantry.restock(ingredient1, 5)
#
# pry(main)> pantry.restock(ingredient1, 10)
#
# pry(main)> pantry.stock_check(ingredient1)
# # => 15
#
# pry(main)> pantry.restock(ingredient2, 7)
#
# pry(main)> pantry.stock_check(ingredient2)
# # => 7
