#STRING | PYTHON


hello = "heLLo" 
print(hello.lower().count('ll'))
print(hello.lower().count('ll'))

x='y'
y=3
print(x * y)

a='hi'
b='hey'
c='hi'

print (a == b or a==c)
print (a < b)
print ('ab' < 'ad')
print(not True)
print (not False and True)
#CR! inp = input('name')
array=[4,True,'hi',9, 'hey', 'man', 00]
print(array.pop())
print(array)
#print(array.push('added'))
array[0]="gay"
print(array)

#start|stop|step|
for i in range(6):
  print(i)

for i in range(4,8):
  print(i)
  
for i in range(2,11, 2):
  print(i)

for i in range(10,-1, -2):
  print(i)

index=0
while index < 5:
  print(index)
  index+=1

index=0
while True:
  print(index)
  index+=1
  if index==8:
    break

#DOUBLE LOOP KEPT RUNNING
# print('doubel while')
# index=0
# while True:
#   print(index)
#   index+=1
#   while True:
#     if index==8:
#       break
  
sliced = array[:2]
print(sliced)
sliced = array[2:]
print(sliced)
sliced = array[0:4:2]
print(sliced)
