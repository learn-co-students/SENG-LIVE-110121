class Clinic < ActiveRecord::Base
    has_many :patients, dependent: :destroy
    #dependent: :destroydestory will delete every child instance associated with clinic, if clinic is deleted

    def welcome
        puts "Welecome to #{self.clinic_name}" 
    end 

    
end 

