class AddRowOrderToCourses < ActiveRecord::Migration[7.1]
  def change
    add_column :courses, :row_order, :integer
  end
end
