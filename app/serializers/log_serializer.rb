class LogSerializer < ActiveModel::Serializer
	attributes :id, :todo_id, :note
	belongs_to :todo
end
