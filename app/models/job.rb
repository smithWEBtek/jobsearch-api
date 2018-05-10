class Job < ApplicationRecord
  has_many :tasks
  belongs_to :company
  has_many :contacts, through: :company

end
