class BudgetsGroup < ApplicationRecord
  # belongs_to :budget
  # belongs_to :group
  belongs_to :groups, class_name: 'Group'
  belongs_to :budgets, class_name: 'Budget'
end
