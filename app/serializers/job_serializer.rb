class JobSerializer < ActiveModel::Serializer
  attributes :id, :title, :url, :company_id, :description, :requirements, :instructions
end
