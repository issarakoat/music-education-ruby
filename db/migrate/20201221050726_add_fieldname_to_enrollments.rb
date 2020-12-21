class AddFieldnameToEnrollments < ActiveRecord::Migration[6.0]
  def change
    add_column :enrollments, :price, :integer
  end
end
