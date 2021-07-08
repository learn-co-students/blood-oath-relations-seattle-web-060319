class Cult
  attr_accessor :name, :location, :founding_year, :slogan

  @@all = []

  def initialize(name, location, founding_year, slogan)
    @name = name
    @location = location
    @founding_year = founding_year
    @slogan = slogan
    @@all << self
  end

  def my_bloodoaths
    BloodOath.all.select { |bloodoath| bloodoath.cult == self }
  end

  def cult_population
    my_bloodoaths.length
  end

  def average_age
    ages = []
    my_bloodoaths.select { |bloodoath| ages << bloodoath.follower.age }
    number_of_ages = ages.length
    total_ages = ages.sum
    return total_ages / number_of_ages
  end

  def my_followers_mottos
    my_bloodoaths.collect { |bloodoath| bloodoath.follower.life_motto }
  end

  # def minimum_age
  # end

  #Add age limit later
  def recruit_follower(follower)
    BloodOath.new(self, follower)
  end

  def self.all
    @@all
  end

  def self.find_by_name(cult_name)
    self.all.find { |cult| cult.name == cult_name }
  end

  def self.find_by_location(cult_location)
    self.all.select { |cult| cult.location == cult_location }
  end

  def self.find_by_founding_year(cult_founding_year)
    self.all.select { |cult| cult.founding_year == cult_founding_year }
  end

  def self.least_popular
    all_cults_population = nil
    self.all.each do |this_cult|
      if all_cults_population == nil || this_cult.cult_population < all_cults_population[1]
        all_cults_population = [this_cult.name, this_cult.cult_population]
      end
    end
    return all_cults_population[0]
  end

  def self.most_common_location
    locations = BloodOath.all.collect do |bloodoath|
      bloodoath.cult.location
    end
    locations.max_by { |location| locations.count(location) }
  end

end