Profile: S3Patient_PT
Parent: Patient
Id: S3Patient-PT

* id 1..
* extension contains
    S3PersonOccupation named occupation 0..* and
    S3PersonRecordType named patient-record-type 0..* and
    S3PatientEnrollmentCategoryPrimarycare named s3PatientEnrollmentCategoryPrimarycare 0..* and
    S3PersonNationality named s3PersonNationality 0..*
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
    S3ContactIndicative named S3ContactIndicative 0..* 

* address.extension contains
    S3AddressType named S3AddressType 0..* and
S3AddressMunicipality named S3AddressMunicipality 0..* and
S3AddressCounty named S3AddressCounty 0..* and
S3AddressParish named S3AddressParish 0..* and
S3AddressGeolocation named S3AddressGeolocation 0..* and
S3AddressNuts named S3AddressNuts 0..* 



* contact ..1
* contact.telecom.extension contains
    S3ContactIndicative named S3ContactIndicative 0..* 



* contact.address.extension contains
    S3AddressType named S3AddressType 0..* and
S3AddressMunicipality named S3AddressMunicipality 0..* and
S3AddressCounty named S3AddressCounty 0..* and
S3AddressParish named S3AddressParish 0..* and
S3AddressGeolocation named S3AddressGeolocation 0..* and
S3AddressNuts named S3AddressNuts 0..* 


* generalPractitioner.extension contains
    S3PatientPrimaryCarePeriod named patientPrimaryCarePeriod 0..* 

