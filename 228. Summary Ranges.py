import itertools
def summaryRanges(self, nums):
    return [re.sub('->.*>', '->', '->'.join(`n` for i, n in g))
            for _, g in itertools.groupby(enumerate(nums), lambda (i, n): n-i)]