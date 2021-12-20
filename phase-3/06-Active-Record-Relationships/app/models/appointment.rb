class Appointment < ActiveRecord::Base
    belongs_to :vet
    belongs_to :patient
end 