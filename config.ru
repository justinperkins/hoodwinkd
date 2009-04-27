require 'rubygems'
$: << File.expand_path("../lib", __FILE__)
require 'hoodwinkd'

Dir.chdir(File.join(File.dirname(__FILE__), 'static'))
Hoodwinkd.connect '../config/database.yml'
Hoodwinkd.create if Hoodwinkd.respond_to? :create

run Rack::Adapter::Camping.new(Hoodwinkd)