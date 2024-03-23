//2784. Check if Array is Good
//nums = [2, 1, 3]
class Solution {
public:
    bool isGood(vector<int>& nums) {
        int n = nums.size();
        unordered_map<int,int> mp;
        for(auto &i:nums) 
            if(i<1||i>=n||++mp[i]>=2+(i==n-1)) return false;
        return true;
    }
};