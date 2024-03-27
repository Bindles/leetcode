#* 1333. Filter Restaurants by Vegan-Friendly, Price and Distance
restaurants = [[1,4,1,40,10],[2,8,0,50,5],[3,8,1,30,4],[4,10,0,10,3],[5,1,1,15,1]]
vegan_friendly = 1
max_price = 50
max_distance = 10
# @param {Integer[][]} restaurants
# @param {Integer} vegan_friendly
# @param {Integer} max_price
# @param {Integer} max_distance
# @return {Integer[]}
#* MY SOL
def filter_restaurants(restaurants, vegan_friendly, max_price, max_distance)
    n = %w[id rating vegan_friendly price distance]
    
    restaurants.map { |sub| n.zip(sub).to_h }
               .then { |resth| vegan_friendly == 1 ? resth.select { |res| res["vegan_friendly"] == 1 } : resth }
               .select { |res| res["price"] <= max_price && res["distance"] <= max_distance }
               .sort_by { |res| [-res["rating"], -res["id"]] }
               .map { |res| res["id"] }
end
p filter_restaurants(restaurants, vegan_friendly, max_price, max_distance)

#* WORKING . . .
# def filter_restaurants(restaurants, vegan_friendly, max_price, max_distance)
#     p restaurants
#     n=%w[id rating vegan_friendly price distance]
#     restaurants.each do | rest|
#         n.zip(rest).map{|sub| n.zip(sub)}
#     end
#     p restaurant[0]

# end


# def filter_restaurants(restaurants, vegan_friendly, max_price, max_distance)
#     p restaurants
#     n=%w[id rating vegan_friendly price distance]
#     restaurants.map{|sub| n.zip(sub)}
#     p 'zipped', restaurants
#     restaurants.each do |res|
#         p res
#     end

# end
# p filter_restaurants(restaurants, vegan_friendly, max_price, max_distance)



#* TEST
restaurants_data = [[1, 4, 40], [2, 8, 50]]

restaurants_data.each_with_index do |data, index|
  id, rating, price = data
  puts "Restaurant #{index + 1}: [id: #{id}, rating: #{rating}, price: #{price}]"
end

p 'DATA'
n=%w[id rating price]
rest = [[1, 4, 40], [2, 8, 50]].map{|sub| n.zip(sub)}
p rest
resth = [[1,4,1,40,10],[2,8,0,50,5],[3,8,1,30,4],[4,10,0,10,3],[5,1,1,15,1]].map{|sub| n.zip(sub).to_h}
p 'DATA=>CHECK'
p resth
p resth[0]["id"]

p '--'
rest.each do |res|
  p res[0][1]
end

resth.each do |res|
  p res
end



dataz = [["word", 12,], ["guy", 1]]
p dataz.to_h

x=[1, 4, 40]
n=%w[a b c]

p n.zip(x).to_h