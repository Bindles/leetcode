letters = %w[a b c]
letters.each do |letter|
  define_method letter.to_sym do
    puts "hello from #{letter}"
  end
end
p a

def testspargs(*args)
  zipper=[1,2,3,4,5]
  args.each do |arg|
    p arg
    #p args.length
    #p zipper[0...args.length]
  end
  p "2 #{args.length} used"
  zipper[0...args.length].zip(args)
end
p testspargs('a', 'b', 'c', 'd')
p 'set args=> 3'
p [1,2,3].zip(%w[a b c])

#* Enumarable.PARTITION
# The `partition` method in Ruby's `Enumerable` module is used to split an array into two
# arrays based on a condition specified in a block. It returns an array containing two
# arrays: the first array contains elements for which the block evaluates to true, and
# the second array contains elements for which the block evaluates to false.
partarr = [1, 2, 3, 4, 11, 12, 13, 14]
p partarr.partition {|n| n.even?} # => [[2, 4, 12, 14], [1, 3, 5, 11, 13, 15]]
