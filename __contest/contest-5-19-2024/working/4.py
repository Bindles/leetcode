class Solution:
    count = 0
    def waysToReachStair(self, k: int) -> int:
        
        def move_up(i: int, jump: int):
            if i == k:
                self.count += 1
            
            if i > k + 1:
                return
            
            move_up(i + 2 ** jump, jump + 1)
            move_down(i - 1, jump)
        
        def move_down(i: int, jump: int):
            if i == k:
                self.count += 1
            
            if i == 0:
                return
            
            move_up(i + 2 ** jump, jump)
        
        move_up(1, 0)
        move_down(1, 0)
        
        return self.count