class Group < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  has_and_belongs_to_many :budgets, dependent: :destroy

  validates :name, presence: true, length: { in: 3..50 }
  validates :icon, presence: true, length: { in: 10..500 }
end
