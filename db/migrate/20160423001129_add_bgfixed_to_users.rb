class AddBgfixedToUsers < ActiveRecord::Migration
  def change
    add_column :users, :bgfixed, :boolean
  end
end
