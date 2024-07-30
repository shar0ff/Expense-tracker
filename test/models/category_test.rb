require "test_helper"

class CategoryTest < ActiveSupport::TestCase
  test "should find 'Grocery' category by name" do
    category_grocery = Category.find_by(name: 'Grocery')
    assert_equal "Grocery", category_grocery.name
  end

  test "should be invalid without a name" do
    new_category = Category.new(description: 'description_example')
    assert_not new_category.valid?
  end

  test "should be invalid without a description" do
    new_category = Category.new(name: 'name_example')
    assert_not new_category.valid?
  end

  test "should save and retrieve a new category" do
    new_category = Category.new(name: 'name_example', description: 'description_example')
    assert new_category.save

    category_new = Category.find_by(name: 'name_example')
    assert_not_nil category_new
    assert_equal 'description_example', category_new.description
  end
end
