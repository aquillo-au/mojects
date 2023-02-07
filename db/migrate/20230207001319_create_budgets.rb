class CreateBudgets < ActiveRecord::Migration[7.0]
  def change
    create_table :budgets do |t|
      t.float :total
      t.float :spent
      t.float :allocated

      t.timestamps
    end
  end
end
