class AddAttachmentTitlebarToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :titlebar
    end
  end

  def self.down
    remove_attachment :users, :titlebar
  end
end
