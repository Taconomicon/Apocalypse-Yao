class AddBackgroundcolorToUsers < ActiveRecord::Migration
  def change
    add_column :users, :bgcolor, :string
  end
end
