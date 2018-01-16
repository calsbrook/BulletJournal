class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.string :content
      t.string :type
      t.string :user

      t.timestamps
    end
  end
end
