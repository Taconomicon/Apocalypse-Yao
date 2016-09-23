class AddTbvisibilityToUsers < ActiveRecord::Migration
  def change
    add_column :users, :tbvisible, :boolean
  end
end
