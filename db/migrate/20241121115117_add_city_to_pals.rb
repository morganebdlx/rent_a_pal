class AddCityToPals < ActiveRecord::Migration[7.1]
  def change
    add_column :pals, :city, :string
  end
end
