class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.references :request
      t.references :therapist

      t.timestamps
    end
  end
end
