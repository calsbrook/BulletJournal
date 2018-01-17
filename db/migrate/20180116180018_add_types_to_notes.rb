class AddTypesToNotes < ActiveRecord::Migration[5.1]
  def change
    add_column :notes, :note_type, :string
  end
end
