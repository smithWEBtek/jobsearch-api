class Company < ApplicationRecord
  has_many :contacts
  has_many :jobs
  has_many :tasks
end
