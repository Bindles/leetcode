#* 2678. Number of Senior Citizens
details = ["7868190130M7522","5303914400F9211","9273338290F4010"]
# @param {String[]} details
# @return {Integer}
def count_seniors(details)
    res = 0
    details.each do |num|
        res +=1 if num[11..12].to_i > 60
    end
    res
end
p count_seniors(details)