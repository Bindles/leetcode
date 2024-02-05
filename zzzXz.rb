a= [1,2,3,4,5,6]
p a.map {|x| x**2}
p a.select {|x| x**2 == 1}
p a.map &:even?
p a.select &:even?

p 1%2, 2%2, 3%2, 4%2, 5%2, 6%2


MAP => TRANSFORM
SELECT = FILTER