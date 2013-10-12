require 'yaml'

namespace :db do
  desc "create backup"
  task :backup do
    sh "heroku pgbackups:capture --expire"
    sh "heroku pgbackups:url | xargs wget -O tmp/database.dump"
  end

  desc "restore from backup"
  task :restore do

  end
end
