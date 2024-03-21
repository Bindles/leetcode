#* 1441. Build an Array With Stack Operations
target = [1,3]
n = 3
# @param {Integer[]} target
# @param {Integer} n
# @return {String[]}
#* 
def build_array(target, n)
    stack = []
    current = 1
    until target.empty?
        stack << "Push"
        current != target[0] ? stack << "Pop" : target.shift
        current += 1
    end
    stack
end
p build_array(target, n)

#*
def build_array(target, n)
    stack = []
    result = []
    (1..n).each do |i|
        result << "Push"
        unless target.include?(i)
            result << "Pop" 
        else
          stack << i
        end
        return result if stack==target
    end
end
p build_array(target, n)
