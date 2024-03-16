require 'benchmark'

# Generate mountain array
mountain = Array.new(3000) { rand(1..450) }

# First implementation
def find_peaks1(mountain)
  mountain.each_index.select do |index|
    next if index == 0 || index == mountain.length - 1
    mountain[index] > mountain[index - 1] && mountain[index] > mountain[index + 1]
  end
end

# Second implementation
def find_peaks2(mountain)
  peaks = []
  (1...mountain.length - 1).each do |index|
    if mountain[index] > mountain[index - 1] && mountain[index] > mountain[index + 1]
      peaks << index
    end
  end
  peaks
end

# Benchmarking
Benchmark.bm(10) do |x|
  x.report("Sol 1.1:") { find_peaks1(mountain) }
  x.report("Try Opt:") { find_peaks2(mountain) }
end
