class Job < ApplicationRecord
  has_many :todos
  belongs_to :company
  has_many :contacts, through: :company

end
