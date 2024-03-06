#*289. Game of Life
# @param {Integer[][]} board
# @return {Void} Do not return anything, modify board in-place instead.
#*SOL 1
def game_of_life(board = [[0,1,0],[0,0,1],[1,1,1],[0,0,0]])
  m = board.count
  n = board[0].count
    
  m.times do |i|
    n.times do |j|
      [[i+1, j-1], [i+1, j], [i+1, j+1], [i, j+1]].each do |i2, j2|
        if (0...m).cover?(i2) && (0...n).cover?(j2)
          board[i2][j2] += (board[i][j] & 1) << 1
        end
      end
    end
  end
    
  (m-1).downto(0) do |i|
    (n-1).downto(0) do |j|
      [[i, j-1], [i-1, j-1], [i-1, j], [i-1, j+1]].each do |i2, j2|
        if (0...m).cover?(i2) && (0...n).cover?(j2)
          board[i2][j2] += (board[i][j] & 1) << 1
        end
      end
      
      board[i][j] = (5...8).cover?(board[i][j]) ? 1 : 0
    end
  end

end
p game_of_life

#*SOL 2
def game_of_life(board = [[0,1,0],[0,0,1],[1,1,1],[0,0,0]])
  neighbors = [[-1, 0], [1, 0], [0, 1], [0, -1], [1,1], [1,-1], [-1,1], [-1,-1]]
  board.size.times do |i|
    board[0].size.times do |j|
      live_count = neighbors.map do |x,y|
        if i+x < board.size && i+x >= 0 && j+y < board[0].size && j+y >= 0
          if board[i+x][j+y] == 'live'
            0
          elsif board[i+x][j+y] == 'dead'
            1
          else
            board[i+x][j+y]
          end
        end
      end.count(1)
      if board[i][j] == 0
        board[i][j] = 'live' if live_count == 3
      else
        board[i][j] = 'dead' if live_count > 3 || live_count < 2
      end
    end
  end
  board.size.times do |i|
    board[0].size.times do |j|
      board[i][j] = if board[i][j] == 'live'
        1
      elsif board[i][j] == 'dead'
        0
      else
        board[i][j]
      end
    end
  end
end
p game_of_life

#*3
def game_of_life(board = [[0,1,0],[0,0,1],[1,1,1],[0,0,0]])
  m = board.length
  n = board.first.length
      
  m.times do |x|
    n.times do |y|
      live = 0
      
      # x-1,y-1 | x-1,y | x-1,y+1
      # x,y-1   |  x,y  | x,y+1
      # x+1,y-1 | x+1,y | x+1,y+1
      
      ([x-1, 0].max).upto([x+1, m-1].min) do |i|
        ([y-1, 0].max).upto([y+1, n-1].min) do |j|
          next if x == i && y == j
		  # bitwise and 01
          live += board[i][j] & 1
        end
      end
      
      if live == 3 || (live == 2 && board[x][y] == 1)
	    # Mark second lowest bit to 1
        board[x][y] += 2
      end
    end
  end
      
  m.times do |x|
    n.times do |y|
	  # Bitwise right shift
      board[x][y] >>= 1
    end
  end
end
p game_of_life

#* 4
def game_of_life(board = [[0,1,0],[0,0,1],[1,1,1],[0,0,0]])
  new_board = board.size.times.reduce([]) { |arr, i| arr << board[i].clone }
  board.size.times.each do |i|
    board[i].size.times.each { |j| board[i][j] = compute_cell(new_board, i, j) }
  end
end

def compute_cell(board, i, j)
  count = live_cells(board, i, j)
  cell = board[i][j]
  if live?(cell) && count < 2
    0
  elsif live?(cell) && (count == 2 || count == 3)
    1
  elsif live?(cell) && count > 3
    0
  elsif !live?(cell) && count == 3
    1
  else
    0
  end
end

def live_cells(board, _i, _j)
  (([1, 0, -1] * 2).permutation(2).uniq.to_a - [[0, 0]]).reduce(8) do |live_cells, (i, j)|
    i+= _i; j += _j
    if i < 0 || i == board.size || j < 0 || j == board.first.size || !live?(board[i][j])
      live_cells -= 1
    end
    live_cells
  end
end

def live?(cell)
  cell == 1 
end
p game_of_life

#*5 | LAST
def game_of_life(board = [[0,1,0],[0,0,1],[1,1,1],[0,0,0]])
  iterate(board, :mutate_cell)
  iterate(board, :format_cell)
end

def iterate(board, func)
  board.size.times.each do |i|
    board[i].size.times.each { |j| board[i][j] = method(func).call(board, i, j) }
  end
end

def mutate_cell(board, i, j)
  count = live_neighbors(board, i, j)
  cell = board[i][j]
  if alive?(cell) && count < 2
    -1
  elsif alive?(cell) && count > 3
    -1
  elsif !alive?(cell) && count == 3
    2
  else
    cell
  end
end

def live_neighbors(board, _i, _j)
  (([1, 0, -1] * 2).permutation(2).uniq.to_a - [[0, 0]]).reduce(8) do |live_cells, (i, j)|
    i+= _i; j += _j
    if i < 0 || i == board.size || j < 0 || j == board.first.size || !alive?(board[i][j])
      live_cells -= 1
    end
    live_cells
  end
end

def alive?(cell) 
  cell == -1 || cell == 1
end

def format_cell(board, i, j)
  board[i][j] > 0 ? 1 : 0
end
p game_of_life