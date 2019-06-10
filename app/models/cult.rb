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
  Blood_oath.all.find_all{|blood_oath| blood_oath.cult_object == self}.length
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
end
