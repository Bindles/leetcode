#* 2678. Number of Senior Citizens
details = ["7868190130M7522","5303914400F9211","9273338290F4010"]
class Solution(object):
    def countSeniors(self, details):
        res=0
        for num in details:
            if int(num[11:13]) > 60:
                res+=1
        return res
    
print(Solution().countSeniors(details))
