class BackfillRowOrderToCourses < ActiveRecord::Migration[7.1]
disable_ddl_transaction!
 
  def up
    Course.unscoped.in_batches do |relation|
      relation.update_all('row_order = EXTRACT(EPOCH FROM created_at)')
      sleep(0.01)
    end
  end
end
