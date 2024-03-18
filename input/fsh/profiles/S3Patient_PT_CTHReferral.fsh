Profile: S3Patient_PT_CTHReferral
Parent: Patient
Id: S3Patient-PT-CTHReferral
* ^url = "https://example.org/fhir/StructureDefinition/S3Patient_PT_CTHReferral"
* ^status = #draft
* ^date = "2024-01-11T15:26:55.9490058+00:00"
* id 1..
* meta ..0
* implicitRules ..0
* language ..0
* text ..0
* contained ..0
* identifier ^slicing.discriminator.type = #type
* identifier ^slicing.discriminator.path = "type.coding"
* identifier ^slicing.rules = #open
* identifier contains
    residentCardNumber 0..0 and
    citizenshipCardNumber 0..0 and
    taxIdNumber 0..0 and
    socialSecurityNumber 0..0 and
    healthCardNumber 0..0 and
    passportNumber 0..0 and
    internalIdentifier 0..*
* identifier[residentCardNumber] ^definition = "Número do Título de Residência"
* identifier[citizenshipCardNumber] ^definition = "Número de Identificação Civil"
* identifier[taxIdNumber] ^definition = "Número de Identificação Fiscal"
* identifier[taxIdNumber] ^fixedIdentifier.type.text = "Número de Identificação Fiscal"
* identifier[socialSecurityNumber] ^definition = "Número de Identificação da Segurança\r\nSocial"
* identifier[healthCardNumber] ^short = "Número Nacional do Utente"
* identifier[healthCardNumber] ^definition = "Número Nacional do Utente"
* identifier[passportNumber] ^short = "Número do Passaporte"
* identifier[passportNumber] ^definition = "Número do Passaporte"
* identifier[internalIdentifier].use ..0
* identifier[internalIdentifier].type ..0
* identifier[internalIdentifier].period ..0
* identifier[internalIdentifier].assigner ..0
* name ..0
* telecom ..0
* gender ..0
* birthDate ..0
* deceased[x] ..0
* address ..0
* maritalStatus ..0
* multipleBirth[x] ..0
* photo ..0
* contact ..0
* communication ..0
* generalPractitioner ..0
* generalPractitioner.extension contains
    S3PatientPrimaryCarePeriod named patientPrimaryCarePeriod 0..* 
* managingOrganization ..0
* link ..0