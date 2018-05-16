class AddExteriorFeaturesToHouses < ActiveRecord::Migration[5.1]
  def change
    add_column :houses, :exterior_features, :string, before: :lot_id
  end
end
