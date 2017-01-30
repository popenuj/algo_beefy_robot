

class BeefyRobotSimulator

  DIRECTIONS = ['NORTH', 'EAST', 'SOUTH', 'WEST']

  attr_reader :x, :y, :direction

  def initialize
    @placement = false
    get_move
  end

  def place(x, y, f)
    @x = x.to_i
    @y = y.to_i
    if DIRECTIONS.include? f
      set_direction(direction)
    else
      puts "Please enter a valid direction for Beefy to face."
    end
    @placement = true
  end

  def set_direction(direction)
    # logic for rotating the array so direction beefy is facing is zero index
  end

  def get_move
    puts 'Please select a move for Beefy.'
    move = gets
    check_move(move)
  end

  def check_move(move)
    if !@placement
      if move.split.first != "PLACE"
        puts "I'm sorry, please place Beefy before trying to move him."
      else
        place()
    end
  end

end
