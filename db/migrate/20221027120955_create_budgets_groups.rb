class CreateBudgetsGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :budgets_groups do |t|
      t.references :budget, null: false, foreign_key: true
      t.references :group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
