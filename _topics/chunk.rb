arr = [1,9,6,3,2]
size = 3

def chunk(arr,size)
  x = arr.each_slice(size).to_a
  p x
end
p chunk(arr,size)

def chunk(arr,size)
  arr.each_slice(size).to_a
end
p chunk(arr,size)


arr = [1, 9, 6, 3, 2]

chunks = arr.chunk_while { |i, j| i.even? && j.even? }
p chunks.to_a
