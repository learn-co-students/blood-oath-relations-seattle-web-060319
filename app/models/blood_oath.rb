class Blood_oath

@@all = []

  attr_accessor :follower_object, :cult_object

def initialize(follower_object, cult_object)
  @follower_object = follower_object
  @cult_object = cult_object
  @initialization_date = Time.now.strftime("%Y-%m-%d")
  @@all << self
end

def self.all
  @@all
end



end
