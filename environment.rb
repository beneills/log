require 'rubygems'

Bundler.require(:default)
require 'bundler/setup'

$LOAD_PATH.unshift("#{File.dirname(__FILE__)}/lib")
Dir.glob("#{File.dirname(__FILE__)}/lib/*.rb") { |lib| require File.basename(lib, '.*') }

configure :test do
  DataMapper.setup(:default, "sqlite3://test.db")
end
