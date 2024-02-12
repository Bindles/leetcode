# @param {String[][]} items
# @param {String} rule_key
# @param {String} rule_value
# @return {Integer}
#MY SOL
def count_matches(items, rule_key, rule_value)
  match=0
  case rule_key
  when "type"
    rule_key = 0
  when "color"
    rule_key = 1
  when "name"
    rule_key = 2
  end
  items.each{|item| match+=1 if item[rule_key] == rule_value} and match
end

#NOT MINE
def count_matches(items, rule_key, rule_value)
  rules = {"type"=>0, "color"=>1,"name"=>2}
  items.select{|item| item[rules[rule_key]] == rule_value}.length
end

#CALL
items = [["phone","blue","pixel"],["computer","silver","lenovo"],["phone","gold","iphone"]]
rule_key = "color"
rule_value = "silver"
p count_matches(items, rule_key, rule_value)

