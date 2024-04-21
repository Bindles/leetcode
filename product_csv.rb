require 'csv'

def read_column_names(csv_file_path)
  column_names = []
  CSV.open(csv_file_path, 'r') do |csv|
    column_names = csv.first
  end
  column_names
end

# Example usage
csv_file_path = 'product_template_shopify.csv' # Replace 'product_template_shopify.csv' with your CSV file path
column_names = read_column_names(csv_file_path)

puts "Column names: #{column_names}"
