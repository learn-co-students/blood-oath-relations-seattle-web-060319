class Blood_oath

@@all = []

  attr_accessor :follower_object, :cult_object, :initiation_date

def initialize(follower_object, cult_object)
  @follower_object = follower_object
  @cult_object = cult_object
  @initiation_date = Time.now.strftime("%Y-%m-%d")
  @@all << self
end

def self.all
  @@all
end

def self.first_oath
f_arr = @@all.sort_by{|blood_oath| blood_oath.initiation_date}
f_arr[0].follower_object
end

end
