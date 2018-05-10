class User < ApplicationRecord
  has_many :tasks
  has_many :jobs, through: :tasks
  has_many :contacts, through: :tasks
  has_many :companies, through: :tasks
  has_many :steps, through: :tasks
  has_many :logs, through: :tasks

  validates :email, presence: true, uniqueness: true
 
end
