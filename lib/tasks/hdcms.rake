namespace :db do
  desc 'heroku pg:reset, migrate, seed'
  task hdcms: :environment do
    exec('heroku pg:reset --app swt-jobsearch-api --confirm swt-jobsearch-api
      heroku run rake db:migrate --app swt-jobsearch-api
      heroku run rake db:seed --app swt-jobsearch-api')
  end
end
