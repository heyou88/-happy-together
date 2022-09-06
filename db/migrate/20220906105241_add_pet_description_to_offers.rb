class AddPetDescriptionToOffers < ActiveRecord::Migration[7.0]
  def change
    add_column :offers, :pet_description, :string
  end
end
