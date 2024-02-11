class User < ApplicationRecord

  def tests_by_difficulty(difficulty)
    Test.where(user: self, level: difficulty)
  end
end
