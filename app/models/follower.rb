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

def my_cults_slogan
  cults.map{|cult| puts cult.slogan}
end

def self.most_active
counts_arr = @@all.map{|follower| follower.cults.count}
i = counts_arr.index(counts_arr.max)
@@all[i]

end

def self.top_ten
  f_arr = @@all.map{|follower| {follower => follower.cults.count}}
  f_arr = f_arr.sort_by{|h| h.values}
  if f_arr.length < 10
    f_arr
  else
    f_arr[-10..-1]
  end
 end

 def fellow_cult_members
  fellow_members = []
  self.cults.each do |my_cult|
    fellow_members << my_cult.followers 
  end
  # binding.pry
  fellow_members = fellow_members.flatten.uniq
  fellow_members.delete(self)
  fellow_members
 end

end
