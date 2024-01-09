# @param {String[]} operations
# @return {Integer}
#MY FIRST
def final_value_after_operations(operations)
x=0
    operations.each do |op|
        case
        x += 1 when op == "++X" || op == "X++"
        
        x -= 1 and p x when op == "--X" || op == "X--"
        end
    end
    x
end

#MY OPTIMIZED
def final_value_after_operations(operations, x=0) 
    operations.each { |op| op.include?("++") ?  x += 1 : x -= 1}
    x end
#MY 2ND

def final_value_after_operations(operations)
  operations.map { |t| t.include?('++') ? 1 : -1 }.sum
end
