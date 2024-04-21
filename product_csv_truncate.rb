require 'csv'

def truncate_csv(csv_file_path, columns_to_keep)
  new_data = []

  # Read CSV file and keep only the specified columns
  CSV.foreach(csv_file_path, headers: true) do |row|
    new_row = CSV::Row.new([], [], true)
    row.headers.each do |header|
      new_row[header] = row[header] if columns_to_keep.include?(header)
    end
    new_data << new_row
  end

  # Write the truncated data back to the CSV file
  CSV.open(csv_file_path, 'w') do |csv|
    csv << new_data.first.headers # Write headers
    new_data.each { |row| csv << row.fields }
  end
end

# Command-line interface
puts "Enter the columns you want to keep (comma-separated):"
columns_input = gets.chomp.strip.split(",").map(&:strip)

# Example usage
csv_file_path = 'product_template_shopify.csv' # Replace with your CSV file path
truncate_csv(csv_file_path, columns_input)
puts "CSV file truncated successfully!"
