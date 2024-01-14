# @param {Integer} num_rows
# @return {Integer[][]}
  def generate(numRows = 5)
    arr=[]
      (numRows).times.with_index do |num,row|
      arr << (1 * (row+1))
      p arr
      end
  end

p generate