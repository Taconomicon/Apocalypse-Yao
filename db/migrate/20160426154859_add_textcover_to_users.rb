class AddTextcoverToUsers < ActiveRecord::Migration
  def change
    add_column :users, :textcover, :boolean
  end
end
