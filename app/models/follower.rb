class Follower
attr_reader :name, :age, :life_motto
@@all = []

  def initialize(name, age, life_motto)
    @name = name
    @age = age
    @life_motto = life_motto
    @@all << self
  end

  def self.all
    @@all
  end

  def cults
    Cult.all.select do |cult|
      cult.followers.include? (self)
    end
  end

  def join_cult(instance)
    Cult.all.each do |cult|
      if cult == instance
    cult.followers << self
      end
    end
  end

  def self.of_a_certain_age(age)
    self.all.select do |member|
      member.age >= age
    end
  end

  def my_cults_slogans
    cults.map do |cult|
      cult.slogan
    end
  end

  def self.most_active
    x = self.all.sort do |follower|
      follower.cults.length
    end
    x.last
  end

  def self.top_ten
    x = self.all.sort do |follower|
      follower.cults.length
    end
    x[-2..-1]
  end

end
