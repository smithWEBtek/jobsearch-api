class Contact < ApplicationRecord
  belongs_to :company
  has_many :tasks

  def name
    "#{self.fname}" + " " + "#{self.lname}"
  end
end
