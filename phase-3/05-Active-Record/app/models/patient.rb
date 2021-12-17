class Patient < ActiveRecord::Base

    #CREATE 
    #Patient.new
    #Patient#save
    #  INSERT INTO "patients" ("species", "name", "age", "owner", "phone", "active", "clinic_id") VALUES (?, ?, ?, ?, ?, ?, ?)  [["species", "cat"], ["name", "rose"], ["age", 10], ["owner", "ix"], ["phone", "(999)999-9999"], ["active", 1], ["clinic_id", 1]]
    
    #Patient.create
    # INSERT INTO "patients" ("species", "name", "age", "owner", "phone", "active", "clinic_id") VALUES (?, ?, ?, ?, ?, ?, ?)  [["species", "cat"], ["name", "Luke"], ["age", 2], ["owner", "ix"], ["phone", "(999)999-9999"], ["active", 1], ["clinic_id", 1]]

    #READ
    #Patient.all
    #SELECT "clinics".* FROM "clinics"
    
    # Patient.first
    # SELECT "clinics".* FROM "clinics" ORDER BY "clinics"."id" ASC LIMIT ?  [["LIMIT", 1]]
    
    #Patient.find - id only
    #SELECT "patients".* FROM "patients" WHERE "patients"."id" = ? LIMIT ?  [["id", 2], ["LIMIT", 1]]

    #Patient.find_by({name:'rose'}) 
    #SELECT "patients".* FROM "patients" WHERE "patients"."name" = ? LIMIT ?  [["name", "rose"], ["LIMIT", 1]]

    # Patient.where('age < 5')
    # SELECT "patients".* FROM "patients" WHERE (age < 5)


    #UPDATE
    #Patient#update
    #UPDATE "patients" SET "age" = ? WHERE "patients"."id" = ?  [["age", 11], ["id", 1]]
    
    #Patient.update
    #SELECT "clinics".* FROM "clinics"
    # UPDATE "clinics" SET "phone" = ? WHERE "clinics"."id" = ?  [["phone", "(888)888-8888"], ["id", 1]]


    #DELETE
    #Patient#destroy
    #DELETE FROM "patients" WHERE "patients"."id" = ?  [["id", 7]]

    #Patient.destroy_all
    # SELECT "patients".* FROM "patients"
    # DELETE FROM "patients" WHERE "patients"."id" = ?  [["id", 2]]



end 