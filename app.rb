require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base

  get "/" do
    erb :user_input
  end

  post "/piglatinize" do
    latinizer = PigLatinizer.new
    @latinized = latinizer.piglatinize(params[:user_phrase])
    erb :piglatinize
  end
end
