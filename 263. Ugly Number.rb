#* 263. Ugly Number
n=6
# @param {Integer} n
# @return {Boolean}
def is_ugly(n)
    p n
    p 'a' if n % 2 == 0
    p 'b' if n % 3 == 0 
    p 'c' if  n % 5 == 0
end
p is_ugly(n)



def is_ugly(n)
    return false if n<1
    for factor in [2,3,5]
        p factor
        while n % factor == 0
            n /= factor
        end
    end
    return n == 1
end
p is_ugly(n)