# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}
#* SOL 1 | COUNT
def can_construct(ransom_note = "aa", magazine = "aab")
  ransom_note.chars.all? { |char| magazine.count(char) >= ransom_note.count(char) }
end

#* SOL 2 | TALLY | THOUGHT WAS FASTER SEEMS NOT
def can_construct(ransom_note = "aa", magazine = "aab")
  magtally = magazine.chars.tally
  ransom_note.chars.tally.all? {|key_char, val_count| magtally[key_char].to_i >= val_count }
end
p can_construct

#* SOL 3 | SLICE | SEEMS FASTEST TO ME NOT SURE
def can_construct(ransom_note = "aa", magazine = "aab")
  ransom_note.each_char{|letter| return false unless magazine.slice!(letter)}
  true
end

