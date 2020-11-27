class AddDateOnlyToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :dateOnly, :datetime
  end
end
