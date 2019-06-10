class Cult

    attr_reader :name, :location, :founding_year, :slogan
    attr_accessor :minimum_age
    @@all = []
    def initialize(name, location, founding_year, slogan, minimum_age=0)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @minimum_age = minimum_age
        @@all << self
    end


    def recruit_follower(follower)
        date = DateTime.now
        format_date = date.strftime("%Y-%m-%d")
        if follower.age >= minimum_age
            BloodOath.new(format_date, self, follower)
        else
            puts "Come back when you are not a baby, loser"
        end
    end

    def cult_population
        array = BloodOath.all.select do |oath|
            oath.cult == self
        end
        array.length
    end

    def self.find_by_name(name)
        self.all.find do |cult|
            cult.name == name
        end
    end

    def self.find_by_location(location)
        self.all.select do |cult|
            cult.location == location
        end
    end

    def self.find_by_founding_year(year)
        self.all.select do |cult|
            cult.founding_year == year
        end
    end

    def this_cult
        BloodOath.all.select {|oath| oath.cult == self}
    end


    def average_age
        array = self.this_cult.map {|oath| oath.follower.age}
        sum = array.inject(0, :+)
        sum.to_f/array.length.to_f
    end

    def my_followers_mottos
        this_cult.map {|oath| oath.follower.life_motto}
    end

    def self.least_popular
        array = BloodOath.all.sort_by{|oath| oath.cult.cult_population}
        array[0].cult
    end

    def self.most_common_location
        boom = Cult.all.map {|cult| cult.location}
        frequency = boom.inject(Hash.new(0)) {|h,v| h[v] += 1; h}
        boom.max_by { |v| frequency[v]}
    end






    def self.all
        @@all
    end


end