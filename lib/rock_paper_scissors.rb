class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    # YOUR CODE HERE
    raise NoSuchStrategyError unless (player1.upcase.match(/[SRP]/) && player2.upcase.match(/[SRP]/))
    if player1==player2
    	return player1
  	end
  	if player1 == "S" && player2 == "P"
    	return player1
  	end
  	if player1=="S" && player2=="R"
    	return player2
  	end
  	if player1=="R" && player2=="P"
    	return player2
  	end
  	if player1=="R" && player2=="S"
    	return player1
  	end
  	if player1=="P" && player2=="S"
    	return player2
  	end
  	if player1=="P" && player2=="R"
    	return player1
  	end
  end

  def game_winner(game)
  	raise WrongNumberOfPlayersError unless game.length == 2
  	if game[0][0].is_a?(String)
    	p1 = game[0]
    	p2 = game[1]
    	if self.winner(p1[1],p2[1]) == p1[1]
      		return p1
    	else
      		return p2
    	end
  	else
    	p1 = game_winner(game[0])
    	p2 = game_winner(game[1])
    	if self.winner(p1[1],p2[1]) == p1[1]
      		return p1
    	else
      		return p2
    	end
  	end
  end


  def self.tournament_winner(tournament)
    # YOUR CODE HERE
    if tournament[0][0].is_a?(String)
    	game1 = game_winner(tournament)
    	return game1
  	else
    	bracket1 = game_winner(tournament[0])
    	bracket2 = game_winner(tournament[1])
    	new_bracket = [bracket1, bracket2]
    	return game_winner(new_bracket)
  	end

  end

end
