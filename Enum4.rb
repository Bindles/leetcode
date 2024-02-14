x ||= 5
p x
x ||=7
p x

a = false
a ||= 5
p a

freq = { "I" => 1, "don't" => 1, "like" => 1, "spam" => 963 }
p freq["spam"] ||= 0
p freq['newspam'] ||= 99

[1, 2, 3].reduce(0) do |accumulator, v|
  p accumulator: accumulator, v: v, new_accumulator: accumulator + v
  p accumulator + v
end
# {:accumulator=>0, :v=>1, :new_accumulator=>1}
# {:accumulator=>1, :v=>2, :new_accumulator=>3}
# {:accumulator=>3, :v=>3, :new_accumulator=>6}
#  => 6
a =[1, 2, 3].reduce(0) do |accumulator, v|
  accumulator + v
end
p a

s = 'string'
p s.gsub(/b/, 'c')
# => 'string'
p s.gsub!(/b/, 'c')
# => nil

hey_its_ordered = { first: 'mama', second: 'papa', third: 'baby' }

# [:first, 'mama']
# [:second, 'papa']
# [:third, 'baby']
# ...and adding one more element:
hey_its_ordered[:fourth] = 'grandma'
p hey_its_ordered.each { |entry| pp entry }

p RANKS = %w(2 3 4 5 6 7 8 9 10 J Q K A).freeze
# Instead of typing that all out we could do this:
p ('2'..'10').chain(%w(J Q K A))


p [1, 2, 3].cycle.first(4)
p [1, 2, 3].cycle(3)
p [1, 2, 3].cycle(3).to_a

p [1, 2, 3].each_with_object({}) { |i, a| a[i.to_s] = i }
p [1, 2, 3].each_with_object([]) { |i, arrayobj| p i, arrayobj; arrayobj << i }
# => {"1"=>1, "2"=>2, "3"=>3}

mynums= (0..6).to_a
p mynums.each.with_index.with_object([]) { |(num, index), arrayobj| arrayobj << num+3; p index, arrayobj}.select(&:even?)
p mynums[[1,2,3].sample]


a = [1, 2, 3]
b = [2, 3, 4]
c = [3, 4, 5]

p a.zip(b, c)
# => [[1, 2, 3], [2, 3, 4], [3, 4, 5]]