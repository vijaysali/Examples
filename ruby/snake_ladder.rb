class Board
  attr_accessor :player_iterator, :max_size, :players, :snake_ladder, :dice_capacity, :current_turn, :won_list

  def initialize(max_size = 100, players)
    @max_size        = max_size
    @players         = players
    @snake_ladder    = {}
    @dice_capacity   = 6
    @current_turn    = nil
    @won_list        = []
    @player_iterator = players.cycle
  end

  def set_snake(head, tail)
    if head > tail
      @snake_ladder[head] = tail
    end
  end

  def set_ladder(head, tail)
    if tail > head
      @snake_ladder[tail] = head
    end
  end

  def roll_dice
    rand(@dice_capacity)
  end

  def set_turn
    self.player_iterator.next
  end

  def play

    while not self.players.empty?
      self.current_turn = self.set_turn
      x = roll_dice
      puts "-"*10
      puts "Game on for #{self.current_turn.name} -> #{x}"
      self.move_player_position(self.current_turn, x)
      puts "#{self.current_turn.name} -> #{self.current_turn.curr_position}"
      puts "-"*10
      puts "Game finished"
      puts "Winners list: #{self.won_list.map(&:name)}"
    end
  end

  def move_player_position(player, dice_value)
    new_position =  player.curr_position + dice_value
    if self.snake_ladder[new_position].nil?
      player.curr_position = new_position
    else
      player.curr_position = self.snake_ladder[new_position]
    end

    if player.curr_position >= self.max_size
      puts "Hurray!!!!....... #{player.name} has won the game"
      self.players.delete(player)
      self.won_list << player
    end
  end
end

class Player
  attr_accessor :name, :curr_position

  def initialize(name)
    @name          = name
    @curr_position = 0
  end

end

players = 1.upto(3).map {|x| Player.new("player-#{x}") }
b = Board.new(50, players)
b.set_snake(30, 10)
b.set_ladder(15, 25)
puts b.inspect
b.play
