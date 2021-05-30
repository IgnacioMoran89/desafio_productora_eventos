class CreateConcerts < ActiveRecord::Migration[5.1]
  def change
    create_table :concerts do |t|
      t.integer :attendance, default: 0
      t.integer :duration, default: 0
      t.date :concert_date
      t.references :group, foreign_key: true

      t.timestamps
    end
  end
end
