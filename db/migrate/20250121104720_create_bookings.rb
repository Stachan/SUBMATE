class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :submarine, null: false, foreign_key: true
      t.integer :status

      t.timestamps
    end
  end
end
