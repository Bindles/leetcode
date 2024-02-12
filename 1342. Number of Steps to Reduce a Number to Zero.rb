# @param {Integer} num
# @return {Integer}

#MY SOL | CONCISE
def number_of_steps(num)
  steps=0
  num.even? ? num /= 2 : num-=1 and steps+=1 until num==0 ; return steps
end

#MY SOL
def number_of_steps(num)
  steps=0
    until num==0
      p num.even? ? num = num / 2 : num-=1
      steps+=1
    end
    steps
end
p number_of_steps(14)