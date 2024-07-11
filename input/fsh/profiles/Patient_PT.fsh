Profile: Patient_PT
Parent: Patient
Id: Patient-Pt

* id 1..
* extension contains
    PersonOccupation_PT named occupation 0..* and
    PersonRecordType_PT named patient-record-type 0..* and
    PatientEnrollmentCategoryPrimarycare-Pt named PatientEnrollmentCategoryPrimarycare_PT 0..* and
    PersonNationality_PT named PersonNationality_PT 0..* and
    PersonBirthplace_PT named PersonBirthplace_PT 0..1
* identifier ^slicing.discriminator.type = #type
* identifier ^slicing.discriminator.path = "type.coding"
* identifier ^slicing.rules = #open
* identifier contains
    residentCardNumber 0..* and
    citizenshipCardNumber 0..* and
    taxIdNumber 0..* and
    socialSecurityNumber 0..* and
    healthCardNumber 0..* and
    passportNumber 0..* and
    patientInternalIdentifier 0..* and
    militaryIDNumber 0..* and
    patientExternalIdentifier 0..* and
    driverLicenseNumber 0..* and
    anonymousIdentifier 0..* and
    medicalRecordNumber 0..* and
    familyRecordNumber 0..*
* identifier[residentCardNumber] ^definition = "Número do Título de Residência"
* identifier[residentCardNumber].id ..0
* identifier[citizenshipCardNumber] ^definition = "Número de Identificação Civil"
* identifier[citizenshipCardNumber].id ..0
* identifier[taxIdNumber] ^definition = "Número de Identificação Fiscal"
* identifier[taxIdNumber] ^fixedIdentifier.type.text = "Número de Identificação Fiscal"
* identifier[taxIdNumber].id ..0
* identifier[socialSecurityNumber] ^definition = "Número de Identificação da Segurança\r\nSocial"
* identifier[socialSecurityNumber].id ..0
* identifier[healthCardNumber] ^short = "Número Nacional do Utente"
* identifier[healthCardNumber] ^definition = "Número Nacional do Utente"
* identifier[healthCardNumber].id ..0
* identifier[passportNumber] ^short = "Número do Passaporte"
* identifier[passportNumber] ^definition = "Número do Passaporte"
* identifier[passportNumber].id ..0
* identifier[patientInternalIdentifier].period ..0
* identifier[patientInternalIdentifier].assigner ..0
* identifier[militaryIDNumber].id ..0
* identifier[patientExternalIdentifier].id ..0
* identifier[driverLicenseNumber].id ..0
* identifier[anonymousIdentifier].id ..0
* identifier[medicalRecordNumber].id ..0
* identifier[familyRecordNumber].id ..0
* name ..1

* telecom.extension contains
    ContactIndicative-PT named ContactIndicative_PT 0..*

* address.extension contains
    AddressType_PT named AddressType_PT 0..* and
AddressMunicipality_PT named AddressMunicipality_PT 0..* and
AddressCounty_PT named AddressCounty_PT 0..* and
AddressParish_PT named AddressParish_PT 0..* and
AddressGeolocation_PT named AddressGeolocation_PT 0..* and
AddressNuts_PT named AddressNuts_PT 0..*



* contact ..1
* contact.telecom.extension contains
    ContactIndicative_PT named ContactIndicative_PT 0..* 



* contact.address.extension contains
    AddressType_PT named AddressType_PT 0..* and
AddressMunicipality_PT named AddressMunicipality_PT 0..* and
AddressCounty_PT named AddressCounty_PT 0..* and
AddressParish_PT named AddressParish_PT 0..* and
AddressGeolocation_PT named AddressGeolocation_PT 0..* and
AddressNuts_PT named AddressNuts_PT 0..* 


* generalPractitioner.extension contains
    PatientPrimaryCarePeriod_PT named patientPrimaryCarePeriod 0..* 

