class CompanySerializer < ActiveModel::Serializer
	attributes :id, :name, :city, :state, :url, :about
	has_many :contacts
  has_many :jobs
  has_many :tasks
end
