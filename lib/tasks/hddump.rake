namespace :db do
  desc 'heroku data dump yaml'
  task hddump: :environment do
    exec('heroku db:data:dump --app swt-jobsearch-api --confirm swt-jobsearch-api')
  end
end
