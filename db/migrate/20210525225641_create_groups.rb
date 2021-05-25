class CreateGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :groups do |t|
      t.string :name
      t.integer :members, default: 1
      t.date :debut
      t.integer :band_type, default: 0

      t.timestamps
    end
  end
end
