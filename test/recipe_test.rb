require "minitest/autorun"
require "minitest/pride"
require './lib/recipe'
require './lib/ingredient'

class RecipeTest < Minitest::Test

  def setup
    @ingredient1 = Ingredient.new({name: "Cheese", unit: "C", calories: 100})
    @ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 30})
    @recipe1 = Recipe.new("Mac and Cheese")
  end

  def test_it_exists_and_has_attributes
    assert_instance_of Recipe, @recipe1
    assert_equal "Mac and Cheese", @recipe1.name
  end

  def test_it_starts_with_no_ingredients
    assert_equal ({}), @recipe1.ingredients_required
  end

  def test_it_can_add_ingredients_and_require_them
      require "pry"; binding.pry
    @recipe1.add_ingredient(@ingredient1, 2)
    @recipe1.add_ingredient(@ingredient1, 4)
    @recipe1.add_ingredient(@ingredient2, 8)


    expected = {@ingredient1 => 6, @ingredient2 => 8}

    assert_equal expected, @recipe1.ingredients_required
  end
end

# pry(main)> recipe1.ingredients
# # => [#<Ingredient:0x007fe8438c7a70...>, #<Ingredient:0x007fe843857f40...>]
#
# pry(main)> recipe2 = Recipe.new("Cheese Burger")
#
# pry(main)> cookbook = CookBook.new
# # => #<CookBook:0x00007faae6a42228 @recipes=[]>
#
# pry(main)> cookbook.add_recipe(recipe1)
#
# pry(main)> cookbook.add_recipe(recipe2)
#
# pry(main)> cookbook.recipes
# => [#<Recipe:0x00007faae69c9698...>, #<Recipe:0x00007faae692a110...>]
