class AddHobbyToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :hobby, :string
  end
end
