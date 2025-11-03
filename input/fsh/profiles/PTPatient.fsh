Profile: PTPatient
Parent: Patient
Id: Patient-Pt
Title: "Paciente (Portugal)"
Description: "Perfil de Patient para contexto PT, incluindo identificadores nacionais, nacionalidade, naturalidade (INE), notas, endereços IOP e contactos."

* id 1.. MS
* name 1..1 MS
* telecom 0..* MS
* gender 1..1 MS
* birthDate 1..1 MS
* deceased[x] 0..1
* contact 0..* MS
* generalPractitioner 0..* MS
* managingOrganization 0..1 MS

* extension contains
    PTPersonOccupation named occupation 0..* MS and
    PTPersonRecordType named patient-record-type 0..* and
    PTPatientEnrollmentCategoryPrimarycare named patient-enrollment-category-primarycare 0..* and
    PTNationality named nationality 0..* MS and
    PTPersonBirthplace named birthplace 0..1

* extension[birthplace] 0..1 MS
* extension[birthplace].extension contains
    country 0..1 MS and
    county 0..1 MS and
    municipality 0..1 MS and
    parish 0..1 MS

* extension[birthplace].extension[country].valueCodeableConcept 1..1
* extension[birthplace].extension[country].valueCodeableConcept.coding 1..*
* extension[birthplace].extension[country].valueCodeableConcept.coding.system = "http://www.ine.pt" (exact)

* extension[birthplace].extension[county].valueCodeableConcept 1..1
* extension[birthplace].extension[county].valueCodeableConcept.coding 1..*
* extension[birthplace].extension[county].valueCodeableConcept.coding.system = "http://www.ine.pt" (exact)

* extension[birthplace].extension[municipality].valueCodeableConcept 1..1
* extension[birthplace].extension[municipality].valueCodeableConcept.coding 1..*
* extension[birthplace].extension[municipality].valueCodeableConcept.coding.system = "http://www.ine.pt" (exact)

* extension[birthplace].extension[parish].valueCodeableConcept 1..1
* extension[birthplace].extension[parish].valueCodeableConcept.coding 1..*
* extension[birthplace].extension[parish].valueCodeableConcept.coding.system = "http://www.ine.pt" (exact)

* extension[nationality].valueCodeableConcept 1..1
* extension[nationality].valueCodeableConcept.coding 1..*
* extension[nationality].valueCodeableConcept.coding.system = "http://www.ine.pt" (exact)

* extension contains notes 0..1 MS
* extension[notes].url = "notes" (exact)
* extension[notes].value[x] only Annotation

* identifier 0..* MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #closed
* identifier.type.coding from VS_PatientIdentifierType (extensible)
* identifier.system MS
* identifier.value MS

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

* identifier[medicalRecordNumber] ^short = "Número de processo clínico"
* identifier[medicalRecordNumber] ^definition = "Número de processo clínico"
* identifier[medicalRecordNumber].type.text = "Número de processo clínico"
* identifier[medicalRecordNumber].type.coding = http://hl7.pt/fhir/identifier-type#MR "Número de processo clínico"

* identifier[familyRecordNumber] ^short = "Número de processo clínico familiar"
* identifier[familyRecordNumber] ^definition = "Número de processo clínico familiar"
* identifier[familyRecordNumber].type.text = "Número de processo clínico familiar"
* identifier[familyRecordNumber].type.coding = http://hl7.pt/fhir/identifier-type#FMR "Número de processo clínico familiar"

* identifier[birthRegistryNumber] ^short = "Cédula de Nascimento"
* identifier[birthRegistryNumber] ^definition = "Cédula de Nascimento"
* identifier[birthRegistryNumber].type.text = "Cédula de Nascimento"
* identifier[birthRegistryNumber].type.coding = http://hl7.pt/fhir/identifier-type#BR "Cédula de Nascimento"

* identifier[patientInternalIdentifier].system 0..1
* identifier[passportNumber].system 0..1
* identifier[taxIdNumber].system 0..1
* identifier[socialSecurityNumber].system 0..1
* identifier[medicalRecordNumber].system 0..1
* identifier[familyRecordNumber].system 0..1
* identifier[residentCardNumber].system 0..1
* identifier[citizenshipCardNumber].system 0..1
* identifier[healthCardNumber].system 0..1
* identifier[birthRegistryNumber].system 0..1

* address 0..* MS

* address.extension contains
    PTAddressType named addressType 0..* MS and
    PTAddressMunicipality named municipality 0..* MS and
    PTAddressCounty named county 0..* MS and
    PTAddressParish named parish 0..* MS and
    PTAddressNuts named nuts 0..* MS

* address.extension contains iop-address 0..* MS
* address.extension[iop-address].url = "extension-address-v1-1-2" (exact)
* address.extension[iop-address].extension contains
    address-type 0..1 MS and
    county 0..1 MS and
    municipality 0..1 MS and
    parish 0..1 MS

* address.extension[iop-address].extension[address-type].value[x] only Coding
* address.extension[iop-address].extension[county].value[x] only CodeableConcept
* address.extension[iop-address].extension[municipality].value[x] only CodeableConcept
* address.extension[iop-address].extension[parish].value[x] only CodeableConcept


* contact 0..* MS
* contact.relationship 0..* MS
* contact.name 0..1
* contact.telecom 0..*
* contact.address 0..1

* contact.address.extension contains
    PTAddressType named addressType 0..* and
    PTAddressMunicipality named municipality 0..* and
    PTAddressCounty named county 0..* and
    PTAddressParish named parish 0..* and
    PTAddressNuts named nuts 0..*


* contact.address.extension contains iop-address 0..* MS
* contact.address.extension[iop-address].url = "http://spms.min-saude.pt/fhir/iop/extensions/extension-address-v1-1-2" (exact)
* contact.address.extension[iop-address].extension contains
    address-type 0..1 MS and
    county 0..1 MS and
    municipality 0..1 MS and
    parish 0..1 MS

* contact.address.extension[iop-address].extension[address-type].value[x] only Coding
* contact.address.extension[iop-address].extension[county].value[x] only CodeableConcept
* contact.address.extension[iop-address].extension[municipality].value[x] only CodeableConcept
* contact.address.extension[iop-address].extension[parish].value[x] only CodeableConcept

* generalPractitioner.extension contains
    PTPatientPrimaryCarePeriod named patient-primary-care-period 0..* MS
