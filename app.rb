require 'bundler'
Bundler.require
require_relative 'lib/user'
require_relative 'lib/event'
require_relative 'lib/event_creator'

User.new("julie@julie.com", 35)
User.new("jean@jean.com", 23)
User.new("claude@claude.com", 75)





