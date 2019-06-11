require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
a = Cult.new("flat_earthers", "seattle", 1831, "the earth is flat")
b = Cult.new("bigfoot_hunters", "Ukraine", 2018, "he's real.")
c = Cult.new("flat_iron_students", "seattle", 2015, "everyone shall pass")
x = Follower.new("Christopher Columbus", 40, "a whole new world")
y = Follower.new("Napolean", 39, "the french are the best")
z = Follower.new("Ivan", 15, "vodka!")
var_name = x.join_cult(c)
var_name.initiation_date = "1999-01-01"
x.join_cult(b)
x.join_cult(a)
y.join_cult(a)
z.join_cult(a)
z.join_cult(b)

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
