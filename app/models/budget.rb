class Budget < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  has_and_belongs_to_many :groups, dependent: :destroy

  validates :name, :amount, presence: true
end
