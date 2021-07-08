require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cult1 = Cult.new("Cheese Cult", "Arizona", 1972, "Eat me")
cult2 = Cult.new("Milk Cult", "Texas", 2017, "Drink me")
cult3 = Cult.new("Yogurt Cult", "Wisconsin", 2000, "Slurp me")
follower1 = Follower.new("Albert du Fromage", 27, "I like to eat cheese")
follower2 = Follower.new("Darigold Summer", 19, "I like to drink milk")
follower3 = Follower.new("Chamblis Camembert", 37, "Live, Laugh, Cheese")
follower4 = Follower.new("Brie Larson", 32, "Marvelous")
bo1 = BloodOath.new(cult1, follower1)
bo2 = BloodOath.new(cult2, follower1)
bo3 = BloodOath.new(cult1, follower3)
bo4 = BloodOath.new(cult1, follower4)
bo5 = BloodOath.new(cult3, follower1)
bo6 = BloodOath.new(cult2, follower3)

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
