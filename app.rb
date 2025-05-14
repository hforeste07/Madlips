require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end



get("/horror") do
  erb(:horror)
end

get("/horror/ghost/form") do
  erb(:horror_ghost_form)
end

get("/horror/ghost/madlib") do
  erb(:horror_ghost_result)
end

get("/horror/asylum/form") do
  erb(:horror_asylum_form)
end

get("/horror/asylum/madlib") do
  erb(:horror_asylum_result)
end

get("/horror/murder/form") do
  erb(:horror_murder_form)
end

get("/horror/murder/madlib") do
  erb(:horror_murder_result)
end

get("/horror/nature/form") do
  erb(:horror_nature_form)
end

get("/horror/nature/madlib") do
  erb(:horror_nature_result)
end



get("/scify") do
  erb(:scify)
end
