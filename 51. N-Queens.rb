#* 51. N-Queens
n = 4
# @param {Integer} n
# @return {String[][]}
#* MY SOL 2
def solve_n_queens(n)
  solutions = []
  stack = []
  stack.push([[], Set.new, Set.new, 0])

  while !stack.empty?
    state, pd, nd, r = stack.pop
    if r < n
      n.times do |c|
        next if state.include?(c) || pd.include?(c - r) || nd.include?(c + r)

        new_pd = pd.clone.add(c - r)
        new_nd = nd.clone.add(c + r)
        new_state = state.clone.push(c)

        stack.push([new_state, new_pd, new_nd, r + 1])
      end
    else
      solutions << state
    end
  end
  solutions.map { |sol| sol.map { |p| "#{'.' * p}Q#{'.' * (n - p - 1)}" } }
end
p solve_n_queens(n)

#* MY SOL 1
def solve_n_queens(n)
  solutions = []
  stack = []
  stack.push([[], Set.new, Set.new, 0])

  while !stack.empty?
    state, pd, nd, row = stack.pop
    if row < n
      n.times do |c|
        if !state.include?(c) && 
        !pd.include?(c - row) && 
        !nd.include?(c + row)
        then
          stack.push([state + [c], pd | Set.new([c - row]), nd | Set.new([c + row]), row + 1])
        end
      end
    else
      solutions << state
    end
  end
  solutions.map { |sol| sol.map { |p| "#{'.' * p}Q#{'.' * (n - p - 1)}" } }
end
p solve_n_queens(n)
