class BloodOath
  attr_accessor :initiation_date
  attr_reader :cult, :follower

  @@all = []

  def initialize(cult, follower)
    @cult = cult
    @follower = follower
    @initiation_date = Time.now.strftime("%Y-%m-%d")
    @@all << self
  end

  def self.first_oath
    @@all[0].follower
  end

  def self.all
    @@all
  end
end