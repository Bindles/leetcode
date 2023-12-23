# @param {String} path
# @return {Boolean}
def is_path_crossing(path="NESWW")
  patha = path.split('')
  p patha
  xy=[0,0]
  pointslog=[]
  pointslog << [0,0]
    patha.each do |pd|
      if pd == 'N'
        xy[0]+=1
      elsif pd == 'S'
        xy[0]-=1
      elsif pd == 'E'
         xy[1]+=1
      elsif pd == "W"
        xy[1]-=1
      end
    p xy 
    return true if pointslog.include?(xy)
    pointslog << xy.dup
    p pointslog
    end
  return false
end

puts is_path_crossing

