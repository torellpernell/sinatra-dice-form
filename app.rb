require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:home)
end

get("/process_roll?") do
  @num_dice = params.fetch("dice")
  @num_sides = params.fetch("sides")
  
 
  @rolls = []

  @num_dice.to_i.times do 
    die = rand(1..@num_sides.to_i)

    @rolls.push(die)
  end

  
  erb(:process_roll)
end
