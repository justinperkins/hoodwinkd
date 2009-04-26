require 'rubygems'
$: << File.expand_path("../lib", __FILE__)
require 'hoodwinkd'

Hoodwinkd.connect 'config/database.yml'
Hoodwinkd.create if Hoodwinkd.respond_to? :create

run Rack::Adapter::Camping.new(Hoodwinkd)