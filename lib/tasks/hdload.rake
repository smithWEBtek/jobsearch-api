namespace :db do
  desc 'heroku data dump yaml'
  task hdload: :environment do
    exec('heroku db:data:load --app swt-jobsearch-api --confirm swt-jobsearch-api')
  end
end
