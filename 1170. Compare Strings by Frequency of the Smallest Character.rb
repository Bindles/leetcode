#*1170. Compare Strings by Frequency of the Smallest Character
#*LEARN=> lambda map count
#*SL => lambda
# @param {String[]} queries
# @param {String[]} words
# @return {Integer[]}
#*MY SOL 1 NICE
def min_char_count(word)
    min_chars= word.chars.min
    word.count(min_chars)
end
def num_smaller_by_frequency(queries = ["cbd"], words = ["zaaaz"])
    words_count = words.map{|word| min_char_count(word)}

    queries.map do |query|
        query_count = min_char_count(query)
        words_count.count{|word_count| query_count < word_count}
    end
end
p num_smaller_by_frequency
#* MY SOL 2 | LAMBDA | CONCISE|
def num_smaller_by_frequency(queries = ["cbd"], words = ["zaaaz"])
    fn = ->q{ q.count(q.chars.min)}
    words.map!(&fn)
    queries.map{|q| query = fn[q]; words.count{|word| query < word}}
end
p num_smaller_by_frequency
#* MY SOL 2.5 | LAMBDA | READBLE VAR NAMES
def num_smaller_by_frequency(queries = ["cbd"], words = ["zaaaz"])
    min_char_count = ->query{ query.count(query.chars.min)}
    words.map!(&min_char_count)
    queries.map{|query| query_count = min_char_count[query]; words.count{|word| query_count < word}}
end
p num_smaller_by_frequency

#*MY SOL 2 [LAMBDA] WRITTEN OUT | PUTS
def num_smaller_by_frequency(queries = ["cbd"], words = ["zaaaz"])
    min_char_count = lambda do |word|
        min_chars = word.chars.min
        count = word.count(min_chars)
        puts "Word: #{word}, Min Chars: #{min_chars}, Count: #{count}"
        count
    end

    words_count = words.map(&min_char_count)

    queries.map do |query|
        query_count = min_char_count.call(query)
        puts "Query: #{query}, Query Count: #{query_count}"
        count = words_count.count { |word_count| query_count < word_count }
        puts "Result for #{query}: #{count}"
        count
    end
end
num_smaller_by_frequency

#*MY SOL 1 WRITTEN OUT | PUTS
def min_char_count(word)
    min_chars = word.chars.min
    count = word.count(min_chars)
    puts "Word: #{word}, Min Chars: #{min_chars}, Count: #{count}"
    count
end

def num_smaller_by_frequency(queries = ["cbd"], words = ["zaaaz"])
    words_count = words.map { |word| min_char_count(word) }

    queries.map do |query|
        query_count = min_char_count(query)
        puts "Query: #{query}, Query Count: #{query_count}"
        count = words_count.count { |word_count| query_count < word_count }
        puts "Result for #{query}: #{count}"
        count
    end
end
num_smaller_by_frequency

#***********************************
#*LEARN => LAMBDA
add = ->(x, y) { x + y }
puts add.call(3, 4)  # Output: 7


# Simple lambda with a short name
double = ->x { x != 7 ? x * 2 : x}
p double.call(14)
arr=[1,4,7,8]
p arr.map(&double) # => [2, 8, 7, 16]

# Corrected lambda with descriptive name
find_users_by_age = ->(users, age) { users.select { |user| user[:age] == age } }

# Usage in context
users = [{ name: 'Alice', age: 30 }, { name: 'Bob', age: 25 }, { name: 'Charlie', age: 30 }]
p find_users_by_age.call(users, 30)


#***********************************