class Patient
    attr_accessor :name, :species, :age,  :owner, :phone, :patient_id

    @@all = []

    def initialize(patient_id, species, age, name, owner, phone)
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


    #Print 
    def print_attr
        puts "Name: #{self.name}"
        puts "Species: #{self.species}"
        puts "Owner: #{self.owner}"
        puts "Age: #{self.age}"
        puts "Phone Number: #{self.phone}"
    end 

    #Update phone
    def update_number(new_number)
        self.phone = new_number
    end 

    #Destroy one 
    def destroy
        @@all = @@all.filter{|p| p != self } 
        puts "#{self.name} removed from the system"
    end 

    #Destroy all
    def self.destroy_all
        @@all = []

    end

end 


class Cat < Patient

    def likes_water
        puts "Cats hate water"
    end
    
    def self.all
        @@all.filter{|p| p.class == self}
    end 
end 
