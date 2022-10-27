class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
         
  has_many :groups, foreign_key: 'user_id'
  has_many :budgets, foreign_key: 'user_id'

  validates :name, presence: true
end
