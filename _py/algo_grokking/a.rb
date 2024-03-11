arr = (1..40).to_a
a = arr.bsearch { |num| num <=> 23 }
p a


array=(1..11).to_a
steps=0
res = array.bsearch_index{|num| steps+=1; 3 <=> num}
p "#{res} #{steps}"

array = (1..11).to_a.sort!
p array.bsearch { |num| num - 3 }
