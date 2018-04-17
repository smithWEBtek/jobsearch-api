class ContactSerializer < ActiveModel::Serializer
	attributes :id, :fname, :lname, :title, :email, :phone, :url, :about, :linkedin, :twitter
	belongs_to :company
  has_many :todos
end
