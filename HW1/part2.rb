class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  if game[0][1].scan(/[RPS]/) && game[1][1].scan(/[RPS]/)
    winning_combinations = ["RS", "SP", "PR"]
    return winning_combinations.index(game[0][1]+game[1][1])? game[0] : game[1]
    
  else
    raise NoSuchStrategyError
  end
end

def rps_tournament_winner(tour)
  if !tour[0][1].is_a?(String)
    rps_game_winner([rps_tournament_winner(tour[0]), rps_tournament_winner(tour[1])])
  else
    rps_game_winner(tour)
  end
# while
#  if game[]
end

puts rps_tournament_winner([[[["a", "P"], ["b", "S"]], [["c", "R"], ["d", "S"]]], [[["A", "S"], ["B", "P"]], [["C", "R"], ["D", "P"]]]]).to_s
