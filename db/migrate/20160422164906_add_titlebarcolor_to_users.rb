class AddTitlebarcolorToUsers < ActiveRecord::Migration
  def change
    add_column :users, :tbcolor, :string
  end
end
