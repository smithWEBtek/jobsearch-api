class StepSerializer < ActiveModel::Serializer
	attributes :id, :name, :category
	has_many :tasks
end
