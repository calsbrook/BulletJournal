class CreateHabits < ActiveRecord::Migration[5.1]
  def change
    create_table :habits do |t|
      t.string :name
      t.date :dates, array: true, default: []
      t.string :color
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
