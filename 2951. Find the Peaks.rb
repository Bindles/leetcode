#* 2951. Find the Peaks
mountain = [1,4,3,8,5]
# @param {Integer[]} mountain
# @return {Integer[]}
#* SOL 1
def find_peaks(mountain)
  mountain.each_with_index.select do |num, index|
    next if index == 0 || index == mountain.length - 1 
    num > mountain[index - 1] && num > mountain[index + 1]
  end.map(&:last)
end

p find_peaks(mountain) 

#* SOL 1.1 | OPTIMAL | 74%/58% S/M
def find_peaks(mountain)
  mountain.each_index.select do |index|
    next if index == 0 || index == mountain.length - 1
    mountain[index] > mountain[index - 1] && mountain[index] > mountain[index + 1]
  end
end
p find_peaks(mountain)  # Output: [1, 3]

#* TRYING OPT | SLIGHLTY FASTER | 95%/58% S/M
def find_peaks(mountain)
  peaks = []
  (1...mountain.length - 1).each do |index|
    if mountain[index] > mountain[index - 1] && mountain[index] > mountain[index + 1]
      peaks << index
    end
  end
  peaks
end
p find_peaks(mountain)

#* SPEED | BENHCMARKS
# Sol 1.1:     0.000000   0.000000   0.000000 (  0.001370)
# Try Opt:     0.000000   0.000000   0.000000 (  0.000913)

# Sol 1.1:     0.000000   0.000000   0.000000 (  0.000989)
# Try Opt:     0.000000   0.000000   0.000000 (  0.001158)

# Sol 1.1:     0.000000   0.000000   0.000000 (  0.001199)
# Try Opt:     0.000000   0.000000   0.000000 (  0.001096)


