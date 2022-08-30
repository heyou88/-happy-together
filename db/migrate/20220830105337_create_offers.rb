class CreateOffers < ActiveRecord::Migration[7.0]
  def change
    create_table :offers do |t|
      t.string :description
      t.string :title
      t.string :pet
      t.string :address
      t.date :start_date
      t.date :end_date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
