require 'open-uri'
require 'nokogiri'

def display_problem_info(url)
  begin
    html_content = URI.open(url).read
    doc = Nokogiri::HTML(html_content)
    title = doc.at_css('h1').text.strip

    puts "Problem Name: #{title}"
    puts "\nStarting code:"
    puts "# LeetCode Problem: #{title}"
    puts "# Problem URL: #{url}"
    puts "\n# Your solution code here"
  rescue => e
    puts "An error occurred: #{e.message}"
  end
end

# Example usage
url = "https://leetcode.com/problems/custom-sort-string/"
display_problem_info(url)
