Profile: PTPatient
Parent: Patient
Id: Patient-Pt

* id 1.. MS

* extension contains
    PTPersonOccupation named occupation 0..* MS and
    PTPersonRecordType named patient-record-type 0..* and
    PTPatientEnrollmentCategoryPrimarycare named patient-enrollment-category-primarycare 0..* and
    PTNationality named nationality 0..* MS and
    PTPersonBirthplace named birthplace 0..1

* identifier ^slicing.discriminator.type = #type
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #closed
* identifier.type.coding from VS_PatientIdentifierType (extensible)
* identifier.id ..0
* identifier.type.extension ..0
* identifier.type.id ..0

* identifier contains
    residentCardNumber 0..* MS and
    citizenshipCardNumber 0..* MS and
    taxIdNumber 0..* MS and
    socialSecurityNumber 0..* MS and
    healthCardNumber 0..* MS and
    passportNumber 0..* MS and
    patientInternalIdentifier 0..* MS and
    militaryIDNumber 0..* MS and
    medicalRecordNumber 0..* MS and
    familyRecordNumber 0..* MS and
    birthRegistryNumber 0..* MS

* identifier[residentCardNumber] ^short = "Número do Título de Residência"
* identifier[residentCardNumber] ^definition = "Número do Título de Residência"
* identifier[residentCardNumber].type.text = "Número do Título de Residência"
* identifier[residentCardNumber].type.coding = http://hl7.pt/fhir/identifier-type#PRC "Número do Título de Residência"

* identifier[citizenshipCardNumber] ^short = "Número de Identificação Civil"
* identifier[citizenshipCardNumber] ^definition = "Número de Identificação Civil"
* identifier[citizenshipCardNumber].type.text = "Número de Identificação Civil"
* identifier[citizenshipCardNumber].type.coding = http://hl7.pt/fhir/identifier-type#CZ "Número de Identificação Civil"

* identifier[taxIdNumber] ^short = "Número de Identificação Fiscal"
* identifier[taxIdNumber] ^definition = "Número de Identificação Fiscal"
* identifier[taxIdNumber].type.text = "Número de Identificação Fiscal"
* identifier[taxIdNumber].type.coding = http://hl7.pt/fhir/identifier-type#TAX "Número de Identificação Fiscal"

* identifier[socialSecurityNumber] ^short = "Número de Identificação da Segurança Social"
* identifier[socialSecurityNumber] ^definition = "Número de Identificação da Segurança Social"
* identifier[socialSecurityNumber].type.text = "Número de Identificação da Segurança Social"
* identifier[socialSecurityNumber].type.coding = http://hl7.pt/fhir/identifier-type#SS "Número de Segurança Social"

* identifier[healthCardNumber] ^short = "Número Nacional do Utente"
* identifier[healthCardNumber] ^definition = "Número Nacional do Utente"
* identifier[healthCardNumber].type.text = "Número Nacional do Utente"
* identifier[healthCardNumber].type.coding = http://hl7.pt/fhir/identifier-type#HC "Número Nacional do Utente"

* identifier[passportNumber] ^short = "Número do Passaporte"
* identifier[passportNumber] ^definition = "Número do Passaporte"
* identifier[passportNumber].type.text = "Número do Passaporte"
* identifier[passportNumber].type.coding = http://hl7.pt/fhir/identifier-type#PPN "Número de Passaporte"

* identifier[patientInternalIdentifier] ^short = "Número Interno do Utente"
* identifier[patientInternalIdentifier] ^definition = "Número Interno do Utente"
* identifier[patientInternalIdentifier].type.text = "Número Interno do Utente"
* identifier[patientInternalIdentifier].type.coding = http://hl7.pt/fhir/identifier-type#PI "Número Interno do Utente"

* identifier[militaryIDNumber] ^short = "Número da Cédula Militar"
* identifier[militaryIDNumber] ^definition = "Número da Cédula Militar"
* identifier[militaryIDNumber].type.text = "Número da Cédula Militar"
* identifier[militaryIDNumber].type.coding = http://hl7.pt/fhir/identifier-type#MI "Número da Cédula Militar"

* identifier[medicalRecordNumber] ^short = "Numero de processo Clinico"
* identifier[medicalRecordNumber] ^definition = "Numero de processo Clinico"
* identifier[medicalRecordNumber].type.text = "Numero de processo Clinico"
* identifier[medicalRecordNumber].type.coding = http://hl7.pt/fhir/identifier-type#MR "Numero de processo Clinico"

* identifier[familyRecordNumber] ^short = "Numero de processo clinico familiar"
* identifier[familyRecordNumber] ^definition = "Numero de processo clinico familiar"
* identifier[familyRecordNumber].type.text = "Numero de processo clinico familiar"
* identifier[familyRecordNumber].type.coding = http://hl7.pt/fhir/identifier-type#MR "Numero de processo clinico familiar"

* identifier[birthRegistryNumber] ^short = "Cédula de Nascimento"
* identifier[birthRegistryNumber] ^definition = "Cédula de Nascimento"
* identifier[birthRegistryNumber].type.text = "Cédula de Nascimento"
* identifier[birthRegistryNumber].type.coding = http://hl7.pt/fhir/identifier-type#BR "Cédula de Nascimento"

* name 1..1 MS
* telecom 0..* MS

* address.extension contains
    PTAddressType named addressType 0..* MS and
    PTAddressMunicipality named municipality 0..* MS and
    PTAddressCounty named county 0..* MS and
    PTAddressParish named parish 0..* MS and
    PTAddressNuts named nuts 0..* MS

* contact 0..1 MS
* contact.address.extension contains
    PTAddressType named addressType 0..* and
    PTAddressMunicipality named municipality 0..* and
    PTAddressCounty named county 0..* and
    PTAddressParish named parish 0..* and
    PTAddressNuts named nuts 0..*

* generalPractitioner.extension contains
    PTPatientPrimaryCarePeriod named patient-primary-care-period 0..* MS
