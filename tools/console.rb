require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
cult1 = Cult.new("Flatiron", "Seattle", "Chicken", 2019)
cult2 = Cult.new("JimmyJohns", "Seattle", "Fast", 2010)
cult3 = Cult.new("Scientology", "Los Angeles", "give us money", 2000)

follower1 = Followers.new("Bob", 35, "Kowabunga")
follower2 = Followers.new("Danie", 26, "Mahalo")
follower3 = Followers.new("Michael", 47, "Hakumamatata")


# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
