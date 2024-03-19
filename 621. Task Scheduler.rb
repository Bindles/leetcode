#* 621. Task Scheduler
tasks = ["A","A","A","B","B","B"]
n = 2
# @param {Character[]} tasks
# @param {Integer} n
# @return {Integer}
def least_interval(tasks, n)
    freqs = tasks.tally.values
    max = freqs.max
    f = freqs.select {_1 == max }.length
    return [tasks.length, (max - 1) * (n + 1) + f].max
end