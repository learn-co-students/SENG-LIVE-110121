def initialize_app 
    seed
    menu
end 

#runs main menu
def menu
    # Executes command in terminal 
    system "clear" 
    puts "Welcome to Flatiron Clinic for cute snoots"
    puts "Please choose an option:"
    puts "1. List all Patients"
    puts "2. Enter new Patient"
    puts "3. Find Pet"
    puts "4. Update phone number"
    puts "5. Delete Patient"
    puts "6. Delete one Patient"

    puts "0. To exit"

    user_input = gets.strip

    case user_input
    when "1"
        list_patient_info 
        return_to_menu  
    when "2"
        add_patient
        return_to_menu 
    when "3"
        find_patient
        return_to_menu
    when "4"
        update_number
        return_to_menu   
    when "5"
        delete_all_patients
        return_to_menu 
    when "6"
        delete_one
        return_to_menu
    when "0"
        puts "goodbye"
    else
        puts try_again
        return_to_menu
    end
end 

#find pet
def find_patient
    puts "what is your pets name?"
    name = gets.strip


    #TODO create a method to find Patient their name
end 

#Lists all Patient info
def list_patient_info 
    #TODO add a method to list all of our patient info 
    puts Patient.all
    binding.pry
end 

#Creates an instance of a patient 
def add_patient 
        puts 'What is your pets species?'
        species = gets.strip
        puts 'What is your pets name?'
        name = gets.strip
        puts 'What is your pets age?'
        age = gets.strip
        puts 'What is your name?'
        owner = gets.strip
        puts 'What is your number?'
        number = gets.strip

        patient_hash = {
            #Gets the id of the last patient and adds 1 to it
            patient_id: Patient.all[-1].id+1,
            species:species,
            name: name,
            age: age,
            owner:owner,
            number:number
        }

        puts "#{patient_hash} is this correct? Y or N"
        correct = gets.strip
        if correct == 'Y' ||  correct == 'y'
            Patient.new(species, name, age, owner, number)
        else
            add_patient 
        end 
end 

def update_number
    puts "What is your patients name?"
    name = gets.strip

    patient = Patient.all.find{|p| p.name == name}

    puts "What is your new phone number?"
    new_phone = gets.strip
    
    patient.update_number(new_phone)
    patient.print_attr


end 

def delete_all_patients
    Patient.destroy_all
    binding.pry
end 

#Default message for incorrect input
def try_again
    'sorry that option does not exsist, please chose again'
end 

#Return to menu buton
def return_to_menu
    puts 'press any key to return to menu'
    user_input = gets.strip
    menu
end 

#destroy one 
def delete_one
    puts "What is your patients name?"
    name = gets.strip

    patient = Patient.all.find{|p| p.name == name}
    patient.destroy
end 
#Create fake data
def seed
    patients = [
        {patient_id:30, species:"cat", age:10, name:"rose p", owner:"ix p", phone: 9999999999},
        {patient_id:0, species:"dog", age:1, name:"Jack Reyes", owner:"Diesel Reyes", phone: 9999999999},
        {patient_id:1, species:"bird", age:2, name:"Mia Reyes", owner:"Diesel Reyes", phone: 9999999999},
        {patient_id:2, species:"cat", age:3, name:"Milo Olson", owner:"Oliver Olson", phone: 9999999999},
        {patient_id:3, species:"dog", age:4, name:"Mia Turner", owner:"Luna Turner", phone: 9999999999},
        {patient_id:4, species:"bird", age:1, name:"Lucy Byrd", owner:"Zoey Byrd", phone: 9999999999},
        {patient_id:5, species:"cat", age:11, name:"Hank Knight", owner:"Scout Knight", phone: 9999999999},
        {patient_id:6, species:"bird", age:1, name:"Piper Daniel", owner:"Lilly Daniel", phone: 9999999999},
        {patient_id:7, species:"bird", age:1, name:"Jax Erickson", owner:"Abby Erickson", phone: 9999999999},
        {patient_id:8, species:"cat", age:6, name:"Rosie Ramos", owner:"Bella Ramos", phone: 9999999999},
        {patient_id:9, species:"cat", age:3, name:"Koda Ingram", owner:"Jax Ingram", phone: 9999999999},
        {patient_id:10, species:"bird", age:2, name:"Murphy Smith", owner:"Gracie Smith", phone: 9999999999},
        {patient_id:11, species:"bird", age:1, name:"Lily Patel", owner:"Max Patel", phone: 9999999999},
        {patient_id:12, species:"cat", age:9, name:"Moose Bolton", owner:"Jack Bolton", phone: 9999999999},
        {patient_id:13, species:"dog", age:5, name:"Oliver Ward", owner:"Mia Ward", phone: 9999999999},
        {patient_id:14, species:"cat", age:8, name:"Rocky Ryan", owner:"Daisy Ryan", phone: 9999999999},
        {patient_id:15, species:"cat", age:7, name:"Gunner Williams", owner:"Abby Williams", phone: 9999999999},
        {patient_id:16, species:"bird", age:3, name:"Oliver Guerrero", owner:"Gunner Guerrero", phone: 9999999999},
        {patient_id:17, species:"cat", age:3, name:"Lola Guerrero", owner:"Toby Guerrero", phone: 9999999999},
        {patient_id:18, species:"bird", age:2, name:"Duke Vaughan", owner:"Stella Vaughan", phone: 9999999999},
        {patient_id:19, species:"bird", age:1, name:"Lola Harris", owner:"Finn Harris", phone: 9999999999},
        {patient_id:20, species:"dog", age:10, name:"Charlie Marsh", owner:"Ollie Marsh", phone: 9999999999},
        {patient_id:21, species:"bird", age:5, name:"Gracie Ban", owner:"Charlie Ban", phone: 9999999999},
        {patient_id:22, species:"dog", age:11, name:"Mia Reyes", owner:"Louie Reyes", phone: 9999999999},
        {patient_id:23, species:"dog", age:12, name:"Zeus Olson", owner:"Gus Olson", phone: 9999999999},
        {patient_id:24, species:"cat", age:9, name:"Marley Byrd", owner:"Zoe Byrd", phone: 9999999999},
        {patient_id:25, species:"bird", age:2, name:"Abby Knight", owner:"Ruby Knight", phone: 9999999999},
        {patient_id:26, species:"cat", age:10, name:"Rocky Daniel", owner:"Tucker Daniel", phone: 9999999999},
        {patient_id:27, species:"dog", age:11, name:"Teddy Erickson", owner:"Harley Erickson", phone: 9999999999},
        {patient_id:28, species:"bird", age:5, name:"Leo Ramos", owner:"Ruby Ramos", phone: 9999999999},
        {patient_id:29, species:"dog", age:7, name:"Teddy Ingram", owner:"Ruby Ingram", phone: 9999999999},
    ]
   #TODO: Loop through patients and create a patient object for every patient
   patients.each{|p| Patient.new(p[:patient_id], p[:species], p[:age], p[:name], p[:owner], p[:phone])}
   binding.pry
end 

