class CreateVhs < ActiveRecord::Migration[5.2]
  def change
    create_table :vhs do |t|
      t.integer :movie_id
      t.text :serial_number #, array: true, default: []
    end
  end
end
