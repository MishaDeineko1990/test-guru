class User < ApplicationRecord
  has_many :tests

	def passed_tests(difficulty)
		self.tests.select { |test| (test.passed && test.level == difficulty) }
	end
end
