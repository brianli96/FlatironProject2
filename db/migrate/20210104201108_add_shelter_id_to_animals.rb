class AddShelterIdToAnimals < ActiveRecord::Migration[6.0]
  def change
    add_column :animals, :shelter_id, :integer
  end
end
