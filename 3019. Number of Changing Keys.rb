#* 3019. Number of Changing Keys
s = "aAbBcC"
# @param {String} s
# @return {Integer}
#* SOL 1
def count_key_changes(s)
  count = 0
  bytes = s.downcase.bytes
  (0...bytes.size - 1).count do |i|
    count += 1 if bytes[i] != bytes[i + 1]
  end
  count
end
p count_key_changes(s)

#* SOL 1.1
def count_key_changes(s)
  bytes = s.downcase.bytes
  (0...bytes.size - 1).count do |i|
    bytes[i] != bytes[i + 1]
  end
end
p count_key_changes(s)

#* SOL 1.2
def count_key_changes(s)
  s.downcase.bytes.each_cons(2).count {|a,b| a != b }  
end
p count_key_changes(s)

#* SOL 2 | Best?
def count_key_changes(s)
  (1...s.size).count{|index| s[index-1].downcase != s[index].downcase }
end
p count_key_changes(s)

