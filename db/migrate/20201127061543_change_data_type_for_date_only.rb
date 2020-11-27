class ChangeDataTypeForDateOnly < ActiveRecord::Migration[6.0]
  def self.up
    change_table :bookings do |t|
      t.change :dateOnly, :date
    end
  end
  def self.down
    change_table :bookings do |t|
      t.change :dateOnly, :datetime
    end
  end
end
