class AddNeighborhoodToOffers < ActiveRecord::Migration[7.0]
  def change
    add_column :offers, :neighborhood, :string
  end
end
