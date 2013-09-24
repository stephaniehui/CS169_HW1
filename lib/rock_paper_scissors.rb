class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    # YOUR CODE HERE
    raise NoSuchStrategyError, "Strategy must be one of R,P,S" unless player1[1] =~ /[SRP]/ && player2[1] =~ /[SRP]/
    if player1[1]==player2[1]
    	return player1
  	end
  	if player1[1] == "S" && player2[1] == "P"
    	return player1
  	end
  	if player1[1]=="S" && player2[1]=="R"
    	return player2
  	end
  	if player1[1]=="R" && player2[1]=="P"
    	return player2
  	end
  	if player1[1]=="R" && player2[1]=="S"
    	return player1
  	end
  	if player1[1]=="P" && player2[1]=="S"
    	return player2
  	end
  	if player1[1]=="P" && player2[1]=="R"
    	return player1
  	end
  end

  def self.is_player_move?(arr)
  	return arr[0].is_a?(String) && arr[1].is_a?(String)
  end

  def self.tournament_winner(tournament)
  	return get_winner(tournament[0], tournament[1])
  end

  def self.get_winner(a, b)
  	raise WrongNumberOfPlayersError unless a.length == 2 && b.length == 2
  	if is_player_move?(a) && is_player_move?(b)
  		return winner(a, b)
  	else
  		return get_winner(get_winner(a[0], a[1]), get_winner(b[0], b[1]))
  	end
  end

end
