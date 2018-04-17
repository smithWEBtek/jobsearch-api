class ContactSerializer < ActiveModel::Serializer
  attributes :id, :fname, :lname, :title, :email, :phone, :url, :about, :linkedin, :twitter
end
