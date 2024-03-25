#* 42. Trapping Rain Water
height = [0,1,0,2,1,0,1,3,2,1,2,1]
# @param {Integer[]} height
# @return {Integer}
#* NY SOL | EASY | GETTING BETTER YESS
def trap(h)
  l = 0
  r = h.length - 1
  lmax = -Float::INFINITY
  rmax = -Float::INFINITY
  result=0

  while l < r
    lmax = [lmax, h[l]].max
    rmax = [rmax, h[r]].max
    result += (lmax < rmax) ? lmax - h[l] : rmax - h[r]
    l += 1 if lmax < rmax
    r -= 1 if lmax >= rmax
  end
  result
end
