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
  @user_min = params.fetch("user_min")
  @user_max = params.fetch("user_max")
  erb(:"random/results")
end

get("/payment/new") do
  erb(:"payment/new")
end

get("/payment/results") do
  @user_apr = params.fetch("user_apr")
  @user_years = params.fetch("user_years")
  @user_pv = params.fetch("user_pv")

  @monthly_apr = @user_apr.to_f / 100 / 12
  @numerator = @user_pv.to_f * @monthly_apr.to_f
  @denominator = 1 - ((1 + @monthly_apr.to_f)**-(@user_years.to_i * 12))
  @result = @numerator / @denominator


  erb(:"payment/results")
end
