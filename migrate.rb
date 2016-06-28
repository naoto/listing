require 'listing'

class CreateTable < ActiveRecord::Migration
  def self.up
    create_table :panel do |t|
      t.string :path
    end
  end
end

CreateTable.new.up
