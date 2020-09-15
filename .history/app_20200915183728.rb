require "sinatra/base"

class Battle < Sinatra::Base
  get "/" do
    "have i actually fixed this??!"
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
