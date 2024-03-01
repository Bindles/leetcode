# Changing values to strings:
hash = { a: 1, b: 2, c: 3 }
transformed_hash = hash.transform_values { |value| value.to_s }
puts transformed_hash.inspect
# Output: {:a=>"1", :b=>"2", :c=>"3"}

# Converting values to uppercase:
hash = { a: 'apple', b: 'banana', c: 'cherry' }
transformed_hash = hash.transform_values { |value| value.upcase }
puts transformed_hash.inspect
# Output: {:a=>"APPLE", :b=>"BANANA", :c=>"CHERRY"}

# Extracting specific data from values:
hash = { a: 'John Smith', b: 'Jane Doe', c: 'Alice Johnson' }
transformed_hash = hash.transform_values { |value| value.split(' ').first }
puts transformed_hash.inspect
# Output: {:a=>"John", :b=>"Jane", :c=>"Alice"}

hash = "rubyiscool".chars.tally
transformed_hash = hash.transform_keys { |k| k.upcase }
puts transformed_hash.inspect