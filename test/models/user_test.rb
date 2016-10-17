require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test "should not save user without name" do 
    user = User.new(email: "Fish", age: 4)
    assert_not user.save
  end

  test "should not save user without email" do 
    user = User.new(name: "Fred", age: 4)
    assert_not user.save
  end

  test "should not save user without integer age" do 
    user = User.new(name: 4, email: "Fish", age: "Sandwich")
    assert_not user.save
  end

end
