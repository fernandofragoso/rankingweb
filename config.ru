require File.join(File.dirname(__FILE__), 'application.rb')

set :run, false
set :environment, :production

run Sinatra::Application

# run MyApp.new
