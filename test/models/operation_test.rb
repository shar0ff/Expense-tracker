require "test_helper"

class OperationTest < ActiveSupport::TestCase
  fixtures :operations, :categories

  test "check the operation 'one' amount from database" do
    operation_first = operations(:operation_one)
    assert_equal 50.75, operation_first.amount
  end

  test "should be invalid without amount" do
    new_operation = Operation.new(odate: '2023-06-22 18:23:24', description: 'description_example', category: categories(:one), otype: 'income')
    assert_not new_operation.valid?
    assert_includes new_operation.errors[:amount], "can't be blank"
  end

  test "should be invalid without odate" do
    new_operation = Operation.new(amount: 100, description: 'description_example', category: categories(:one), otype: 'income')
    assert_not new_operation.valid?
    assert_includes new_operation.errors[:odate], "can't be blank"
  end

  test "should be invalid without description" do
    new_operation = Operation.new(amount: 100, odate: '2023-06-22 18:23:24', category: categories(:one), otype: 'income')
    assert_not new_operation.valid?
    assert_includes new_operation.errors[:description], "can't be blank"
  end

  test "should be invalid without category" do
    new_operation = Operation.new(amount: 100, odate: '2023-06-22 18:23:24', description: 'description_example', otype: 'income')
    assert_not new_operation.valid?
    assert_includes new_operation.errors[:category], "must exist"
  end

  test "should be invalid without otype" do
    new_operation = Operation.new(amount: 100, odate: '2023-06-22 18:23:24', description: 'description_example', category: categories(:one))
    assert_not new_operation.valid?
    assert_includes new_operation.errors[:otype], "is not included in the list"
  end

  test "should save and retrieve an operation" do
    new_operation = Operation.new(amount: 100, odate: '2023-06-22 18:23:01', description: 'description_example', category: categories(:one), otype: 'income')
    assert new_operation.save

    operation_new = Operation.find_by(odate: '2023-06-22 18:23:01')
    assert_not_nil operation_new
    assert_equal 100, operation_new.amount
    assert_equal 'description_example', operation_new.description
    assert_equal categories(:one).id, operation_new.category_id
    assert_equal 'income', operation_new.otype
  end
end
