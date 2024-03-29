class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.date :due_date
      t.text :description
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
