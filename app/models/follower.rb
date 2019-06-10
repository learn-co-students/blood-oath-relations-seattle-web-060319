class Follower

    attr_reader :name, :age, :life_motto

    @@all = []
    def initialize (name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @@all << self
    end

    def join_cult(cult)
        date = DateTime.now
        format_date = date.strftime("%Y-%m-%d")
        if self.age >= cult.minimum_age
            BloodOath.new(format_date, cult, self)
        else
            puts "Come back when you aren't a baby, loser"
        end
    end

    def self.of_a_certain_age(age)
        self.all.select do |follower|
            follower.age >= age
        end
    end

    def my_cults
        BloodOath.all.select do |oath|
            oath.follower == self
        end
    end

    def my_cults_slogans
        my_cults.map do |oath|
            oath.cult.slogan
        end
    end

    def self.most_active
        boom = BloodOath.all.map {|oath| oath.follower}
        frequency = boom.inject(Hash.new(0)) {|h,v| h[v] += 1; h}
        boom.max_by { |v| frequency[v]}
    end

    def self.top_ten
        return_array = []
        boom = BloodOath.all.map {|oath| oath.follower}

        10.times do 
            frequency = boom.inject(Hash.new(0)) {|h,v| h[v] += 1; h}
            cur_top = boom.max_by { |v| frequency[v]} 
            returnarray << cur_top
            boom.delete(cur_top)   
        end
        return_array
    end

    def fellow_cult_members
        return_array = []
        array = my_cults.map {|oath| oath.cult}
        array.each do |cult|
            BloodOath.all.each do |oath|
                if oath.cult == cult
                    return_array << oath.follower
                end
            end
        end
        return_array.uniq!
        return_array.delete(self)
        return_array
    end




    def self.all
        @@all
    end



end