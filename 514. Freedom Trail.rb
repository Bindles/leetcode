#* 514. Freedom Trail
ring = "godding"; key = "gd"
# @param {String} ring
# @param {String} key
# @return {Integer}
def find_rotate_steps(ring, key)
  n = ring.size
  pos = {}

  (0...n).each do |i|
    ch = ring[i]
    pos[ch] ||= []
    pos[ch] << i
  end

  tmp_step = [[0, 0]] 

  key.each_char do |char|
    next_step = []
    next_pos = pos[char]

    next_pos.each do |tmp_pos|
      tmp_diff = tmp_step.map(&:first).max + n

      tmp_step.each do |step|
        diff = (step.last - tmp_pos) % n
        diff = n - diff if diff > n / 2

        tmp_diff = [tmp_diff, diff + step.first].min
      end

      next_step << [tmp_diff, tmp_pos]
    end

    tmp_step = next_step
  end

  min_step = tmp_step.min_by(&:first)
  min_step.first + key.length
end
p find_rotate_steps(ring, key)

#*
def find_rotate_steps(ring, key)
  n = ring.length
  pos = Hash.new { |h, k| h[k] = [] }

  ring.chars.each_with_index { |ch, i| pos[ch] << i }

  tmp_step = [[0, 0]] # [step, pos]

  key.each_char do |char|
    next_step = []

    pos[char].each do |tmp_pos|
      tmp_diff = tmp_step.map(&:first).max + n

      tmp_step.each do |step|
        diff = (step.last - tmp_pos) % n
        diff = n - diff if diff > n / 2

        tmp_diff = [tmp_diff, diff + step.first].min
      end

      next_step << [tmp_diff, tmp_pos]
    end

    tmp_step = next_step
  end

  tmp_step.min_by(&:first).first + key.length
end
p find_rotate_steps(ring, key)

#*
def find_rotate_steps(ring, key)
  dict = {}

  dfs = lambda do |row, col|
    return dict[[row, col]] if dict[[row, col]]
    return 0 if col >= key.length

    i = row
    count1 = 0
    count2 = 0
    loop do
      count1 += 1
      break if ring[i] == key[col]

      i += 1
      i %= ring.length
    end

    j = row
    loop do
      count2 += 1
      break if ring[j] == key[col]

      j -= 1
      j = ring.length + j if j < 0
    end

    dict[[row, col]] = [count1 + dfs.call(i, col + 1), count2 + dfs.call(j, col + 1)].min
    dict[[row, col]]
  end

  dfs.(0, 0)
end
p find_rotate_steps(ring, key)