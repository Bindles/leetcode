def format_time(time_str)
  seconds = time_str.to_f
  if seconds < 1e-6
    return "less than 1 microsecond"
  elsif seconds < 1e-3
    return "#{(seconds * 1e6).round(2)} microseconds"
  elsif seconds < 1
    return "#{(seconds * 1e3).round(2)} milliseconds"
  else
    return "#{seconds.round(2)} seconds"
  end
end

input = <<~HEREDOC
max_subarray_sum1 took 0.00688580000132788 seconds
max_subarray_sum2 took 0.0004428999964147806 seconds
max_subarray_sum3 took 2.9400005587376654e-05 seconds
max_subarray_sum0 took 1.920000067912042e-05 seconds
HEREDOC

input.each_line do |line|
  parts = line.strip.split(" took ")
  task_name = parts[0]
  time_str = parts[1].split(" ")[0]
  puts "#{task_name} took #{format_time(time_str)}"
end
