class Follower
  attr_accessor :name, :age, :life_motto

  @@all = []

  def initialize(name, age, life_motto)
    @name = name
    @age = age
    @life_motto = life_motto
    @@all << self
  end

  def cults
    my_cults = []
    BloodOath.all.select do |bloodoath|
      if bloodoath.follower == self
        my_cults << bloodoath.cult
      end
    end
    return my_cults
  end

  # Add Minimum Age Requirement after Bonus Cult Function
  def join_cult(a_specific_cult)
    a_specific_cult.recruit_follower(self)
  end

  def my_cults_slogans
    self.cults.collect do |cult|
      return cult.slogan
    end
  end

  # def fellow_cult_members
  # end

  def self.all
    @@all
  end

  def self.most_active
    most_active = BloodOath.all.collect do |bloodoath|
      bloodoath.follower
    end
    most_active.max_by { |follower| most_active.count(follower) }

  end

  def self.top_ten
    top_followers = BloodOath.all.collect do |bloodoath|
      bloodoath.follower
    end
      top_dawgs_array = []
      i = 0
      while i < top_followers.length && i < 10
      top_person = top_followers.max_by { |follower| top_followers.count(follower) }
        top_dawgs_array << top_person
        top_followers.delete_if {|person| person == top_person}
        i += 1
      end
      top_dawgs_array
  end

  def self.of_a_certain_age(age)
    certain_age_follower = []
    BloodOath.all.select do |bloodoath|
      if age == bloodoath.follower.age
      certain_age_follower << bloodoath.follower

      end
    end
    certain_age_follower
  end
end