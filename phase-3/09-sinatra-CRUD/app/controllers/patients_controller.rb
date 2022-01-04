class PatientsController < ApplicationController
  #Get all patients and include clinics
  get "/patients" do
    patients = Patient.all
    patients.to_json({include: [clinic:{only: :clinic_name}]})
    # patients.to_json({include: [clinic:{only: :clinic_name}], except: :clinic_id})
  end 

  #Create a patient
  post "/patients" do 
    patient = Patient.create({name:params[:name], age:params[:age], owner:params[:owner], phone:params[:phone], active:params[:active], clinic_id:params[:clinic_id]})
    patient.to_json(include: :clinic)
  end 
  #Update a patient

  patch "/patients/:id" do 
    patient = Patient.find(params[:id])
    patient.update({name:params[:name], age:params[:age], owner:params[:owner], phone:params[:phone], active:params[:active], clinic_id:params[:clinic_id]})
    patient.to_json(include: :clinic)
  end 
  #Delete a patient

  delete "/patients/:id" do

    patient = Patient.find(params[:id])
    patient.destroy
  
    {message: 'patient deleted'}.to_json
  end 

end

