class Job < ApplicationRecord
  has_many :tasks
  belongs_to :company
  has_many :contacts, through: :company

	def self.job
		file = Nokogiri::HTML("https://www.simplyhired.com/search?q=react&l=boston%2C+ma&job=plwbKJoaUgzlToK_I5oTnGONK_95DjAhRjUc-X5B9mX5R9nKng05gg")  
		page = HTTParty.get(file)
		parse = Nokogiri::HTML(page) 
		urls= []
		parse.css('a').each do |a| 
			binding.pry
			a.css('.card')
			 
			# a.card-link

		end
	end


 end
 