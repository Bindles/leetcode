#FOR LOOPS
#*LEARNED: FOR LOOP WITH INNER CONDITION
allowed = "ab"
words = ["ad","bd","aaab","baa","badab"]

count=0
for word in words:
    if all(char in allowed for char in word):
      print(word)
      count+=1
      print(count)



#*LEARNED: FOR LOOP WITH INNER CONDITION
#*MORE BELOW...
#EX 1 Passwords containing only chars in allowed_chars
passwords = ["abc123", "def456", "xyz789", "password"]
allowed_chars = "abcdefghijklmnopqrstuvwxy0123456789"

for p in passwords:
    if all(char in allowed_chars for char in p):
        print(p)

    if all(char in allowed_chars for char in p):
        print(p)

for passw in passwords:
    if all(char in allowed_chars for char in passw):
        print(passw)


for word in passwords:
    if all(char in allowed_chars for char in word):
        print(word)

#EX 2 words containing only chars in reference_word
words = ["listen", "silent", "enlist", "tinsel", "banana", "nail"]
reference_word = "silent"

for word in words:
    if all(char in reference_word for char in word):
        print(word)