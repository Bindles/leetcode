#PYTHON
#*1773. Count Items Matching a Rule
items = [["phone","blue","pixel"],["computer","silver","lenovo"],["phone","gold","iphone"]]
ruleKey = "color"
ruleValue = "silver"

#*SOL | CONCISE
class S:
    def countMatches(self, items, ruleKey, ruleValue):
        itemList = {'type': 0, 'color': 1, 'name': 2}
        return sum(1 for item in items if item[itemList[ruleKey]] == ruleValue)
s=S()
print(s.countMatches(items, ruleKey, ruleValue))

#*SOL | ONELINER
class SS:
    def countMatches(self, items, ruleKey, ruleValue):
        return sum(itemList[{"type": 0, "color": 1, "name": 2}[ruleKey]] == ruleValue for itemList in items)
s=SS()
print(s.countMatches(items, ruleKey, ruleValue))

