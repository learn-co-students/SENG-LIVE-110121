class Patient
    attr_accessor :name, :species, :age,  :owner, :phone, :patient_id

    @@all = []

    def initialize(name, species, age, owner, phone, patient_id)
        @patient_id = patient_id
        @name = name
        @species = species
        @owner = owner
        @age = age
        @phone = phone
        @@all << self
    end 
   
    def self.all
        @@all
    end 

end 

