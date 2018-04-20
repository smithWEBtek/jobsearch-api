class Task < ApplicationRecord
  belongs_to :user  
  belongs_to :contact
  belongs_to :job
  belongs_to :company
  belongs_to :step
  has_many :logs

end
