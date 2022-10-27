class BudgetsGroup < ApplicationRecord
  belongs_to :budget
  belongs_to :group
end
