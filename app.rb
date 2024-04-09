require "sinatra"
require "sinatra/reloader"

get("/") do
 erb(:homepage)
end

get("/rock") do
  moves = ["rock", "paper", "scissors"]

  @comp_move = moves.sample

  if @comp_move == "rock"
    @outcome = "tied"
  elsif @comp_move == "paper"
    @outcome = "lost"
  else
    @outcome = "won"
  end

 
  erb(:zebra)
end


get("/paper") do
  moves = ["rock", "paper", "scissors"]
  @comp_move = moves.sample
  
  case @comp_move
  when "rock"
    @outcome = "won"
  when "scissors"
    @outcome = "lost"
  else
    @outcome = "tied"
  end

  erb(:giraffe)
end
get("/scissors") do
  moves = ["rock", "paper", "scissors"]
  @comp_move = moves.sample

  case @comp_move
  when "rock"
    @outcome = "lost"
  when "scissors"
    @outcome = "tied"
  else
    @outcome = "won"
  end

  erb(:hippo)
end
