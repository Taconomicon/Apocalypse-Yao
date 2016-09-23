class AddBgvisibilityToUsers < ActiveRecord::Migration
  def change
    add_column :users, :bgvisible, :boolean
  end
end
