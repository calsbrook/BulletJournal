class AddCompleteToNotes < ActiveRecord::Migration[5.1]
  def change
    add_column :notes, :complete, :boolean
  end
end
