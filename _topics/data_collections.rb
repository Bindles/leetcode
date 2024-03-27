restaurants_data = [[1, 4, 40], [2, 8, 50]]

restaurants_data.each_with_index do |data, index|
  id, rating, price = data
  puts "Restaurant #{index + 1}: [id: #{id}, rating: #{rating}, price: #{price}]"
end

p 'DATA'
n=%w[id rating price]
rest = [[1, 4, 40], [2, 8, 50]].map{|sub| n.zip(sub)}
p rest
resth = [[1, 4, 40], [2, 8, 50]].map{|sub| n.zip(sub).to_h}
p 'DATA=>CHECK'
p resth
p resth[0]["id"]

p '--'
rest.each do |res|
  p res[0][1]
end

resth.each do |res|
  p res["price"]
end



dataz = [["word", 12,], ["guy", 1]]
p dataz.to_h

x=[1, 4, 40]
n=%w[a b c]

p n.zip(x).to_h