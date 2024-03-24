#* 786. K-th Smallest Prime Fraction
arr = [1,2,3,5]
k = 3
# @param {Integer[]} arr
# @param {Integer} k
# @return {Integer[]}
def kth_smallest_prime_fraction(arr, k)
  n= arr.length
  (0...n).each do |i|
    (i+1...n).each do |j|
      p arr[i]
    end
end
    
end


#* MY SOL 1 | SUPER FAST PROUD OF THIS GETTING GOOD |STORE FRACTION
def kth_smallest_prime_fraction(arr, k)
  n = arr.length
  fractions=[]

  (0...n).each do |i|
      (i+1...n).each do |j|
          puts "#{arr[i]}, #{arr[j]}"
          p"#{arr[i].to_f / arr[j]}"
          fractions << [arr[i], arr[j], arr[i].to_f / arr[j]]
      end
  end
  fractions.sort_by(&:last)[k-1][0..1]
end
p kth_smallest_prime_fraction(arr, k)

p '--'

#* MY SOL 1.1  | DONT STORE FRACTION CALCULATE IT ON SORT | FASTER ?
def kth_smallest_prime_fraction(arr, k)
  n = arr.length
  fractions=[]

  (0...n).each do |i|
      (i+1...n).each do |j|
          puts "#{arr[i]}, #{arr[j]}"
          p"#{arr[i].to_f / arr[j]}"
          fractions << [arr[i], arr[j]]
      end
  end

    fractions.sort_by! { |numerator, denominator| numerator.to_f / denominator }
    fractions[k - 1]
end
p kth_smallest_prime_fraction(arr, k)