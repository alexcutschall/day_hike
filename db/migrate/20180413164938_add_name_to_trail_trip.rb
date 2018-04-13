class AddNameToTrailTrip < ActiveRecord::Migration[5.1]
  def change
    add_column :trail_trips, :name, :string
  end
end
