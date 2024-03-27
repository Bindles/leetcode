#* 1333. Filter Restaurants by Vegan-Friendly, Price and Distance
restaurants = [[1,4,1,40,10],[2,8,0,50,5],[3,8,1,30,4],[4,10,0,10,3],[5,1,1,15,1]]
vegan_friendly = 1
max_price = 50
max_distance = 10

#*
def filter_restaurants(restaurants, vegan_friendly, max_price, max_distance)
  restaurants.filter! { |rest| rest[2] == 1 } if vegan_friendly == 1
  restaurants.filter! { |rest| rest[3] <= max_price && rest[4] <= max_distance }
  restaurants.sort_by! { |rest| [-rest[1],-rest[0]] }
  restaurants.map { |rest| rest[0] }
end
p filter_restaurants(restaurants, vegan_friendly, max_price, max_distance)

def filter_restaurants(restaurants, vegan_friendly, max_price, max_distance)
  restaurants.filter! { |rest| rest["vegan friendly"] == 1 } if vegan_friendly == 1
  restaurants.filter! { |rest| rest["price"] <= max_price && rest["distance"] <= max_distance }
  restaurants.sort_by! { |rest| [-rest["rating"],-rest["id"]] }
  restaurants.map { |rest| rest["id"] }
end
#p filter_restaurants(restaurants, vegan_friendly, max_price, max_distance)


def filter_restaurants(restaurants, vegan_friendly, max_price, max_distance)
  #p restaurants
  n=%w[id rating vegan_friendly price distance]
  #n=%w[id rating price]
  # rest = [[1, 4, 40], [2, 8, 50]].map{|sub| n.zip(sub)}
  # p rest
  resth = restaurants.map{|sub| n.zip(sub).to_h}
  p 'DATA=>CHECK'
  p resth
  p resth[0]["id"]
  
  # p '--'
  # rest.each do |res|
  #   p res[0][1]
  # end
  
  resth.each do |res|
    p res["vegan_friendly"]
  end

  resth.filter! { |rest| rest["vegan_friendly"] == 1 } if vegan_friendly == 1
  resth.filter! { |rest| rest["price"] <= max_price && rest["distance"] <= max_distance }
  resth.sort_by! { |rest| [-rest["rating"],-rest["id"]] }
  resth.map { |rest| rest["id"] }
  
end

p filter_restaurants(restaurants, vegan_friendly, max_price, max_distance)


def filter_restaurants(restaurants, vegan_friendly, max_price, max_distance)
  n=%w[id rating vegan_friendly price distance]
  resth = restaurants.map{|sub| n.zip(sub).to_h}


  resth.select { |res| res["vegan_friendly"] == 1 } if vegan_friendly == 1
  resth.select { |res| res["price"] <= max_price && res["distance"] <= max_distance }
  resth.sort_by { |res| [-res["rating"],-res["id"]] }
  resth.map { |res| res["id"] }
  
end

def filter_restaurants(restaurants, vegan_friendly, max_price, max_distance)
  n=%w[id rating vegan_friendly price distance]
  resth = restaurants.map{|sub| n.zip(sub).to_h}

  resth.select { |res| res["vegan_friendly"] == 1 } if vegan_friendly == 1
  resth .select { |res| res["price"] <= max_price && res["distance"] <= max_distance }
        .sort_by { |res| [-res["rating"],-res["id"]] }
        .map { |res| res["id"] }
  
end

def filter_restaurants(restaurants, vegan_friendly, max_price, max_distance)
  n = %w[id rating vegan_friendly price distance]
  
  restaurants.map { |sub| n.zip(sub).to_h }
             .then { |resth| vegan_friendly == 1 ? resth.select { |res| res["vegan_friendly"] == 1 } : resth }
             .select { |res| res["price"] <= max_price && res["distance"] <= max_distance }
             .sort_by { |res| [-res["rating"], -res["id"]] }
             .map { |res| res["id"] }
end
p filter_restaurants(restaurants, vegan_friendly, max_price, max_distance)

