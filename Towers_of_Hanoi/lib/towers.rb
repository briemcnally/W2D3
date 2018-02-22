class Towers
  attr_accessor :towers, :from_tower, :to_tower

  def initialize
    @towers = [[3, 2, 1], [], []]
  end

  def play
    until won?
      get_move
      move
    end
  end

  def get_move
    puts "Enter a tower you would like to move from (0 1 2)"

    @from_tower = gets.chomp.to_i

    puts "Enter a tower you would like to move to (0 1 2)"
    @to_tower = gets.chomp.to_i
  end

  def move(from_tower, to_tower)
    from_disc = towers[from_tower].pop
    to_disc = towers[to_tower].last
    if towers[to_tower].empty? || to_disc > from_disc
      towers[to_tower] << from_disc
    else
      raise ArgumentError
    end
    towers
  end

  def won?
    towers[1].length == 3 || towers[2].length == 3
  # towers.first.empty?
  end

end
