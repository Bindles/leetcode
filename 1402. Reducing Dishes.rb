# @param {Integer[]} satisfaction
# @return {Integer}
#*SOL 1
def max_satisfaction(satisfaction = [-1, -8, 0, 5, -9])
    result = 0;sum=0 ;
    satisfaction.sort.reverse.each{|num|sum += num;result += sum if sum > 0} and result
end
p max_satisfaction
#*SOL 1.5~>
def max_satisfaction(satisfaction = [-1,-8,0,5,-9])
    result=0;sum=0;
    satisfaction.sort.reverse.each {|num| result+=sum if 0 < sum+=num}
    result
end
def max_satisfaction(satisfaction = [-1,-8,0,5,-9])
    result=0;sum=0;
    satisfaction.sort.reverse.each {result+=sum if 0 < sum+=_1} and result
end







def max_satisfaction(satisfaction = [-1, -8, 0, 5, -9])
    result = 0  # Initialize the result variable to store the maximum satisfaction
    sum = 0     # Initialize the sum variable to keep track of the current sum
    
    # Sort the satisfaction levels in descending order and iterate over each level
    satisfaction.sort.reverse.each do |num|
        # Update the sum by adding the current satisfaction level
        sum += num
        
        # If the current sum is positive, add it to the result
        result += sum if sum > 0
    end
    
    # Return the maximum satisfaction achieved
    result
end