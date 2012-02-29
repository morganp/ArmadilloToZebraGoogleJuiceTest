
source :rubygems
#If this is a gem 
#Normal gems go in armadillo_to_zebra_google_juice_test.gemspec
#gemspec
gem "heroku", "~>2"
gem "sinatra", "~>1" 
#gem "activerecord", "~>3" 
#gem "sinatra-session", "~>1"
#gem "sinatra-flash", "~> 0.3"
#activerecord-postgresql-adapter

#development and test not install on heroku deployment
group :development do
#  gem "sinatra-reloader", "~>0"
#  gem "sqlite3-ruby", "~>1"
  gem "thin", "~>1"
end

group :test do
  gem "rspec", :require => "spec"
end
