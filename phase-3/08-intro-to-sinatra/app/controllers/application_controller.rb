class ApplicationController < Sinatra::Base
    set :default_content_type, 'application/json'

    get '/' do
     "Hello World"
    end

    get '/patients' do
        Patient.all.to_json
    end 
    
    get '/clinics' do
        Clinic.all.to_json
    end 

    get '/patients/:id' do
        Patient.find(params[:id]).to_json
    end


    post '/patients' do 
        Patient.create({species:params[:species], name: params[:name], age:params[:age], owner:params[:owner], phone:params[:phone], active:params[:active], clinic_id:params[:clinic_id]}).to_json
    end 

end