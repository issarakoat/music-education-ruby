class AddFieldsToCourses < ActiveRecord::Migration[6.0]
  def change
    add_column :courses, :language, :string, default: "English", null: false
    add_column :courses, :level, :string, default: "Beginner", null: false
  end
end
