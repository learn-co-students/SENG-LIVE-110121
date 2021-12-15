class Veterinarian
    attr_accessor :name 
    attr_reader :certification, :specialty, :id 

    @@all = []
    def initialize(id, name, certification, specialty)
        @id = id
        @name = name
        @certification = certification
        @specialty = specialty
        @@all << self
    end 

    def self.all
        @@all
    end 
end 