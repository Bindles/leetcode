#* 1817. Finding the Users Active Minutes
logs = [[0,5],[1,2],[0,2],[0,5],[1,3]]
k = 5
# @param {Integer[][]} logs
# @param {Integer} k
# @return {Integer[]}
#*SOL 2
def finding_users_active_minutes(logs, k)
  user_activity_map = Hash.new { |h, k| h[k] = Set.new }
  logs.each { |user, minute| user_activity_map[user] << minute }

  mins = Array.new(k, 0)
  user_activity_map.each_value { |activity_set| mins[activity_set.size - 1] += 1 }
  mins
end
p finding_users_active_minutes(logs, k)

#* SOL 1
def finding_users_active_minutes(logs, k)
  user_activity_map = logs.group_by(&:first).transform_values { |minutes| Set.new(minutes.map(&:last)) }

  active_minutes_count = user_activity_map.transform_values(&:size).values.count_by { |count| count - 1 }

  (0...k).map { |i| active_minutes_count[i] || 0 }
end

class Array
  def count_by(&block)
    each_with_object(Hash.new(0)) { |el, counts| counts[yield(el)] += 1 }
  end
end

p finding_users_active_minutes(logs, k)


#* WORKING. . .
def finding_users_active_minutes(logs, k)
  logs.group_by { |user, minute| user }.transform_values { |minutes| minutes.size }.group_by { |user, count| count }.transform_values(&:size).values_at(*1..k)
end