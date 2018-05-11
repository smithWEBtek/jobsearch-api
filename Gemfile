source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'pdf-reader'
gem 'mailgun'
gem 'bootstrap-sass'
gem 'dotenv-rails'
gem 'rails-erd'
gem 'sprockets', '~> 3.0'
gem 'pry-rails'
gem 'watir'
gem 'nokogiri', '>=1.5.9'
gem 'httparty'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
# gem 'rails', '~> 5.0.2'
gem 'rails', '~> 5.1.0'
gem 'pg', '~> 0.18' 
gem 'puma', '~> 3.0'
gem 'yaml_db'
 
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
gem 'rack-cors'
gem 'active_model_serializers', '~> 0.10.0'
gem 'seed_dump'
gem 'activeadmin', github: 'activeadmin'
group :development, :test do
  gem 'foreman', '~> 0.82.0'
  gem 'pry'
 gem 'listen'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
 