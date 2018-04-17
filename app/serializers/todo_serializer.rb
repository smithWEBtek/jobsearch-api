class TodoSerializer < ActiveModel::Serializer
	attributes :id, :user_id, :step_id, :job_id, :contact_id, :company_id, :due_date, :description, :priority

end
