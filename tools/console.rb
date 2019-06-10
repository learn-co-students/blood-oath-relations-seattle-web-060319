require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

names = [*('a'..'z')]

philip = Follower.new("Philip", 24, "M&M's")
spencer = Follower.new("Spencer", 26, "Skittles")
rohit = Follower.new("Rohit", 23, "Chicken is gas")
tom_cruise = Follower.new("Tom Cruise", 60, "I can't kill myself losers")
jason = Follower.new("Jason", 32, "Hey y'all")
a = Follower.new("a", 32, "a")
b = Follower.new("b", 32, "b")
c = Follower.new("c", 32, "c")
d = Follower.new("d", 32, "d")
e = Follower.new("e", 32, "e")
f = Follower.new("f", 32, "f")
g = Follower.new("g", 32, "g")
h = Follower.new("h", 32, "h")
i = Follower.new("i", 32, "i")
j = Follower.new("j", 32, "j")
k = Follower.new("k", 32, "k")
l = Follower.new("l", 32, "l")
m = Follower.new("m", 32, "m")
n = Follower.new("n", 32, "n")
o = Follower.new("o", 32, "o")
p = Follower.new("p", 32, "p")






flatiron_school = Cult.new("Flatiron School", "Seattle", 2012, "Code or Die")
church_of_scientology = Cult.new("Scientology", "L.A.", 2001, "Tom Cruise will kill you if you leave")
amazon= Cult.new("Amazon", "Seattle", 1999, "What are books?")


flatiron_school.recruit_follower(philip)
flatiron_school.recruit_follower(spencer)
flatiron_school.recruit_follower(tom_cruise)
church_of_scientology.recruit_follower(rohit)
church_of_scientology.recruit_follower(jason)
amazon.recruit_follower(jason)
flatiron_school.recruit_follower(jason)
flatiron_school.recruit_follower(a)
flatiron_school.recruit_follower(b)
flatiron_school.recruit_follower(c)
flatiron_school.recruit_follower(d)
flatiron_school.recruit_follower(e)
flatiron_school.recruit_follower(rohit)






pry

puts "Mwahahaha!" # just in case pry is buggy and exits
