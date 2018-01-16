class AddTypesToNotes < ActiveRecord::Migration[5.1]
  def change
    add_column :notes, :types, :string
  end
end
