require 'fileutils'

# Function to create a directory and Ruby file
def create_problem_directory(problem_name, start_function)
  # Extract problem number using regex
  problem_num = problem_name.scan(/\d+/).first

  # Create directory in C:/dev/leetcode
  dir_path = "C:/dev/leetcode/#{problem_name}"
  FileUtils.mkdir_p(dir_path)

  # Create .rb file with start function
  file_path = "#{dir_path}/#{problem_num}.rb"
  File.open(file_path, 'w') do |file|
    file.puts("def #{start_function}\n  # Your code here\nend")
  end

  puts "Directory and Ruby file created successfully at #{dir_path}"
end

# Get user input for problem name and start function
print "Enter the Problem name (usually starts with a number, ex: 198. House Robber): "
problem_name = gets.chomp

print "Enter the start function name: "
start_function = gets.chomp

# Call the function to create the directory and Ruby file
create_problem_directory(problem_name, start_function)
