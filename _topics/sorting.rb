array = [38, 27, 43, 3, 9, 10]

a = ['all', 'nice', 'zebra']
p a.sort
p a.sort_by { |x| x }
p a.sort_by { |x| -x }
p a.sort { |x, y| y <=> x }
p a.sort_by{|a,b| b <=> a}
# p a.sort_by{_1}
# p a.sort_by{|a,b| b <=> a}
# p a.sort_by{|a| -a}
#p a.sort_by(&:~)