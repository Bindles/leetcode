# @param {Integer[][]} box_types
# @param {Integer} truck_size
# @return {Integer}

#MY SOLUTION
def maximum_units(box_types, truck_size)
  t=0
  box_types_s = box_types.sort_by { |box| -box[1] }

  until truck_size <= 0 || box_types_s.empty?
    if box_types_s.first[0] >= 1
      t+=box_types_s.first[1]
      box_types_s.first[0] -=1
      truck_size-=1
    else
      box_types_s.shift
    end
  end
  t
end

#WORKING-SOLVED
def maximum_units(box_types = [[1,3],[2,2],[3,1],[2,4]], truck_size = 4)
  t=0
  box_types_s = box_types.map(&:reverse).sort_by { |box| -box[0] }
  
  p box_types_s

  until truck_size <= 0 || box_types_s.empty?
    p truck_size
    p box_types_s.first
    if box_types_s.first[1] >= 1
      p t+=box_types_s.first[0]
      box_types_s.first[1] -=1
      truck_size-=1
    else
      box_types_s.delete(box_types_s.first)
    end

    p "total #{t}"
    p box_types_s.first[1]
  end
  p t

end
p maximum_units


def maximum_units(box_types, truck_size)
  t=0
  box_types_s = box_types.map(&:reverse).sort_by { |box| -box[0] }
  p box_types_s

  until truck_size <= 0 || box_types_s.empty?
    p truck_size
    p box_types_s.first
    if box_types_s.first[1] >= 1
      p t+=box_types_s.first[0]
      box_types_s.first[1] -=1
      truck_size-=1
    else
      box_types_s.delete(box_types_s.first)
    end
    p "total #{t}"
    p box_types_s.first[1]
  end
  p t
end

def maximum_units(box_types, truck_size)
  t=0
  box_types_s = box_types.map(&:reverse).sort_by { |box| -box[0] }

  until truck_size <= 0 || box_types_s.empty?
    if box_types_s.first[1] >= 1
      t+=box_types_s.first[0]
      box_types_s.first[1] -=1
      truck_size-=1
    else
      box_types_s.shift
    end
  end
  t
end



def maximum_units(boxTypes = [[1,3],[2,2],[3,1],[4,2]], truckSize = 4)
  r = boxTypes.map { _1.reverse }
  p r.sort
end


#*RUBY VS PYTHON | FOR LOOP WITH INNER CONDITION
passwords = ["abc123", "def456", "xyz789", "password"]
allowed_chars = "abcdefghijklmnopqrstuvwxy0123456789"

#for password in passwords do

passwords.each {|password| p password if password.chars.all? {|c| allowed_chars.include?(c) } }

for password in passwords do; p password if password.chars.all? {|c| allowed_chars.include?(c) } end

for password in password do

  if password.chars.all? { |char| allowed_words.include?(char) }
    # Your code here
  end

end

#*PYTHON
# for password in passwords:

#   if all(char in allowed_chars for char in passw):
#       print(passw)