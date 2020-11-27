class AddEventToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :event, :string
  end
end
