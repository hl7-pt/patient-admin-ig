Instance: patient-update
InstanceOf: Bundle
Usage: #example
* type = #message
* timestamp = "2025-10-24T14:16:30.035+01:00"
* entry[0].fullUrl = "urn:uuid:96af02f3-5a9c-4220-8f62-ece462f2b4d1"
* entry[0].resource = 96af02f3-5a9c-4220-8f62-ece462f2b4d1
* entry[+].fullUrl = "urn:uuid:21af15d4-7e31-3976-8391-ff0b3a4ab37e"
* entry[=].resource = 21af15d4-7e31-3976-8391-ff0b3a4ab37e
* entry[+].fullUrl = "urn:uuid:cc5416a2-8697-3367-bba8-eec87f189665"
* entry[=].resource = cc5416a2-8697-3367-bba8-eec87f189665
* entry[+].fullUrl = "urn:uuid:8d71060c-92da-35e9-a62e-576973141ccb"
* entry[=].resource = 8d71060c-92da-35e9-a62e-576973141ccb
* entry[+].fullUrl = "urn:uuid:7cb2fb44-1e55-4fde-bde1-652ce717a0ce"
* entry[=].resource = 7cb2fb44-1e55-4fde-bde1-652ce717a0ce
* entry[+].fullUrl = "urn:uuid:0040e52f-85c7-3d99-b3dd-4c6431285d30"
* entry[=].resource = 0040e52f-85c7-3d99-b3dd-4c6431285d30
* entry[+].fullUrl = "urn:uuid:21af15d4-7e31-3976-8391-fe0b3a4ab37d"
* entry[=].resource = 21af15d4-7e31-3976-8391-fe0b3a4ab37d
* entry[+].fullUrl = "urn:uuid:17fafe5f-6ce2-3190-8ec0-9d2e80a4cbf6"
* entry[=].resource = 17fafe5f-6ce2-3190-8ec0-9d2e80a4cbf6

Instance: 96af02f3-5a9c-4220-8f62-ece462f2b4d1
InstanceOf: MessageHeader
Usage: #inline
* eventCoding = $cs-fhir-events#PATIENT_UPDATE "Atualização de dados do utente"
* destination.name = "EXTERNAL SYSTEM"
* destination.endpoint = "DEV/EXTERNALSYSTEM"
* destination.receiver = Reference(urn:uuid:70cfff33-ebcb-4f99-9bf5-c560575295d8) "Unidade Local de Saúde Dev"
* sender = Reference(urn:uuid:70cfff33-ebcb-4f99-9bf5-c560575295d8) "Unidade Local de Saúde Dev"
* enterer = Reference(urn:uuid:cc5416a2-8697-3367-bba8-eec87f189665)
* source.name = "ADT"
* source.endpoint = "DEV/ADT"
* focus = Reference(urn:uuid:21af15d4-7e31-3976-8391-ff0b3a4ab37e)

Instance: 21af15d4-7e31-3976-8391-ff0b3a4ab37e
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
* name.given[0] = "Liliana"
* name.given[+] = "Cristina"
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
* address[0].extension[PTAddress].extension[country].valueCodeableConcept = $iso-3166-country-codes.html#PT
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
* generalPractitioner[0] = Reference (urn:uuid:0040e52f-85c7-3d99-b3dd-4c6431285d30)
* generalPractitioner[+] = Reference (urn:uuid:17fafe5f-6ce2-3190-8ec0-9d2e80a4cbf6)
* managingOrganization = Reference (urn:uuid:21af15d4-7e31-3976-8391-fe0b3a4ab37d)

Instance: cc5416a2-8697-3367-bba8-eec87f189665
InstanceOf: Practitioner
Usage: #inline
* identifier[0].use = #usual
* identifier[=].type = $v2-0203#EI "Employee number"
* identifier[=].type.text = "Numero interno do profissional"
* identifier[=].system = "http://example.org/ADT"
* identifier[=].value = "cc5416a2-8697-3367-bba8-eec87f189665"
* identifier[+].use = #official
* identifier[=].type = $v2-0203#EI "Employee number"
* identifier[=].type.text = "Numero mecanográfico do profissional"
* identifier[=].system = "http://example.org/RHV"
* identifier[=].value = "30047"
* active = true

Instance: 0040e52f-85c7-3d99-b3dd-4c6431285d30
InstanceOf: Practitioner
Usage: #inline
* active = true
* name.family = "Torres"
* name.given[0] = "Ana"

Instance: 8d71060c-92da-35e9-a62e-576973141ccb
InstanceOf: Coverage
Usage: #inline
* extension.url = "http://example.com/fhir/hl7pt/StructureDefinition/coverage-reason-pt"
* extension.valueCodeableConcept = $sonho#705 "Insuficiencia Económica"
* status = #active
* type = $coverage-type#BU "Beneficio do utente"
* beneficiary = Reference(urn:uuid:21af15d4-7e31-3976-8391-ff0b3a4ab37e)
* period.start = "2024-12-08T00:00:00+00:00"
* payor = Reference (urn:uuid:7cb2fb44-1e55-4fde-bde1-652ce717a0ce)

Instance: 7cb2fb44-1e55-4fde-bde1-652ce717a0ce
InstanceOf: Organization
Usage: #inline
* identifier[0].use = #usual
* identifier[=].system = $sonho
* identifier[=].value = "935601"
* active = true
* name = "Serviço Nacional de Saúde"

Instance: 21af15d4-7e31-3976-8391-fe0b3a4ab37d
InstanceOf: Organization
Usage: #inline
* identifier[0].use = #usual
* identifier[=].system = $sonho
* identifier[=].value = "454321"
* active = true
* name = "ULS DEV"

Instance: 17fafe5f-6ce2-3190-8ec0-9d2e80a4cbf6
InstanceOf: Organization
Usage: #inline
* identifier[0].use = #usual
* identifier[=].system = $sonho
* identifier[=].value = "454321"
* active = true
* name = "USF DEV"