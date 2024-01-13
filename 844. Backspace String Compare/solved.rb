# @param {String} s
# @param {String} t
# @return {Boolean}
def backspace_compare(s = "ab#c", t = "ad#c")
  s.each_char.with_index do |str,ind|
      s.slice!(ind) and s.slice!(ind)  if s[ind+1] == "#"
  end
  p s
  t.each_char.with_index do |str,ind|
      t.slice!(ind) and t.slice!(ind)  if t[ind+1] == "#"
  end
  p t
  return s==t

end


def bc(s = "xab#^}cza", t = "ad#c")
  z=[]
  x=[]
  zz=[]
  xx=[]
  i=0
  s.each_char.with_index do |str,ind|
    if str == "#"
      x << ind-(1)
      i+=2 if i==0
    elsif str =='^'
      p "deleting char at", ind-(1+2)
      p s[ind-(1+2)]
      p s[ind-(1+3)]
      x << ind-(1+2)
      i+=2
    elsif str =='}'
      p "deleting char at", ind-(1+4)
      p s[ind-(1+3)]
      x << ind-(1+3)
    else
    z << str
    end
  end
  p z
  p x
  z.delete_at(x[0])
  z.delete_at(x[1])
  p z
  t.each_char.with_index do |str,ind|
    if str == "#"
      x << ind
    else
    z << str
    end
  end

end


def bc(s = "xab#cza")
  z=[]
  x=[]
  s.each_char.with_index do |str,ind|
    if str == "#"
      x << ind-(1)
    else
    z << str
    end
  end
  p z
  p x
  z.delete_at(x[0])
  p z

end


def bcz(s = "ab#c")
  stack = []

  s.each_char do |char|
    if char == "#"
      p char
      p "pop =>"
      p stack.pop
    else
      p "normal char #{char}"
      p "push =>"
      p stack.push(char)
    end
  end

  p stack.join
end

bcz  # Output: "c"


p '---'
az =[1,2,3,4,5]
az.push(1)
p az
az.pop
p az
az.pop
p az



#************************************
#PUSH => ADD TO END
#p push => return entire array

#POP => REMOVE LAST CHAR OF ARRAY
#p pop -> return popped (removed) char
#*************************************

# array = [1, 3, 5, 7, 9]

# indices_to_remove = [1, 3]  # Specify the indices you want to remove

# # Use values_at to get the elements at specified indices, then use slice! to remove them
# array.slice!(0,1)

# p array

def bbb(s = "ab#c", t = "ad#c")
  z=[]
  x=[]
  s.each_char.with_index do |char,ind|
    if char == "#"
      p "#{char} found! deleting from..."
      p z
      p "pop =>"
      p "#{z.pop} =>", z
    else
      p "normal char #{char} found!"
      p "push =>"
      p z.push(char)
    end
  end
  t.each_char.with_index do |char,ind|
    if char == "#"
      p "#{char} found! deleting from..."
      p x
      p "pop =>"
      p "#{x.pop} =>", x
    else
      p "normal char #{char} found!"
      p "push =>"
      p x.push(char)
    end
  end
  p '------'
  p z, "vs"
  p x
  z == x
end

p bbb

def b(s = "ab#c", t = "ad#c")
  z,x = [],[]
  s.each_char.with_index do |char,ind|
    if char == "#"
      z.pop
    else
      z.push(char)
    end
  end
  t.each_char.with_index do |char,ind|
    if char == "#"
      x.pop
    else
      x.push(char)
    end
  end
  p z
  p x
  z == x
end

p b
