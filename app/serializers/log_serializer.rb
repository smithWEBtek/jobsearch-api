class LogSerializer < ActiveModel::Serializer
	attributes :id, :task_id, :note
	belongs_to :task
end
