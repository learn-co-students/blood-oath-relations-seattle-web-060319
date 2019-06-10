class Cult

@@all = []

attr_accessor :name, :location, :founding_year, :slogan

def initialize(name, location, founding_year, slogan)
  @name = name
  @location = location
  @founding_year = founding_year
  @slogan = slogan
  @@all << self
end

def self.all
  @@all
end

def recruit_follower(follower_object)
  Blood_oath.new(follower_object, self)
end

def cult_population
  followers.length
end

def self.find_by_name(string)
  @@all.select{|cult| cult.name == string}
end

def self.find_by_location(string)
  @@all.select{|cult| cult.location == string}
end

def find_by_founding_year(year)
  @@all.select{|cult| cult.founding_year == year}
end

def average_age
  f_arr = followers
  f_arr = f_arr.map{|blood_oath| blood_oath.follower_object.age}
  sum = 0
  f_arr.collect{|age| sum += age}
  (sum.to_f/f_arr.length)

end

def my_followers_mottos
  followers.map{|blood_oath| puts blood_oath.follower_object.life_motto}

end

def followers
    Blood_oath.all.find_all{|blood_oath| blood_oath.cult_object == self}
end

def self.least_popular
  populations = @@all.map{|cult|  cult.cult_population}
  i = populations.index(populations.min)
  @@all[i]
end

def self.most_common_location
  location_arr =  @@all.map{|cult| cult.location }
  location_arr = location_arr.map{|location| location_arr.count(location)}
  i = location_arr.index(location_arr.max)
  @@all[i].location
 end
end
