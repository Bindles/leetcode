#*/ 2677. Chunk Array
arr = [1,9,6,3,2]
size = 3
def chunk(arr,size)
  arr.each_slice(size).to_a
end
p chunk(arr,size)

#* TEST
#* CHUNK WHILE
chunks = arr.chunk_while { |i, j| i.even? && j.even? }
p chunks.to_a