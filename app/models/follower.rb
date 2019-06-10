class Follower

@@all = []

attr_accessor :name, :age, :life_motto

def initialize(name, age, life_motto)
  @name = name
  @age = age
  @life_motto = life_motto
  @@all << self
end

def cults
  cults = Blood_oath.all.map do |oath|
    if oath.follower_object == self
       oath.cult_object
    end
  end
  cults.compact!
end

def join_cult(cult)
  Blood_oath.new(self, cult)
end

def self.all
  @@all
end

def self.of_a_certain_age(age)
  @@all.select{|follower| follower.age >= age}
end

end
