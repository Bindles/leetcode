#PYTHON
#* 27. Remove Element
nums = [3,2,2,3]; val = 3
# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
#* REMOVES ONLY 1 INSTANCE | UNLIKE RUBY | NOT PASS
def remove_element(nums, val):
    nums.remove(val)
    print(len(nums))

print(remove_element(nums,val))


#* PASS | IN PLACE
#*
def remove_element(nums, val):
    while val in nums:
        nums.remove(val)
    return(len(nums))

print(remove_element(nums,val))

#*
def remove_element(nums, val):
    nums[:] = [x for x in nums if x != 3] #modify the original list nums in place.
    return(len(nums))

print(remove_element(nums,val))

#*NOT IN PLACE | WILL NOT PASS
#*
def remove_element(nums, val):
    nums = list(filter(lambda x: x != 3, nums))
    return(len(nums))

print(remove_element(nums,val))

#*
def remove_element(nums, val):
    nums = [x for x in nums if x != 3] #create new list exclude 3
    return(len(nums))

print(remove_element(nums,val))


