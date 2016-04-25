class AddUserIdToDrums < ActiveRecord::Migration
  def change
    add_column :drums, :user_id, :integer
  end
end
