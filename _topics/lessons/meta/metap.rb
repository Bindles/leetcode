require 'csv'

# Read the CSV file
csv_data = CSV.read('C:\dev\leetcode\_topics\lessons\meta\data.csv')

# Access data from the CSV
csv_data.each do |row|
  # Check if the 'rental_id' column equals 1545
  if row[0] == '1545'
    # Process the row
    puts row.inspect
  end
end
