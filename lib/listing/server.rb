module Listing
  class Server < Sinatra::Base

    include ERB::Util

    set :root, "#{File.dirname(__FILE__)}/../../"

    get '/' do
      erb :index
    end

  end
end
