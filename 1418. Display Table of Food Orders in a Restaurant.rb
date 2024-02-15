# @param {String[][]} orders
# @return {String[][]}

#MY AWESOME SOLUTION | :)
def display_table(orders = [["David","3","Ceviche"],["Corina","10","Beef Burrito"],["David","3","Fried Chicken"],["Carla","5","Water"],["Carla","5","Ceviche"],["Rous","3","Ceviche"]]) 
  orders.each {|order| order.shift}
  food_items = orders.map(&:last).uniq.sort.unshift("Table")

  orders.group_by {|order| order[0]}
        .transform_values {|orders| orders.map(&:last).tally }
        .sort_by {|table, _| table.to_i }
        .map { |table, counts| [table] + food_items[1..]
        .map {|food| counts[food] || 0 } }.unshift(food_items)
end
p display_table

#MY AWESOME SOLUTION | STRINGS
def display_table(orders = [["David","3","Ceviche"],["Corina","10","Beef Burrito"],["David","3","Fried Chicken"],["Carla","5","Water"],["Carla","5","Ceviche"],["Rous","3","Ceviche"]]) 
  orders.each {|order| order.shift}
  food_items = orders.map(&:last).uniq.sort.unshift("Table")

  orders.group_by {|order| order[0]}
        .transform_values {|orders| orders.map(&:last).tally }
        .sort_by {|table, _| table.to_i }
        .map { |table, counts| [table.to_s] + food_items[1..]
        .map {|food| (counts[food] || 0).to_s } }.unshift(food_items)
end
p display_table


#WORKING
def display_table(orders = [["David","3","Ceviche"],["Corina","10","Beef Burrito"],["David","3","Fried Chicken"],["Carla","5","Water"],["Carla","5","Ceviche"],["Rous","3","Ceviche"]]) 
  #p orders[0]  
  #p orders[0].pop(0)
  orders.each {|orem| orem.shift}
  #p orders
  p orders.sort.map(&:last).uniq.unshift("Table")
  p orders
  #p orders.sort.group_by {|o| o[0]}
  p a = orders.sort_by{_1[0]}.group_by {|a, b| p a: "#{a} b: #{b}"}
    #p orders.sort_by {|order| order[1]}.uniq.sort_by {|order| order[0]}
  a.each do |item|
    p item
  end
end

#STRING THING
def display_table(orders = [["David","3","Ceviche"],["Corina","10","Beef Burrito"],["David","3","Fried Chicken"],["Carla","5","Water"],["Carla","5","Ceviche"],["Rous","3","Ceviche"]]) 
  # Remove customer names from orders
  orders.each {|order| order.shift}
  
  # Extract unique food items and prepend "Table" to the array
  food_items = orders.map(&:last).uniq.sort.unshift("Table")
  
  # Group orders by table number and count occurrences of each food item
  table_orders = orders.group_by {|order| order[0]}
                      .transform_values {|orders| orders.map(&:last).tally }
  
  # Sort table_orders by table number
  sorted_table_orders = table_orders.sort_by {|table, _| table }
  
  # Convert sorted_table_orders to the desired format
  result = sorted_table_orders.map do |table, counts|
    [table.to_s] + food_items[1..].map {|food| (counts[food] || 0).to_s }
  end
  
  # Prepend food_items to the result
  result.unshift(food_items)
  
  # Print the result
  p result
end

display_table

def display_table(orders = [["David","3","Ceviche"],["Corina","10","Beef Burrito"],["David","3","Fried Chicken"],["Carla","5","Water"],["Carla","5","Ceviche"],["Rous","3","Ceviche"]]) 
  # Remove customer names from orders
  orders.each {|order| order.shift}
  
  # Extract unique food items and prepend "Table" to the array
  food_items = orders.map(&:last).uniq.sort.unshift("Table")
  
  # Group orders by table number and count occurrences of each food item
  table_orders = orders.group_by {|order| order[0]}
                      .transform_values {|orders| orders.map(&:last).tally }
  
  # Sort table_orders by table number and convert it to the desired format
  result = table_orders.sort.to_h.map do |table, counts|
    [table] + food_items[1..].map {|food| counts[food] || 0 }
  end
  
  # Prepend food_items to the result
  result.unshift(food_items)
  
  # Print the result
  p result
end
display_table


def display_table(orders = [["David","3","Ceviche"],["Corina","10","Beef Burrito"],["David","3","Fried Chicken"],["Carla","5","Water"],["Carla","5","Ceviche"],["Rous","3","Ceviche"]]) 
  # Remove customer names from orders
  orders.each {|order| order.shift}
  
  # Extract unique food items and prepend "Table" to the array
  food_items = orders.map(&:last).uniq.sort.unshift("Table")
  
  # Group orders by table number and count occurrences of each food item
  table_orders = orders.group_by {|order| order[0]}
                      .transform_values {|orders| orders.map(&:last).tally }
  
  # Sort table_orders by table number
  sorted_table_orders = table_orders.sort_by {|table, _| table.to_i }
  
  # Convert sorted_table_orders to the desired format
  result = sorted_table_orders.map do |table, counts|
    [table] + food_items[1..].map {|food| counts[food] || 0 }
  end
  
  # Prepend food_items to the result
  result.unshift(food_items)
  
  # Print the result
  p result
end


display_table

def display_table(orders = [["David","3","Ceviche"],["Corina","10","Beef Burrito"],["David","3","Fried Chicken"],["Carla","5","Water"],["Carla","5","Ceviche"],["Rous","3","Ceviche"]]) 
  # Remove customer names from orders
  orders.each {|order| order.shift}
  
  # Extract unique food items and prepend "Table" to the array
  food_items = orders.map(&:last).uniq.sort.unshift("Table")
  
  # Group orders by table number and count occurrences of each food item
  table_orders = orders.group_by {|order| order[0]}
                      .transform_values {|orders| orders.map(&:last).tally }.sort_by {|table, _| table.to_i }
  
  
  # Convert sorted_table_orders to the desired format
  result = table_orders.map do |table, counts|
    [table] + food_items[1..].map {|food| counts[food] || 0 }
  end
  
  # Prepend food_items to the result
  result.unshift(food_items)
  
  # Print the result
  p result
end

display_table

#FINAL CHAIN ISH
def display_table(orders = [["David","3","Ceviche"],["Corina","10","Beef Burrito"],["David","3","Fried Chicken"],["Carla","5","Water"],["Carla","5","Ceviche"],["Rous","3","Ceviche"]]) 
  # Remove customer names from orders
  orders.each {|order| order.shift}
  
  # Extract unique food items and prepend "Table" to the array
  food_items = orders.map(&:last).uniq.sort.unshift("Table")
  
  # Group orders by table number and count occurrences of each food item
  table_orders = orders.group_by {|order| order[0]}
                      .transform_values {|orders| orders.map(&:last).tally }.sort_by {|table, _| table.to_i }
  
  
  # Convert sorted_table_orders to the desired format
  table_orders.map do |table, counts|
    [table] + food_items[1..].map {|food| counts[food] || 0 }
  end.unshift(food_items)
  
end

p display_table

#FINAL CHAIN ISH GO NUTTS
def display_table(orders = [["David","3","Ceviche"],["Corina","10","Beef Burrito"],["David","3","Fried Chicken"],["Carla","5","Water"],["Carla","5","Ceviche"],["Rous","3","Ceviche"]]) 
  # Remove customer names from orders
  orders.each {|order| order.shift}
  # Extract unique food items and prepend "Table" to the array
  food_items = orders.map(&:last).uniq.sort.unshift("Table")
  # Group orders by table number and count occurrences of each food item
  orders.group_by {|order| order[0]}
        .transform_values {|orders| orders.map(&:last).tally }
        .sort_by {|table, _| table.to_i }
        .map { |table, counts| [table] + food_items[1..]
        .map {|food| counts[food] || 0 } }.unshift(food_items)
end

p display_table



#FINAL CHAIN GO NUTTSER
def display_table(orders = [["David","3","Ceviche"],["Corina","10","Beef Burrito"],["David","3","Fried Chicken"],["Carla","5","Water"],["Carla","5","Ceviche"],["Rous","3","Ceviche"]]) 
  # Remove customer names from orders
  orders.each {|order| order.shift}
  # Extract unique food items and prepend "Table" to the array
  food_items = orders.map(&:last).uniq.sort.unshift("Table")
  # Group orders by table number and count occurrences of each food item
  orders.group_by {|order| order[0]}.transform_values {|orders| orders.map(&:last).tally }.sort_by {|table, _| table.to_i }.map { |table, counts| [table] + food_items[1..].map {|food| counts[food] || 0 } }.unshift(food_items)
end

p display_table

def display_table(orders = [["David","3","Ceviche"],["Corina","10","Beef Burrito"],["David","3","Fried Chicken"],["Carla","5","Water"],["Carla","5","Ceviche"],["Rous","3","Ceviche"]])
  puts "Original orders:"
  p orders
  
  orders.each {|order| order.shift}
  puts "Orders after removing customer names:"
  p orders
  
  food_items = orders.map(&:last).uniq.sort.unshift("Table")
  puts "Food items after extracting unique items and prepending 'Table':"
  p food_items
  
  grouped_orders = orders.group_by {|order| order[0]}
  puts "Orders grouped by table number:"
  p grouped_orders
  
  table_counts = grouped_orders.transform_values {|orders| orders.map(&:last).tally }
  puts "Counts of each food item for each table:"
  p table_counts
  
  sorted_table_counts = table_counts.sort_by {|table, _| table.to_i }
  puts "Table counts after sorting by table number:"
  p sorted_table_counts
  
  result = sorted_table_counts.map do |table, counts|
    table_string = table.to_s
    counts_strings = food_items[1..].map {|food| (counts[food] || 0).to_s }
    [table_string] + counts_strings
  end
  puts "Final result after converting table number and counts to strings:"
  p result
  
  result.unshift(food_items)
  puts "Final result with header row added:"
  p result
end

display_table
