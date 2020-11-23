class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :role
      t.string :gender
      t.integer :age

      t.timestamps
    end
  end
end
