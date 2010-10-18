set :deploy_to, "/var/www"

role :app, "localhost"
role :db, "localhost", :primary => true
