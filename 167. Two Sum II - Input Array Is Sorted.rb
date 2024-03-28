#* 167. Two Sum II - Input Array Is Sorted
numbers = [2,7,11,15]; target = 9
# @param {Integer[]} numbers
# @param {Integer} target
# @return {Integer[]}
#* MY SOL 2
def two_sum(numbers, target)
  left = 0
  right = numbers.length - 1

  while left < right
    sum = numbers[left] + numbers[right]
    return [left + 1, right + 1] if sum == target
    sum < target ? left += 1 : right -= 1
  end
end
p two_sum(numbers, target)

#*
def two_sum(numbers, target)
  left = 0
  right = numbers.length - 1

  while left < right
    sum = numbers[left] + numbers[right]

    if sum == target
      return [left + 1, right + 1]
    elsif sum < target
      left += 1
    else
      right -= 1
    end
  end
end
p two_sum(numbers, target)

