class Queue
  def initialize
    @queue = []
  end

  def enqueue(element)
    @queue.push(element)
  end

  def dequeue
    @queue.shift
  end

  def empty?
    @queue.empty?
  end

  def size
    @queue.size
  end

  def peek
    @queue.first
  end

  def enqueue_random_word(random_word_lambda)
    random_word = random_word_lambda.call
    enqueue(random_word)
  end
end

# Example usage:
sampl_fn = -> { Array.new(3) { ('a'..'z').to_a.sample }.join }
sampl_fn_len = ->(l) { Array.new(l) { ('a'..'z').to_a.sample }.join }


def sampl(len)
  len = Array.new(len) { ('a'..'z').to_a.sample }.join
end

a = sampl(4)
p a
p a
p a



# generate_random_word(a)
# p a

queue = Queue.new
#queue.enqueue(generate_random_word)
queue.enqueue(sampl(5))
queue.enqueue(sampl_fn_len.call(10)) #<- why does thi error out btu above doesnt?
queue.enqueue(3)

puts queue.dequeue  # Output: Random 3-letter word
puts queue.dequeue  # Output: 2
puts queue.peek     # Output: 3
