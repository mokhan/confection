namespace :db do
  task :backup do
    sh "heroku pgbackups:capture --expire"
    sh "heroku pgbackups:url | xargs wget -O tmp/database.tmp"
  end
end
