require File.join(File.dirname(__FILE__), 'application')

set :run, false
set :environment, :test

run Sinatra::Application
