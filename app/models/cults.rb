class Cult
attr_reader :name, :location, :founding_year, :slogan
attr_accessor :followers
@@all = []

  def initialize(name, location, founding_year, slogan)
    @name = name
    @location = location
    @founding_year = founding_year
    @slogan = slogan
    @followers = []
    @@all << self
  end

  def self.all
    @@all
  end

  def recruit_follower(follower)
    @followers << follower
    @followers
    # binding.pry
  end

  def cult_population
    @followers.length
  end

  def self.find_by_name(name)
    self.all.find do |cult|
      cult.name == name
    end
  end

  def self.find_by_location(location)
    self.all.find do |cult|
      cult.location == location
    end
  end

  def self.find_by_founding_year(year)
    self.all.find do |cult|
      cult.founding_year == year
    end
  end

  def average_age
    total = 0
    @followers.each do |follower|
      total += follower.age
    end
    total.to_f/@followers.length
  end

  def my_followers_mottos
    @followers.map do |follower|
      follower.life_motto
    end
  end

  def self.most_common_location
    counts = Hash.new(0)
    x = self.all.map do |cult|
      cult.location
    end
     x.each do |location|
       counts[location] += 1
     end
     sorted = counts.sort_by do |key, value|
       value
     end
     sorted[-1][0]
  end

  def self.least_popular
    x = self.all.sort do |cult|
      cult.followers.length
    end
    x[0]
  end



end
