class AddBgrepeatToUsers < ActiveRecord::Migration
  def change
    add_column :users, :bgrepeat, :boolean
  end
end
