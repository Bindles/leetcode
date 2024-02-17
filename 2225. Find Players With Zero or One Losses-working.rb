class Player
  def initialize(matches)
    @wins = Hash.new(0)
    @losses = Hash.new(0)
    
    matches.each do |winner, loser|
      @wins[winner] += 1
      @losses[loser] += 1
    end
  end
  
  def players_with_zero_or_one_losses
    zero_losses = []
    one_loss = []
    
    @wins.keys.each do |player|
      if @losses[player] == 0
        zero_losses << player
      elsif @losses[player] == 1
        one_loss << player
      end
    end
    
    [zero_losses.sort, one_loss.sort]
  end
end

# Test cases
matches1 = [[1,3],[2,3],[3,6],[5,6],[5,7],[4,5],[4,8],[4,9],[10,4],[10,9]]
player1 = Player.new(matches1)
puts "Example 1:"
puts "Players with zero or one losses: #{player1.players_with_zero_or_one_losses}"

matches2 = [[2,3],[1,3],[5,4],[6,4]]
player2 = Player.new(matches2)
puts "\nExample 2:"
puts "Players with zero or one losses: #{player2.players_with_zero_or_one_losses}"


# @param {Integer[][]} matches
# @return {Integer[][]}
def find_winners(matches = [[1,3],[2,3],[3,6],[5,6],[5,7],[4,5],[4,8],[4,9],[10,4],[10,9]])
    p matches.group_by {|winner, loser| loser}.select{ _2.size ==1}
end

def find_winners(matches = [[1,3],[2,3],[3,6],[5,6],[5,7],[4,5],[4,8],[4,9],[10,4],[10,9]])
  p matches.group_by { |_, loser| loser }
          .select { |_, matches| matches.size == 0 }
          .transform_values { |matches| matches.map(&:first).sort }
end

def find_winners(matches = [[1,3],[2,3],[3,6],[5,6],[5,7],[4,5],[4,8],[4,9],[10,4],[10,9]])
  p matches.group_by { |_, loser| loser }
          .select { |_, matches| matches.size <= 1 }
          .transform_values { |matches| matches.map { |winner, _| winner }.sort }
end


def find_winners(matches = [[1,3],[2,3],[3,6],[5,6],[5,7],[4,5],[4,8],[4,9],[10,4],[10,9]])
  winners = matches.map(&:first).uniq
  losses = matches.map(&:last)
  
  zero_loss_players = winners - losses
  one_loss_players = matches.group_by { |_, loser| loser }
                            .select { |_, matches| matches.size == 1 }
                            .transform_values { |matches| matches.map(&:first).sort }

  p [zero_loss_players.sort, one_loss_players.values.flatten.sort]
end

def find_winners(matches = [[1,3],[2,3],[3,6],[5,6],[5,7],[4,5],[4,8],[4,9],[10,4],[10,9]])
  winners = matches.map(&:first).uniq
  losses = matches.map(&:last)
  
  zero_loss_players = winners - losses
  one_loss_players = matches.group_by { |_, loser| loser }
                            .select { |_, matches| matches.size == 1 }
                            .transform_values { |matches| matches.map(&:first).sort }
                            .values.flatten.uniq

  p [zero_loss_players.sort, one_loss_players.sort]
end

# Test the method
find_winners


# Test the method
find_winners

# Test the method
find_winners

# Test the method
find_winners

p find_winners