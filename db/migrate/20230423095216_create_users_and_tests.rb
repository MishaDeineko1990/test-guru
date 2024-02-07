class CreateUsersAndTests < ActiveRecord::Migration[6.1]
  def change
    create_table :users_and_tests do |t|
      t.integer :user_id
      t.integer :test_id
      t.references :user

      t.timestamps
    end

    add_index :users_and_tests, :user_id
    add_index :users_and_tests, :test_id
  end
end
