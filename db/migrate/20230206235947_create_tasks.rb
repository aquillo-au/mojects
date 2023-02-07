class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.integer :estimated_time
      t.date :due_date
      t.text :description
      t.string :title
      t.integer :status

      t.timestamps
    end
  end
end
