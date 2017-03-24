require 'sinatra/base'

# pull in the helpers and controllers
Dir.glob('./controllers/*.rb').each { |file| require file }

# map the controllers to routes
run ApplicationController
use PlayerController

set :run, false
set :force_ssl, false
set :environment, :development

run Sinatra::Application
