#* 2305. Fair Distribution of Cookies
cookies = [8,15,10,20,8]; k = 2
# @param {Integer[]} cookies
# @param {Integer} k
# @return {Integer}
#*
def distribute_cookies(cookies, k)
  cookie_distribution = Set.new([Array.new(k, 0)]) 

  cookies.each do |cookie|
    new_cookie_distribution = Set.new()

    cookie_distribution.each do |distribution|
      (0...k).each do |i|
        new_dist = distribution.dup
        new_dist[i] += cookie
        new_cookie_distribution.add(new_dist.sort)
      end
    end

    cookie_distribution = new_cookie_distribution
  end

  cookie_distribution.map { |dist| dist.max }.min
end
p distribute_cookies(cookies, k)
#* SLOW AF . . . . . BOTH . . .
#*
def distribute_cookies(cookies, k, l = nil, j = 0)
  if l.nil?
    l = Array.new(k, 0)
  end

  if l.count(0) > cookies.length - j
    return Float::INFINITY
  end

  if cookies.length == j
    return l.max
  end

  return (0...k).map { |i| distribute_cookies(cookies, k, l[0...i] + [l[i] + cookies[j]] + l[i+1..-1], j+1) }.min
end
p distribute_cookies(cookies, k) 

#*
def distribute_cookies(cookies, k, l = nil, j = 0)
  l = Array.new(k, 0) if l.nil?
  return Float::INFINITY if l.count(0) > cookies.length - j
  return l.max if cookies.length == j
  (0...k).map { |i| distribute_cookies(cookies, k, l[0...i] + [l[i] + cookies[j]] + l[i+1..-1], j+1) }.min
end
puts distribute_cookies(cookies, k)
#* . . . . .




# l.count(0) > cookies.length - j ? (return Float::INFINITY) : (return l.max)
