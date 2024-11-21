class AddCoordinatesToPals < ActiveRecord::Migration[7.1]
  def change
    add_column :pals, :latitude, :float
    add_column :pals, :longitude, :float
  end
end
