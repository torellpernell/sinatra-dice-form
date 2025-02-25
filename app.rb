require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:home)
end

get("/process_roll/:dice/:sides") do
  @dice = params.fetch("dice")
  @sides = params.fetch("sides")
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>

  "

  erb(:process_roll)
end
