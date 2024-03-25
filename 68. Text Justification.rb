#* 68. Text Justification
words = ["This", "is", "an", "example", "of", "text", "justification."]
max_width = 16
# @param {String[]} words
# @param {Integer} max_width
# @return {String[]}
#* MY SOL | OMG HARD AF BACK TO MEDIUM TOOK 1.5HOURS
def full_justify(words, max_width)
  res=[]
  cur=[]
  num_of_letters = 0

  words.each do |w|
    if num_of_letters + w.length + cur.length > max_width
      if cur.length == 1
        res << cur[0] + ' ' * (max_width - num_of_letters)
      else
        num_spaces = max_width - num_of_letters
        space_between_words, num_extra_spaces = num_spaces.divmod(cur.length - 1)
        cur[0...num_extra_spaces].each { |word| word << ' ' }
        res << cur.join(' ' * space_between_words)
      end
      cur=[]
      num_of_letters = 0
    end
    cur << w
    num_of_letters += w.length
  end
  res << cur.join(' ') + ' ' * (max_width - num_of_letters - cur.length + 1)
  res
end
p full_justify(words, max_width)



#* INTERSTING SOL FROM LEADERBOARDS TO LOOK AT/LEARN FROM
def full_justify(words, max_width)
    res = []
    line = []

    words.each do |word|
        if len(line) + word.length + line.length <= max_width
            line << word
        else
            num_spaces = max_width - len(line)
            word_spaces = [1, line.length - 1].max
            spaces = ([" "] * num_spaces).each_slice(word_spaces).to_a
            res << line.zip(*spaces).flatten.join
            line = [word]
        end
    end

    if line.any?
        formatted = line.join(" ")
        spaces = " " * (max_width - formatted.length)
        res <<  formatted + spaces
    end
    return res
end

def len(line)
    line.sum(&:length)
end