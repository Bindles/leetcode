def add_two_numbers(l1, l2)
  def linked_list_to_integer(head)
    result = 0
    current = head

    while current
      result = result * 10 + current.val  # Corrected to use current.val
      current = current.next
    end

    result
  end

  il1 = linked_list_to_integer(l1)
  il2 = linked_list_to_integer(l2)

  puts "Linked List l1 as Integer: #{il1}"
  puts "Linked List l2 as Integer: #{il2}"

  p (il1 + il2).reverse.split('')
end