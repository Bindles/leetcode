#* 1387. Sort Integers by The Power Value
lo = 12
hi = 15
k = 2
# @param {Integer} lo
# @param {Integer} hi
# @param {Integer} k
# @return {Integer}
#* MY SOL 1
def get_kth(lo, hi, k)
    def get_pow(num, ans)
        return ans if num == 1
        num = num.even? ? num / 2 : 3 * num + 1
        ans += 1
        get_pow(num, ans)
    end
    
    maps = (lo..hi).map {|i| [i, get_pow(i, 0)] }.to_h
    ans = maps.sort_by {|k, v| v }.map(&:first)
    ans[k - 1]
end

#* MY SOL 2 | MUCH FASTER | THIS TOOK LONG TIME IM PROUD OF IT 
def get_kth(lo, hi, k)
    memo = {}

    def get_steps(num, memo)
        return 1 if num == 1
        return memo[num] if memo.key?(num)

        if num.even?
            memo[num] = get_steps(num / 2, memo) + 1
        else
            memo[num] = get_steps(num * 3 + 1, memo) + 1
        end

        return memo[num]
    end

    ans = (lo..hi).map {|i| { 'val' => i, 'steps' => get_steps(i, memo) } }
    ans.sort_by! {|item| [item['steps'], item['val']] }
    return ans[k - 1]['val']
end
