class AddDueToNotes < ActiveRecord::Migration[5.1]
  def change
    add_column :notes, :due, :datetime
  end
end
