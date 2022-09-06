class AddPetNameToOffers < ActiveRecord::Migration[7.0]
  def change
    add_column :offers, :pet_name, :string
  end
end
