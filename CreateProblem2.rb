require 'fileutils'
require 'clipboard'

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

# Get user input for problem name
print "Enter the Problem name (usually starts with a number, ex: 198. House Robber): "
problem_name = gets.chomp

# Get start function from clipboard
puts "Copy the start function to the clipboard before proceeding."
start_function = Clipboard.paste.force_encoding('UTF-8')

# Call the function to create the directory and Ruby file
create_problem_directory(problem_name, start_function)
