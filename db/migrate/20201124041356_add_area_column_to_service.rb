class AddAreaColumnToService < ActiveRecord::Migration[6.0]
  def change
    add_column :services, :area, :string
  end
end
