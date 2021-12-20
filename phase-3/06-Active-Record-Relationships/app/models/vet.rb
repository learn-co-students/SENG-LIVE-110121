class Vet < ActiveRecord::Base
    has_many :appointments
    has_many :patients, through: :appointments
    # SELECT "patients".* FROM "patients" INNER JOIN "appointments" ON "patients"."id" = "appointments"."patient_id" WHERE "appointments"."vet_id" = ?

    def find_old_patients
        self.patients.where("age > 9")
        #self.patients.where("age > ?", num)
        binding.pry
        # SELECT "patients".* FROM "patients" INNER JOIN "appointments" ON "patients"."id" = "appointments"."patient_id" WHERE "appointments"."vet_id" = ? AND (age > 9)
    end 

    def list_names_and_numbers
        self.patients.pluck(:name, :phone)
    end 

    def self.all_vet_names
        self.all.pluck(:vet_name)
    end 

    def oldest_pet
        self.patients.maximum(:age)
    end 

    def self.most_patients 
        self.all.max{|v| v.patients.length}
    end 

   


end 