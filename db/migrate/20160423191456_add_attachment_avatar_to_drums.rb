class AddAttachmentAvatarToDrums < ActiveRecord::Migration
  def self.up
    change_table :drums do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :drums, :avatar
  end
end
