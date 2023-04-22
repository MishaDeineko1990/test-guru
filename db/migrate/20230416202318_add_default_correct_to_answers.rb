class AddDefaultCorrectToAnswers < ActiveRecord::Migration[6.1]
  def change
    change_column :answers, :correct, :boolean, default: false, null: false
  end
end
