class JobSerializer < ActiveModel::Serializer
	attributes :id, :title, :url, :company_id, :description, :requirements, :instructions
  has_many :todos
  belongs_to :company
  has_many :contacts, through: :company

end
