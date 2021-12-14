class Patient 
    attr_accessor :name, :age, :owner, :phone
    attr_reader :id, :species
    # attr_writer :name

    @@all = []
    def initialize(id, name, species, age, owner, phone)
        @id = id
        @name = name
        @species = species
        @age = age
        @owner = owner
        @phone = phone
        @@all << self
    end 

    def self.all
        @@all
    end 

end 

p1 = Patient.new(1, 'rose', 'cat', 10, 'ix', '(999)999-9999')
p2 = Patient.new(2, 'tod', 'dog', 3, 'bill', '(999)999-9999')
p3 = Patient.new(3, 'bubbles', 'cat', 5, 'jinnie', '(999)999-9999')

