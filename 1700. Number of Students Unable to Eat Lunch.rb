#* 1700. Number of Students Unable to Eat Lunch
#students = [1,1,0,0]; sandwiches = [0,1,0,1]
students = [1,1,1,0,0,1]; sandwiches = [1,0,0,0,1,1]
# @param {Integer[]} students
# @param {Integer[]} sandwiches
# @return {Integer}
def count_students(students, sandwiches)
    until students.empty?
      if students.first == sandwiches.first
        students.shift
        sandwiches.shift
      else
        students.push(students.shift)
      end
      break if students.all? {|s| s != sandwiches.first}

    end
    students.length
end
p count_students(students, sandwiches)