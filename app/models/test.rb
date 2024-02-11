class Test < ApplicationRecord
  belongs_to :category
  has_many :test_completions
  has_many :users, through: :test_completions

  def self.sorted_test_names_by_category(category_name)
    joins(:category).where(categories: { name: category_name }).order(name: :desc).pluck(:name)
  end
end
