class CreateListings < ActiveRecord::Migration[5.0]
  def change
    create_table :listings do |t|
      t.string :title
      t.text :description
      t.string :address
      t.string :listing_type
      t.decimal :price, :precision => 8, :scale => 2
      t.belongs_to :neighborhood
      t.belongs_to :host

      t.timestamps
    end
  end
end
