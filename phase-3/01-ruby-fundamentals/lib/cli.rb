CLINIC_NAME = 'Flatiron clinic for cute snoots'
$vet = 'Anderson'
patient = 'rose'
binding.pry
def initialize_app
    patients = [
        {patient_id:0, species:"dog", name:"Jack", owner:"Diesel Reyes", phone: 9999999999},
        {patient_id:1, species:"bird", name:"Mia", owner:"Diesel Reyes", phone: 9999999999},
        {patient_id:2, species:"cat", name:"Milo", owner:"Oliver Olson", phone: 9999999999},
        {patient_id:3, species:"dog", name:"Mia", owner:"Luna Turner", phone: 9999999999},
        {patient_id:4, species:"bird", name:"Lucy", owner:"Zoey Byrd", phone: 9999999999},
        {patient_id:5, species:"cat", name:"Hank", owner:"Scout Knight", phone: 9999999999},
        {patient_id:6, species:"bird", name:"Piper", owner:"Lilly Daniel", phone: 9999999999},
        {patient_id:7, species:"bird", name:"Jax", owner:"Abby Erickson", phone: 9999999999},
        {patient_id:8, species:"cat", name:"Rosie", owner:"Bella Ramos", phone: 9999999999},
        {patient_id:9, species:"cat", name:"Koda", owner:"Jax Ingram", phone: 9999999999},
        {patient_id:10, species:"bird", name:"Murphy", owner:"Gracie Smith", phone: 9999999999},
        {patient_id:11, species:"bird", name:"Lily", owner:"Max Patel", phone: 9999999999},
        {patient_id:12, species:"cat", name:"Moose", owner:"Jack Bolton", phone: 9999999999},
        {patient_id:13, species:"dog", name:"Oliver", owner:"Mia Ward", phone: 9999999999},
        {patient_id:14, species:"cat", name:"Rocky", owner:"Daisy Ryan", phone: 9999999999},
        {patient_id:15, species:"cat", name:"Gunner", owner:"Abby Williams", phone: 9999999999},
        {patient_id:16, species:"bird", name:"Oliver", owner:"Gunner Guerrero", phone: 9999999999},
        {patient_id:17, species:"cat", name:"Lola", owner:"Toby Guerrero", phone: 9999999999},
        {patient_id:18, species:"bird", name:"Duke", owner:"Stella Vaughan", phone: 9999999999},
        {patient_id:19, species:"bird", name:"Lola", owner:"Finn Harris", phone: 9999999999},
        {patient_id:20, species:"dog", name:"Charlie", owner:"Ollie Marsh", phone: 9999999999},
        {patient_id:21, species:"bird", name:"Gracie", owner:"Charlie", phone: 9999999999},
        {patient_id:22, species:"dog", name:"Mia", owner:"Louie Reyes", phone: 9999999999},
        {patient_id:23, species:"dog", name:"Zeus", owner:"Gus Olson", phone: 9999999999},
        {patient_id:24, species:"cat", name:"Marley", owner:"Zoe Byrd", phone: 9999999999},
        {patient_id:25, species:"bird", name:"Abby", owner:"Ruby Knight", phone: 9999999999},
        {patient_id:26, species:"cat", name:"Rocky", owner:"Tucker Daniel", phone: 9999999999},
        {patient_id:27, species:"dog", name:"Teddy", owner:"Harley Erickson", phone: 9999999999},
        {patient_id:28, species:"bird", name:"Leo", owner:"Ruby Ramos", phone: 9999999999},
        {patient_id:29, species:"dog", name:"Teddy", owner:"Ruby Ingram", phone: 9999999999},
    ]
  menu patients 
end 

def menu patients 
    puts "Welcome to #{CLINIC_NAME}"
    puts "Please choose an option:"
    puts "1. List all Patients"
    puts "2. Add Patient"

    user_input = gets.strip
    # if user_input == "1"
    #     puts patients.map{|p| p[:name] }
    # else
    # end 

    case user_input
    when "1"
        puts patients.map{|p| p[:name] }
    when "2"
       patients << add_patient
       puts patients[-1]
    else
        puts "sorry that option does not exist, please choose again"
        initialize_app
    end 
end 

def add_patient
    puts 'What is your pets species?'
    species = gets.strip
    puts 'What is your pets name?'
    name = gets.strip
    puts 'What is your name?'
    owner = gets.strip
    puts 'What is your number?'
    number = gets.strip

    patient_hash = {
        species: species,
        name: name,
        owner: owner,
        number: number
    }

    puts "#{patient_hash} is this correct Y or N"
    correct = gets.strip

    if correct == "Y" || correct == 'y'
        patient_hash
    else
        add_patient 
    end 
end 