Instance: patient-new
InstanceOf: Bundle
Usage: #example
* type = #message
* timestamp = "2025-10-24T14:16:30.035+01:00"
* entry[0].fullUrl = "urn:uuid:8f3aa0e0-4a19-4a7e-9f87-3e5b4d6f9b32"
* entry[0].resource = 8f3aa0e0-4a19-4a7e-9f87-3e5b4d6f9b32
* entry[+].fullUrl = "urn:uuid:2c1e7f78-41cd-4df4-a6de-1f8c7bd4a021"
* entry[=].resource = 2c1e7f78-41cd-4df4-a6de-1f8c7bd4a021
* entry[+].fullUrl = "urn:uuid:5bdc0d91-2c0f-47a8-bbb2-7f6fcb7c4ef5"
* entry[=].resource = 5bdc0d91-2c0f-47a8-bbb2-7f6fcb7c4ef5
* entry[+].fullUrl = "urn:uuid:91b6c6fa-0d5e-4d72-9d89-4ffbcb3fae07"
* entry[=].resource = 91b6c6fa-0d5e-4d72-9d89-4ffbcb3fae07
* entry[+].fullUrl = "urn:uuid:6b3e55bb-98c4-4dbd-a45f-dc941f093e5e"
* entry[=].resource = 6b3e55bb-98c4-4dbd-a45f-dc941f093e5e
* entry[+].fullUrl = "urn:uuid:0f4cfb73-91ea-43a7-bb84-1b0c2419837f"
* entry[=].resource = 0f4cfb73-91ea-43a7-bb84-1b0c2419837f
* entry[+].fullUrl = "urn:uuid:e10c7e4f-6c49-4ee3-a6dd-71e5b70230c1"
* entry[=].resource = e10c7e4f-6c49-4ee3-a6dd-71e5b70230c1
* entry[+].fullUrl = "urn:uuid:3a9e5ae2-2dcf-44d0-bd38-a12439ac0a96"
* entry[=].resource = 3a9e5ae2-2dcf-44d0-bd38-a12439ac0a96

Instance: 8f3aa0e0-4a19-4a7e-9f87-3e5b4d6f9b32
InstanceOf: MessageHeader
Usage: #inline
* eventCoding = $cs-fhir-events#PATIENT_NEW "Criação de novo utente"
* destination.name = "EXTERNAL SYSTEM"
* destination.endpoint = "DEV/EXTERNALSYSTEM"
* destination.receiver = Reference(urn:uuid:e10c7e4f-6c49-4ee3-a6dd-71e5b70230c1) "Unidade Local de Saúde Dev"
* sender = Reference(urn:uuid:e10c7e4f-6c49-4ee3-a6dd-71e5b70230c1) "Unidade Local de Saúde Dev"
* enterer = Reference(urn:uuid:5bdc0d91-2c0f-47a8-bbb2-7f6fcb7c4ef5)
* source.name = "ADT"
* source.endpoint = "DEV/ADT"
* focus = Reference(urn:uuid:2c1e7f78-41cd-4df4-a6de-1f8c7bd4a021)

Instance: 2c1e7f78-41cd-4df4-a6de-1f8c7bd4a021
InstanceOf: Patient
Usage: #inline
* meta.security = $v3-Confidentiality#N "Normal"
* extension.url = "http://example.com/fhir/hl7pt/StructureDefinition/nationality-pt"
* extension.valueCodeableConcept = $iso-3166-country-codes.html#PT "Portugal"
* identifier[0].use = #usual
* identifier[=].type = $v2-0203#PI "Patient internal identifier"
* identifier[=].type.text = "Identificador sequencial do utente na entidade"
* identifier[=].system = "http://example.org/ADT"
* identifier[=].value = "b4d3104a-7d7d-4fc0-a61b-3547836fb84c"
* identifier[+].use = #usual
* identifier[=].type = $v2-0203#PI "Patient internal identifier"
* identifier[=].type.text = "Identificador sequencial do utente na entidade"
* identifier[=].system = $sonho
* identifier[=].value = "404066"
* identifier[+].use = #official
* identifier[=].type = $v2-0203#MR "Medical record number"
* identifier[=].type.text = "Número do processo"
* identifier[=].system = "http://example.org/SONHO"
* identifier[=].value = "18015692"
* identifier[+].use = #official
* identifier[=].type = $v2-0203#TAX "Tax ID number"
* identifier[=].type.text = "Número de identificação fiscal"
* identifier[=].system = "http://example.org/AT"
* identifier[=].value = "254781369"
* identifier[+].use = #official
* identifier[=].type = $v2-0203#PPN "Passport Number"
* identifier[=].type.text = "Passport number"
* identifier[=].value = "589471XS"
* active = true
* name.use = #official
* name.family = "Alves"
* name.given[0] = "Lilia"
* name.given[+] = "Jose Teste"
* telecom[0].system = #phone
* telecom[=].value = "265842987"
* telecom[=].rank = 1
* telecom[+].system = #phone
* telecom[=].value = "915469872"
* telecom[=].use = #mobile
* telecom[=].rank = 1
* telecom[+].system = #email
* telecom[=].value = "li@email.com"
* telecom[=].rank = 1
* gender = #female
* birthDate = "1995-10-09"
* deceasedBoolean = false
* address[0].extension[PTAddress].extension[addressType].valueCoding = $address-types#MA "Main Address"
* address[0].extension[PTAddress].extension[parish].valueCodeableConcept = $ine#060201
* address[0].extension[PTAddress].extension[municipality].valueCodeableConcept = $ine#0602
* address[0].extension[PTAddress].extension[county].valueCodeableConcept = $ine#06
* address.use = #billing
* address.line = "Rua De Casa, N.2 Ançã"
* address.postalCode = "3060-009"
* contact.relationship = $v3-RoleCode#ONESELF "Self"
* contact.name.use = #official
* contact.name.family = "Alves"
* contact.name.given[0] = "Lilia"
* contact.name.given[+] = "Jose Teste"
* contact.telecom[0].system = #phone
* contact.telecom[=].value = "265842987"
* contact.telecom[=].rank = 1
* contact.telecom[+].system = #phone
* contact.telecom[=].value = "915469872"
* contact.telecom[=].use = #mobile
* contact.telecom[=].rank = 1
* contact.telecom[+].system = #email
* contact.telecom[=].value = "li@email.com"
* contact.telecom[=].rank = 1
* generalPractitioner[0] = Reference (urn:uuid:0f4cfb73-91ea-43a7-bb84-1b0c2419837f)
* generalPractitioner[+] = Reference (urn:uuid:3a9e5ae2-2dcf-44d0-bd38-a12439ac0a96)
* managingOrganization = Reference (urn:uuid:e10c7e4f-6c49-4ee3-a6dd-71e5b70230c1)

Instance: 5bdc0d91-2c0f-47a8-bbb2-7f6fcb7c4ef5
InstanceOf: Practitioner
Usage: #inline
* identifier[0].use = #usual
* identifier[=].type = $v2-0203#EI "Employee number"
* identifier[=].type.text = "Numero interno do profissional"
* identifier[=].system = "http://example.org/ADT"
* identifier[=].value = "5bdc0d91-2c0f-47a8-bbb2-7f6fcb7c4ef5"
* identifier[+].use = #official
* identifier[=].type = $v2-0203#EI "Employee number"
* identifier[=].type.text = "Numero mecanográfico do profissional"
* identifier[=].system = "http://example.org/RHV"
* identifier[=].value = "30047"
* active = true

Instance: 0f4cfb73-91ea-43a7-bb84-1b0c2419837f
InstanceOf: Practitioner
Usage: #inline
* active = true
* name.family = "Torres"
* name.given[0] = "Ana"

Instance: 91b6c6fa-0d5e-4d72-9d89-4ffbcb3fae07
InstanceOf: Coverage
Usage: #inline
* extension.url = "http://example.com/fhir/hl7pt/StructureDefinition/coverage-reason-pt"
* extension.valueCodeableConcept = $sonho#705 "Insuficiencia Económica"
* status = #active
* type = $coverage-type#BU "Beneficio do utente"
* beneficiary = Reference(urn:uuid:2c1e7f78-41cd-4df4-a6de-1f8c7bd4a021)
* period.start = "2024-12-08T00:00:00+00:00"
* payor = Reference (urn:uuid:6b3e55bb-98c4-4dbd-a45f-dc941f093e5e)

Instance: 6b3e55bb-98c4-4dbd-a45f-dc941f093e5e
InstanceOf: Organization
Usage: #inline
* identifier[0].use = #usual
* identifier[=].system = $sonho
* identifier[=].value = "935601"
* active = true
* name = "Serviço Nacional de Saúde"

Instance: e10c7e4f-6c49-4ee3-a6dd-71e5b70230c1
InstanceOf: Organization
Usage: #inline
* identifier[0].use = #usual
* identifier[=].system = $sonho
* identifier[=].value = "454321"
* active = true
* name = "ULS DEV"

Instance: 3a9e5ae2-2dcf-44d0-bd38-a12439ac0a96
InstanceOf: Organization
Usage: #inline
* identifier[0].use = #usual
* identifier[=].system = $sonho
* identifier[=].value = "454321"
* active = true
* name = "USF DEV"