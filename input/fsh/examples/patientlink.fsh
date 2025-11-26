
Instance: patient-link
InstanceOf: Bundle
Usage: #example
* type = #message
* timestamp = "2025-10-24T14:16:30.035+01:00"
* entry[0].fullUrl = "http://example.org/MessageHeader/96af02f3-5a9c-4220-8f62-ece462f2b4d3"
* entry[0].resource = 96af02f3-5a9c-4220-8f62-ece462f2b4d3
* entry[+].fullUrl = "http://example.org/Patient/21af15d4-7e31-3976-8391-ff0b3a4ab37d"
* entry[=].resource = 21af15d4-7e31-3976-8391-ff0b3a4ab37d
* entry[+].fullUrl = "http://example.org/Patient/17fafe5f-6ce2-3190-8eb0-9d2e80a4cbf6"
* entry[=].resource = 17fafe5f-6ce2-3190-8eb0-9d2e80a4cbf6
* entry[+].fullUrl = "http://example.org/Practitioner/cc5416a2-8697-3367-bba8-eec87f189664"
* entry[=].resource = cc5416a2-8697-3367-bba8-eec87f189664

Instance: 96af02f3-5a9c-4220-8f62-ece462f2b4d3
InstanceOf: MessageHeader
Usage: #inline
* eventCoding = $cs-fhir-events#PATIENT_LINK "Associação de registos de identificações de utente"
* destination.name = "EXTERNAL SYSTEM"
* destination.endpoint = "DEV/EXTERNALSYSTEM"
* destination.receiver = Reference(http://example.org/fhir/Organization/70cfff33-ebcb-4f99-9bf5-c560575295d8) "Unidade Local de Saúde Dev"
* sender = Reference(http://example.org/fhir/Organization/70cfff33-ebcb-4f99-9bf5-c560575295d8) "Unidade Local de Saúde Dev"
* enterer = Reference(cc5416a2-8697-3367-bba8-eec87f189664)
* source.name = "ADT"
* source.endpoint = "DEV/ADT"
* focus = Reference(21af15d4-7e31-3976-8391-ff0b3a4ab37d)

Instance: 21af15d4-7e31-3976-8391-ff0b3a4ab37d
InstanceOf: Patient
Usage: #inline
* meta.security = $v3-Confidentiality#N "Normal"
* extension.url = "http://spms.min-saude.pt/fhir/iop/extensions/nationality"
* extension.valueCodeableConcept = $iso-3166-country-codes.html#PT "Portugal"
* identifier[0].use = #usual
* identifier[=].type = $v2-0203#PI "Patient internal identifier"
* identifier[=].type.text = "Identificador sequencial do utente na entidade"
* identifier[=].system = "http://example.org/ADT"
* identifier[=].value = "21af15d4-7e31-3976-8391-ff0b3a4ab37d"
* identifier[+].use = #usual
* identifier[=].type = $v2-0203#PI "Patient internal identifier"
* identifier[=].type.text = "Identificador sequencial do utente na entidade"
* identifier[=].system = "http://example.org/SONHO"
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
* address.extension.extension[0].url = "address-type"
* address.extension.extension[=].valueCodeableConcept = $address-types#MA "Main Address"
* address.extension.extension[+].url = "parish"
* address.extension.extension[=].valueCodeableConcept = $ine#060201
* address.extension.extension[+].url = "municipality"
* address.extension.extension[=].valueCodeableConcept = $ine#0602
* address.extension.extension[+].url = "county"
* address.extension.extension[=].valueCodeableConcept = $ine#06
* address.extension.url = "http://example.com/fhir/hl7pt/extensions/extension-address-v1-1-2"
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
* link.other = Reference(17fafe5f-6ce2-3190-8eb0-9d2e80a4cbf6)
* link.type = #replaces

Instance: 17fafe5f-6ce2-3190-8eb0-9d2e80a4cbf6
InstanceOf: Patient
Usage: #inline
* meta.security = $v3-Confidentiality#N "Normal"
* extension.url = "http://example.com/fhir/hl7pt/extensions/nationality"
* extension.valueCodeableConcept = $iso-3166-country-codes.html#PT "Portugal"
* identifier[0].use = #usual
* identifier[=].type = $v2-0203#PI "Patient internal identifier"
* identifier[=].type.text = "Identificador sequencial do utente na entidade"
* identifier[=].system = "http://example.org/ADT"
* identifier[=].value = "17fafe5f-6ce2-3190-8eb0-9d2e80a4cbf6"
* identifier[+].use = #official
* identifier[=].type = $v2-0203#HC "Health Card Number"
* identifier[=].type.text = "Número nacional de utente"
* identifier[=].system = "http://example.org/RNU"
* identifier[=].value = "377588788"
* identifier[+].use = #usual
* identifier[=].type = $v2-0203#PI "Patient internal identifier"
* identifier[=].type.text = "Identificador sequencial do utente na entidade"
* identifier[=].system = "http://example.org/SONHO"
* identifier[=].value = "1327"
* identifier[+].use = #official
* identifier[=].type = $v2-0203#MR "Medical record number"
* identifier[=].type.text = "Número do processo"
* identifier[=].system = "http://example.org/SONHO"
* identifier[=].value = "99005087"
* identifier[+].use = #official
* identifier[=].type = $v2-0203#CZ "Citizenship Card"
* identifier[=].type.text = "Número de identificação civil"
* identifier[=].system = "http://example.org/IRN"
* identifier[=].value = "12755547"
* active = true
* name.use = #official
* name.family = "Teste"
* name.given[0] = "Maria"
* name.given[+] = "Teresa Rosa"
* telecom[0].system = #phone
* telecom[=].value = "918282812"
* telecom[=].rank = 1
* telecom[+].system = #phone
* telecom[=].value = "9687854845"
* telecom[=].use = #mobile
* telecom[=].rank = 1
* gender = #female
* birthDate = "1973-02-04"
* deceasedBoolean = false
* address.extension.extension[0].url = "parish"
* address.extension.extension[=].valueCodeableConcept = $ine#150202
* address.extension.extension[+].url = "municipality"
* address.extension.extension[=].valueCodeableConcept = $ine#1502
* address.extension.extension[+].url = "county"
* address.extension.extension[=].valueCodeableConcept = $ine#15
* address.extension.url = "http://example.com/fhir/hl7pt/extensions/extension-address-v1-1-2"
* address.use = #billing
* address.line = "Rua Dr Manuel Da Cruz Junior 128 Moradia 14 Samouco"
* address.postalCode = "2890-002"
* maritalStatus = $v3-MaritalStatus#M "Married"
* contact[0].relationship = $v3-RoleCode#FTH "Father"
* contact[=].name.use = #official
* contact[=].name.family = "Nunes"
* contact[=].name.given[0] = "Joao"
* contact[=].name.given[+] = "Jose"
* contact[+].relationship = $v3-RoleCode#MTH "Mother"
* contact[=].name.use = #official
* contact[=].name.family = "Nunes"
* contact[=].name.given[0] = "Maria"
* contact[=].name.given[+] = "Dora"
* contact[+].relationship = $v3-RoleCode#ONESELF "Self"
* contact[=].name.use = #official
* contact[=].name.family = "Teste"
* contact[=].name.given[0] = "Maria"
* contact[=].name.given[+] = "Teresa Rosa"
* contact[=].telecom[0].system = #phone
* contact[=].telecom[=].value = "918282812"
* contact[=].telecom[=].rank = 1
* contact[=].telecom[+].system = #phone
* contact[=].telecom[=].value = "9687854845"
* contact[=].telecom[=].use = #mobile
* contact[=].telecom[=].rank = 1

Instance: cc5416a2-8697-3367-bba8-eec87f189664
InstanceOf: Practitioner
Usage: #inline
* identifier[0].use = #usual
* identifier[=].type = $v2-0203#EI "Employee number"
* identifier[=].type.text = "Numero interno do profissional"
* identifier[=].system = "http://example.org/ADT"
* identifier[=].value = "cc5416a2-8697-3367-bba8-eec87f189664"
* identifier[+].use = #official
* identifier[=].type = $v2-0203#EI "Employee number"
* identifier[=].type.text = "Numero mecanográfico do profissional"
* identifier[=].system = "http://example.org/RHV"
* identifier[=].value = "30047"
* active = true