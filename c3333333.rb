def shortest_substrings(arr)
  result = {}

  arr.each do |string|
    min_substring = nil

    # Iterate from beginning to end
    (0...string.length).each do |start|
      (start + 1..string.length).each do |end_idx|
        substring = string[start...end_idx]
        if arr.none? { |other| other != string && other.include?(substring) }
          min_substring = substring if min_substring.nil? || substring < min_substring
        end
      end
    end

    # Iterate from end to beginning
    (string.length - 1).downto(0) do |end_idx|
      (0..end_idx).each do |start|
        substring = string[start..end_idx]
        if arr.none? { |other| other != string && other.include?(substring) }
          min_substring = substring if min_substring.nil? || substring < min_substring
        end
      end
    end

    result[string] = min_substring
  end

  arr.map { |string| result[string] || "" }
end

# Test cases
puts shortest_substrings(["gfnt","xn","mdz","yfmr","fi","wwncn","hkdy"]).inspect
