// 1700. Number of Students Unable to Eat Lunch
//students = [1,1,0,0]; sandwiches = [0,1,0,1]
students = [1,1,1,0,0,1]; sandwiches = [1,0,0,0,1,1]
/**
 * @param {number[]} students
 * @param {number[]} sandwiches
 * @return {number}
 */
var countStudents = function(students, sandwiches) {
  while (students.length > 0) {
      if (students[0] === sandwiches[0]) {
          students.shift();
          sandwiches.shift();
      } else {
          students.push(students.shift());
      }

      if (!students.includes(sandwiches[0])) break;
  }
  return students.length;
};
console.log(countStudents(students, sandwiches), 3);