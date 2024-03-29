#* 120. Triangle
triangle = [[2],[3,4],[6,5,7],[4,1,8,3]]
# @param {Integer[][]} triangle
# @return {Integer}
#* MY SOL | CONCISE
def minimum_total(triangle)
  triangle.reverse.inject{|bot_row,upper_row|upper_row.zip(bot_row, bot_row[1..])
  .map{|upper,left,right| upper + [left, right].min } }[0]
end
p minimum_total(triangle)

#* MY SOL 
def minimum_total(triangle)
  triangle.reverse.inject do |bottom_row, upper_row|
    upper_row.zip(bottom_row, bottom_row[1..]).map do |upper, left, right|
      upper + [left, right].min
    end
  end[0]
end
p minimum_total(triangle)
