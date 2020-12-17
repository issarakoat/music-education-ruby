class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :title
      t.text :instrument
      t.string :genre
      t.text :description
      t.integer :price

      t.timestamps
    end
  end
end
