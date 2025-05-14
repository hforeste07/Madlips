require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/horror") do
  erb(:horror)
end
