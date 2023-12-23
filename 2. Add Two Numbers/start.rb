# def add_two_numbers(l1 = [2,4,3], l2 = [5,6,4])

#   def conv(head)
#     result = []
#     current = head
#     while current
#       result << current
#       current = current.next
#     end
#     result.map(&:val)
#   end

#   al1 = conv(l1)
#   al2 = conv(l2)

#   p (al1.join.reverse.to_i + al2.join.reverse.to_i).to_s.split('').reverse

# end

# add_two_numbers


def a
  # Assuming you already have the add_two_numbers function defined

  # Example usage:
  l1 = ListNode.new(2, ListNode.new(4, ListNode.new(3)))
  l2 = ListNode.new(5, ListNode.new(6, ListNode.new(4)))

  result_linked_list = add_two_numbers(l1, l2)

  # Convert the result linked list to an array for printing
  result_array = []
  current = result_linked_list
  while current
    result_array << current.val
    current = current.next
  end

  puts "Linked List l1 as Array: #{linked_list_to_array(l1)}"
  puts "Linked List l2 as Array: #{linked_list_to_array(l2)}"
  puts "Result Linked List as Array: #{result_array}"
end

a