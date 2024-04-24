#* 2335. Minimum Amount of Time to Fill Cups
amount = [5,4,4]
# @param {Integer[]} amount
# @return {Integer}
#* FINALLY GOT THIS AHHHH
def fill_cups(amount)
  [amount.max, (amount.sum / 2.0).ceil].max
end
p fill_cups(amount)



    