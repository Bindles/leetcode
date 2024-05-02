#* 804. Unique Morse Code Words
words = ["gin","zen","gig","msg"]
# @param {String[]} words
# @return {Integer}
#* 1.0
def unique_morse_representations(words)
  morse = [
    ".-", "-...", "-.-.", "-..", ".", "..-.", "--.", "....", "..", ".---",
    "-.-", ".-..", "--", "-.", "---", ".--.", "--.-", ".-.", "...", "-",
    "..-", "...-", ".--", "-..-", "-.--", "--.."
  ] 
  key = ('a'..'z').to_a
  morse_map = key.zip(morse).to_h
  unique_morse = Set.new

  words.each do |word|
    morse_representation = word.chars.map { |char| morse_map[char] }.join
    unique_morse.add(morse_representation)
  end
  unique_morse.size
end
p unique_morse_representations(words)

#* 1.1
def unique_morse_representations(words)
  morse = [
    ".-", "-...", "-.-.", "-..", ".", "..-.", "--.", "....", "..", ".---",
    "-.-", ".-..", "--", "-.", "---", ".--.", "--.-", ".-.", "...", "-",
    "..-", "...-", ".--", "-..-", "-.--", "--.."
  ]
  key = ('a'..'z').to_a
  morse_map = key.zip(morse).to_h
  unique_morse = Set.new

  words.each { |word| unique_morse.add(word.chars.map { |char| morse_map[char] }.join) }
  unique_morse.size
end
p unique_morse_representations(words)

#* 1.2
def unique_morse_representations(words)
  morse = [
    ".-", "-...", "-.-.", "-..", ".", "..-.", "--.", "....", "..", ".---",
    "-.-", ".-..", "--", "-.", "---", ".--.", "--.-", ".-.", "...", "-",
    "..-", "...-", ".--", "-..-", "-.--", "--.."
  ] 
  key = ('a'..'z').to_a
  morse_map = key.zip(morse).to_h
  unique_morse = Set.new

  words.map { |word| word.chars.map { |char| morse_map[char] }.join }.each(&unique_morse.method(:add))
  unique_morse.size
end
p unique_morse_representations(words)


#* WORKING . . . . .
#* SOL 1 OG
def unique_morse_representations(words)
  p x = [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]
  p y = ("a".."z").to_a
  p @z=y.zip(x).to_h
  @res=[]
 
  p @z['a']
  p @z['g']
  
   def w(word) 
     word.split('').map { |x| @z[x] }.join(" ")
     #word.split('').map { |x| x}
   end
 
   def ww(words)
     words.each do |word|
       p word.split('').map { |x| @z[x] }.join(" ")
       @res << word.split('').map { |x| @z[x] }.join(" ")
     end
     #word.split('').map { |x| @z[x] }.join(" ")
     #word.split('').map { |x| x}
   end
 p w('gin')
 p w('zen')
 p w('gig')
 p w('msg')
 
  ww(["gin","zen","gig","msg"])
  @res.uniq.size
end
 p unique_morse_representations(words)
 #* . . . . . . . . .




# require 'set'



# def unique_morse_representations(words)

#   MORSE_CODE = [
#     ".-", "-...", "-.-.", "-..", ".", "..-.", "--.", "....", "..", ".---",
#     "-.-", ".-..", "--", "-.", "---", ".--.", "--.-", ".-.", "...", "-",
#     "..-", "...-", ".--", "-..-", "-.--", "--.."
#   ]

#   key = ('a'..'z').to_a
#   morse_map = key.zip(MORSE_CODE).to_h
#   unique_morse = Set.new

#   words.each do |word|
#     morse_representation = word.chars.map { |char| morse_map[char] }.join
#     unique_morse.add(morse_representation)
#   end

#   unique_morse.size
# end

# # Example usage:
# puts unique_morse_representations(["gin","zen","gig","msg"]) # Output: 2
