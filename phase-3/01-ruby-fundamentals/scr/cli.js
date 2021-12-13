// npm i prompt-sync
const prompt = require('prompt-sync')();
// Constant Global
const CLINIC_NAME = 'Flatiron Clinic for cute snoots'

// Global
let vet = 'Alisha A.'

function initializeApp(){
    const patients = [
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
    menu(patients)
}

function menu(patients){
    console.log(`Welcome to #{CLINIC_NAME}`)
    console.log("Please choose an option:")
    console.log("1. List all Patients")
    console.log("2. Enter new Patient")
    console.log("3. Find Pet")
    console.log("exit. To exit")
  
    const userInput = prompt();
    console.log(userInput)
    switch(userInput){
        case "1":
            listPatientInfo(patients)
            menu(patients)
        case "2":
            patients.push(addPatient(patients.length))
            console.log('patient added')
            menu(patients)
        case "3":
        case "exit":
            console.log("goodbye")
            return
        default:
            console.log('sorry that option does not exist, please chose again')
            initializeApp()
    }
}

function listPatientInfo(patients){
    patients.forEach(patient => {
        console.log(`Name: ${patient.name}`)
        console.log(`Species: ${patient.species}`)
        console.log(`Owner: ${patient.owner}`)
        console.log(`Number: ${patient.number}`)
        console.log('-----------------------')
    })
    console.log('press any key to return to menu')
    const userInput = prompt();
}

//Adds Patient
function addPatient(id){
    const species = prompt('What is your pets species?');
    const name = prompt('What is your pets name?');
    const owner = prompt('What is your name?');
    const number = prompt('What is your pets phone number?');

    patientObj = {
        id,
        species,
        name,
        owner,
        number
    }
    const correct = prompt(`${patientObj} is this correct? Y or N`);
    //Verifies patient info 
    if(correct.toLowerCase() == 'y'){
        return patientObj
    } else {
        addPatient(id)
    }

}
initializeApp()