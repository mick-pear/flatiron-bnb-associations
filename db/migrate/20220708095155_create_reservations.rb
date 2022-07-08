class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.timestamps :checkin_time
      t.timestamps :checkout_time
      t.belongs_to :guest
      t.belongs_to :listing

      t.timestamps
    end
  end
end
