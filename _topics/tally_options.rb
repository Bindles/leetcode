c ={}
a =[1,2,3,4,5,1,1,7,5]
b = a.tally
p b
a.tally(c)
p c

c = %w[b a z].tally(c)
p c


#  call-seq:
#    tally -> new_hash
#    tally(hash) -> hash
#
#  Returns a hash containing the counts of equal elements:
#
#  - Each key is an element of +self+.
#  - Each value is the number elements equal to that key.
#
#  With no argument:
#
#    %w[a b c b c a c b].tally # => {"a"=>2, "b"=>3, "c"=>3}
#
#  With a hash argument, that hash is used for the tally (instead of a new hash),
#  and is returned;
#  this may be useful for accumulating tallies across multiple enumerables:
#
#    hash = {}
#    hash = %w[a c d b c a].tally(hash)
#    hash # => {"a"=>2, "c"=>2, "d"=>1, "b"=>1}
#    hash = %w[b a z].tally(hash)
#    hash # => {"a"=>3, "c"=>2, "d"=>1, "b"=>2, "z"=>1}
#    hash = %w[b a m].tally(hash)
#    hash # => {"a"=>4, "c"=>2, "d"=>1, "b"=>3, "z"=>1, "m"=> 1}


p %w[b c a d].sort              # => ["a", "b", "c", "d"]
p x = {foo: 0, bar: 1, baz: 2}
p x.sort # => [[:bar, 1], [:baz, 2], [:foo, 0]]
p x.sort_by(&:first)
p x.sort_by{|key, value| key}
p '-'
p x.sort_by(&:last)
p x.sort_by{|key, value| value}.to_h



#*  call-seq:
#*    one?                  -> true or false
#*    one?(pattern)         -> true or false
#*    one? {|element| ... } -> true or false
#*
#*  Returns whether exactly one element meets a given criterion.
#*
#*  With no argument and no block,
#*  returns whether exactly one element is truthy:
p (1..1).one?           # => true
p [1, nil, false].one?  # => true
p (1..4).one?           # => false
p x = {foo: 0}.one?         # => true
p x = {foo: 0, bar: 1}.one? # => false
p [].one?               # => false

#*  With argument +pattern+ and no block,
#*  returns whether for exactly one element +element+,
#*  <tt>pattern === element</tt>:
*
x = [nil, false, 0].one?(Integer)        # => true
p x
p [nil, false, 0].one?(Numeric)        # => true
p [nil, false, 0].one?(Float)          # => false
p %w[bar baz bat bam].one?(/m/)        # => true
p %w[bar baz bat bam].one?(/foo/)      # => false
p %w[bar baz bat bam].one?('ba')       # => false
x = {foo: 0, bar: 1, baz: 2}.one?(Array) # => false
p x
x = {foo: 0}.one?(Array)                 # => true
p x
p [].one?(Integer)                     # => false

#p th a block given, returns whether the block returns a truthy value
#p r exactly one element:

p (1..4).one? {|element| element < 2 }                     # => true
p (1..4).one? {|element| element < 1 }                     # => false
p x ={foo: 0, bar: 1, baz: 2}.one? {|key, value| value < 1 }  # => true
p x = {foo: 0, bar: 1, baz: 2}.one? {|key, value| value < 2 } # => false

#*  Related: #none?, #all?, #any?.

p (1..4).minmax                   # => [1, 4]
p (-4..-1).minmax                 # => [-4, -1]
p %w[d c b a].minmax              # => ["a", "d"]
p x = {foo: 0, bar: 1, baz: 2}.minmax # => [[:bar, 1], [:foo, 0]]
p [].minmax                       # => [nil, nil]

p %w[xxx x xxxx xx].minmax {|a, b| a.size <=> b.size } # => ["x", "xxxx"]
p h = {foo: 0, bar: 1, baz: 2}
p h.minmax {|pair1, pair2| pair1[1] <=> pair2[1] }