class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :experience, :integer
    add_column :users, :style, :string
  end
end
