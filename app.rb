require 'sinatra/base'

class GraphicalEditor < Sinatra::Base

  get('/') do
    erb :index
  end

end

