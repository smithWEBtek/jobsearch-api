class TaskSerializer < ActiveModel::Serializer
	attributes :id, :user_id, :step_id, :job_id, :contact_id, :company_id, :due_date, :title, :priority, :notes
	
	belongs_to :user  
  belongs_to :contact
  belongs_to :job
  belongs_to :company
  belongs_to :step
end
