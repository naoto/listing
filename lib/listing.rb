require "listing/version"

module Listing

  require 'sinatra'
  require 'erb'
  require 'listing/options'
  require 'listing/server'
  require 'listing/database'
  require 'active_record'
  require 'listing/model/panel'

  Database.up
  
  def self.start(options)

    Server.run!(Options.load(options))
  end
end
