class User < ApplicationRecord
  has_many :users_and_tests
  has_many :tests, through: :users_and_tests

  def passed_tests(test_level)
    tests.where(level: test_level)
  end
end
