#*2525. Categorize Box According to Criteria
# @param {Integer} length
# @param {Integer} width
# @param {Integer} height
# @param {Integer} mass
# @return {String}
#*SOL 1
def categorize_box(length = 1000, width = 35, height = 700, mass = 300)
  bulky = heavy = false
  dimensions = [length, width, height, mass]
  volume = (dimensions[0] * dimensions[1] * dimensions[2])
  bulky = true if dimensions.any? {_1 >= 10**4} || volume >= 10**9
  heavy = true if mass >= 100
  if bulky == true && heavy == true
    "Both"
  elsif heavy == true
    "Heavy"
  elsif bulky == true 
    "Bulky"
  else
    "Neither"
  end
end
p categorize_box

#*SOL 2 | NICE CONCISE | LEARNED ALOT
def categorize_box(length = 1000, width = 35, height = 700, mass = 300)
    cat = []
    cat << "Heavy" if mass >= 100
    if length * width * height >= 10 ** 9 || [length, width, height].any? {|l| l >= 10 ** 4}
        cat << 'Bulky'
    end
    cat.size > 1 ? "Both" : (cat.first || "Neither")
end
p categorize_box

