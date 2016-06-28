require 'yaml'

module Listing
  class Database

    def self.up
      new
    end

    def initialize
      ActiveRecord::Base.establish_connection(
        YAML.load_file('config/database.yaml')
      )
    end
  end
end

