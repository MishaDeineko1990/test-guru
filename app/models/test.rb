class Test < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :questions
  
  def self.sorted_test_names(category_name)
    self.joins(:category).where(categories: {name: category_name}).order(name: :desc).pluck(:name)
  end
  
end
