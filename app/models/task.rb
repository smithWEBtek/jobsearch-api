class Task < ApplicationRecord
  belongs_to :user  
  belongs_to :contact
  belongs_to :job
  belongs_to :company
  belongs_to :step
  has_many :logs

  #scoped resource:category, based on task step chosen
  # http://api.rubyonrails.org/classes/ActiveRecord/Scoping/Named/ClassMethods.html
  
  # def self.jobsearch
  #   where(step_id: [2..8])  
  # end

  # def self.techprep
  #   where(step_id: [9..12])  
  # end

  # def self.branding
  #   where(step_id: [13..22])  
  # end

  # def log
  #   task = Task.find_by_id(self.id)
  #       # change to current_user.tasks.build
  #       # when current_user method is working
  #   task_log = TaskLog.create(
  #     task_id: task.id,
  #     log_date: Time.zone.now,
  #     step: task.step.name,
  #     notes: task.notes,
  #     priority: task.priority
  #   )
  #   if task_log.save
  #     flash[:message] = "Task current values recorded to task_log."
  #   else
  #     render 'users/:id/tasks/:id/edit', message: "Task not logged!"
  #   end
  # end
end
