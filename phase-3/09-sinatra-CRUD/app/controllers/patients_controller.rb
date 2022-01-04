class PatientsController < ApplicationController
  #Get all patients and include clinics
  get "/patients" do
    patients = Patient.all
    patients.to_json({include:[clinic: {only: :clinic_name}], except: :clinic_id})
  end 

  #Create a patient
  #Update a patient
  #Delete a patient
end

