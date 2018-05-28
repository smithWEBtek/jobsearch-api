class UserSerializer < ActiveModel::Serializer
	attributes :id, :name, :email, :password, :phone1, :phone2, :address_line1, :address_line2, :city, :state, :zip, :elevator_pitch, :resume, :twitter_url, :linkedin_url, :github_url, :learn_student_profile_url, :blog_site_url, :portfolio_site_url, :coach_name, :coach_email, :coach_slack
  has_many :tasks
  has_many :jobs, through: :tasks
  has_many :contacts, through: :tasks
  has_many :companies, through: :tasks
  has_many :steps, through: :tasks
end
