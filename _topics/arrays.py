#ARRAY SPLITTING
arr = []
current_group = []

(1..9).each do |num|
  arr << num
  if num % 3 == 0
    current_group << arr
    arr = []
  end
end

# Add the remaining elements to the current group
current_group << arr unless arr.empty?

p current_group



groups = [[]]  # Initialize groups with an empty array

(1..9).each do |num|
  if num % 3 == 0 && # -!groups.last.empty?
    groups << []  # Start a new group if num is a multiple of 3 and the last group is not empty
  end
  groups.last << num  # Append num to the last group
end

p groups


#ELOQUENT RUBY PT1-2
class Document
  def initialize(content)
    @content = content
  end

  def words
    @content.split(/\s+/)  # Split the content into words using whitespace as delimiter
  end
end

# Create a new document
doc = Document.new("Hello world! This is a document.")

# Call the words method on the document to retrieve an array of words
p doc.words  # Output: ["Hello", "world!", "This", "is", "a", "document."]

doca=['hi', 'bye']
p *doca
hash = {name: 'y', body: 'g'}
doc.words.each do |word|
  puts word
end
puts *doc.words
p *hash


hello = "hello" 
p hello.count('l')