class ChangeTableColumn < ActiveRecord::Migration[6.0]
  def change
    change_column :courses, :instrument, :string
  end
end
