require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require File.join(File.dirname(__FILE__), 'environment')

error do
  e = request.env['sinatra.error']
  puts e.backtrace.join("\n")
  'Sinatra Error!'
end

get '/' do
  'test'
end
