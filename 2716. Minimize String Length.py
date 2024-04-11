#PYTHON
#* 2716. Minimize String Length
#* LEARN => COUNTER == TALLY RUBY
s = "aaabc"
from collections import Counter

def minimized_string_length(s):
    return len(Counter(s))


print(minimized_string_length(s))  # Output: 3
print(Counter(s))
