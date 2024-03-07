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