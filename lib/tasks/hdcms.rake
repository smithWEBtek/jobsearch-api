namespace :db do
  desc 'heroku pg:reset, migrate, seed'
  task hdcms: :environment do
    exec('heroku pg:reset --app jobsearch-api --confirm jobsearch-api
      heroku run rake db:migrate --app jobsearch-api
      heroku run rake db:seed --app jobsearch-api')
  end
end
