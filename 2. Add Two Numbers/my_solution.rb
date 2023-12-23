def add_two_numbers(l1, l2)
    sum_list = ListNode.new()
    tail = sum_list

    l1_node = l1
    l2_node = l2
    carriage = 0 
    while carriage==1 || l1_node || l2_node 
        sum = carriage

         if l1_node 
            sum += l1_node.val
            l1_node = l1_node.next
         end

         if l2_node 
            sum += l2_node.val
            l2_node = l2_node.next
         end

         carriage = sum >= 10 ? 1 : 0 
         tail.val = sum % 10 

         if l1_node || l2_node || carriage==1
            tail.next = ListNode.new()
            tail = tail.next 
         end

    end

    return sum_list
end