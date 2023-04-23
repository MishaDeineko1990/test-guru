class CreateTests < ActiveRecord::Migration[6.1]
  def change
    create_table :tests do |t|
      t.string :name
      t.integer :level
      t.integer :time_limit
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
