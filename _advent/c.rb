f = %w[rhqrpdxsqhgxzknr2foursnrcfthree
  2bmckl
  four95qvkvveight5
  2tqbxgrrpmxqfglsqjkqthree6nhjvbxpflhr1eightwohr]
  
  string_digits = {
    'one' => 1,
    'two' => 2,
    'three' => 3,
    'four' => 4,
    'five' => 5,
    'six' => 6,
    'seven' => 7,
    'eight' => 8,
    'nine' => 9
  }
  
  def check_for_numbers(string)
    string.match?(/\d/)
  end
  
  def check_for_char_digit(string)
    string_digits[string] || 0
  end
  
  def get_start_number(line)
    line.each_char.with_index do |char, index|
      return char if check_for_numbers(char)
      return string_digits[line[index - 2..index]] if index > 1 && string_digits[line[index - 2..index]]
      return string_digits[line[index - 3..index]] if index > 2 && string_digits[line[index - 3..index]]
      return string_digits[line[index - 4..index]] if index > 3 && string_digits[line[index - 4..index]]
    end
    0
  end
  
  def get_last_number(line)
    line.reverse.each_char.with_index do |char, index|
      char_number = line.length - index - 2
      return char if check_for_numbers(char)
      return string_digits[line[char_number..char_number + 2]] if index > 1 && string_digits[line[char_number..char_number + 2]]
      return string_digits[line[char_number..char_number + 3]] if index > 2 && string_digits[line[char_number..char_number + 3]]
      return string_digits[line[char_number..char_number + 4]] if index > 3 && string_digits[line[char_number..char_number + 4]]
    end
    0
  end
  
  def calculate_total_number(lines)
    total_number = 0
    lines.each do |line|
      start_number = get_start_number(line)
      last_number = get_last_number(line)
      total_number += (start_number.to_s + last_number.to_s).to_i
    end
    puts total_number
  end
  
  def main(lines)
    calculate_total_number(lines)
  end
  
  main(f)
  