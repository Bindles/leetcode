#25sec,no check,no puts,one line lol, feels good
def find_words_containing(words = ["leet","code"], x = "e")
  a=[];words.each.with_index{|word,index|a << index if word.include?(x) } and a
end

def find_words_containing(words = ["leet","code"], x = "e")
  a=[];words.select.with_index { |word, index| a << index if word.include?(x) } and a
end
p find_words_containing

numbers = [1, 2, 3, 4, 5]
even_numbers = numbers.select { |num| num.even? }
p even_numbers # [2, 4]

numbers = [1, 2, 3, 4, 5]
even_numbers = numbers.each.select { |num| num.even? }
p even_numbers # [2, 4]


def find_words_containing(words = ["leet","code"], x = "e")
  words
      .each_with_index
      .select { |word, index| word.include?(x) }
      .map { |word, index| index }
end

def find_words_containing(words = ["leet","code"], x = "e")
  words.each_with_index.select { |word, _| word.include?(x) }.map { |_, index| index }
end