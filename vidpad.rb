def stringify(hash)
  p "5554".to_i
  p 123.to_s.split('').map(&:to_i)
  p ["4",3,"2"].map(&:to_i)
  p 67584.digits.reverse
  p a=[1,2,3].map(&:+@)
  p String.new.is_a?(String)
  p String.methods
  p count.methods
end

stringify [1,2,3]