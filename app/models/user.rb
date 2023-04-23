class User < ApplicationRecord
  has_many :user_tests
  has_many :tests, through: :user_tests

  def passed_tests(test_level)
    arr_tests = UsersAndTests.where(user_id: self.id).pluck(:test_id)
    Test.where(id: arr_tests, level: test_level)
  end
end
