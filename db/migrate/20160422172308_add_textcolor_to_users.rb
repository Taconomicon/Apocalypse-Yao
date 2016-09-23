class AddTextcolorToUsers < ActiveRecord::Migration
  def change
    add_column :users, :txtcolor, :string
  end
end
