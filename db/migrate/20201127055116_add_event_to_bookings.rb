class AddEventToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :event, :string
  end
end
