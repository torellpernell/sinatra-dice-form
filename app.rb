require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:home)
end

get("/process_roll/:dice/:sides") do
  @dice = params.fetch("dice")
  @sides = params.fetch("sides")
  
  @rolls = []

  @dice.times do
    die = rand(1..@sides)

    @rolls.push(die)
  end

  erb(:process_roll)
end
