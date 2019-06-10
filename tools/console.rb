require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


f1 = Follower.new("Aliya", 12, "it is what it is")
f2 = Follower.new("Jason", 25, "truth and beauty")

c1 = Cult.new("cult1", "Seattle", 1990, "go gas chicken")
c2 = Cult.new("cult2", "Hawaii", 1875, "island life")
c3 = Cult.new("cult3", "Seattle", 1609, "nice cult")

b1 = BloodOath.new("2019-06-12", c1, f2)
b2 = BloodOath.new("2017-04-23", c1, f2)

c1.recruit_follower(f1)
c2.recruit_follower(f2)
f1.join_cult(c2)



binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
