class User < ApplicationRecord
  has_many :tests

	def passed_tests(level)
    Test.where(level: level, user_id: self.id)
	end
end
