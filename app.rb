require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:"square/new")
end

get("/square/new") do
  erb(:"square/new")
end

get("/square/results") do
   @number = params.fetch("number")

  erb(:"square/results")
end

get("/square_root/new") do
  
  erb(:"square_root/new")
end

get("/square_root/results") do
  @number = params.fetch("user_number")
  erb(:"square_root/results")
end

get("/random/new") do
  erb(:"random/new")
end

get("/random/results") do
  erb(:"random/results")
end

get("/payment/new") do
  erb(:"payment/new")
end

get("/payment/results") do
  erb(:"payment/results")
end
