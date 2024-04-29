# Define a mapping of spelled-out numbers to their corresponding digits
spelled_out_to_digit = {
  'one' => '1',
  'two' => '2',
  'three' => '3',
  'four' => '4',
  'five' => '5',
  'six' => '6',
  'seven' => '7',
  'eight' => '8',
  'nine' => '9'
}

# Define a helper method to convert spelled-out numbers to digits
def convert_spelled_out_to_digit(str, spelled_out_to_digit)
  str.gsub(/\b(?:#{spelled_out_to_digit.keys.join('|')})\b/) { |match| spelled_out_to_digit[match] || match }
end

# Your array of strings
strings = %w[
  two1nine
  eightwothree
  abcone2threexyz
  xtwone3four
  4nineeightseven2
  zoneight234
  7pqrstsixteen
]

# Calculate the calibration values
calibration_values = strings.map do |str|
  # Convert spelled-out numbers to digits
  str = convert_spelled_out_to_digit(str, spelled_out_to_digit)
  
  # Extract the first and last digits
  digits = str[/\d+/]
  if digits
    first_digit = digits.chars.first.to_i
    last_digit = digits.chars.last.to_i
  
    # Concatenate the first and last digits
    first_digit * 10 + last_digit
  else
    0
  end
end

# Output the calibration values
puts calibration_values

