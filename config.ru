require 'sinatra'

class App < Sinatra::Base
  GAMES = {
    "1" => {title: "Super Mario"},
    "2" => {title: "Donkey Kong"},
    "3" => {title: "Godzilla"}
  }

  get "/add/:num1/:num2" do
     sum = params["num1"].to_i + params["num2"].to_i

     {result: sum}.to_json
  end

  get '/games/:id' do
    pp params
    game = GAMES[params[:id]]
    game.to_json
  end
  
end

run App
