ValueSet: VS_PractitionerIdentifierType
Id: practitioner-identifier-type
Title: "Tipos de Identificadores de Profissionais"
Description: "Conjunto de tipos válidos de identificadores para profissionais em Portugal."

* ^status = #active
* ^experimental = false

* include http://terminology.hl7.org/CodeSystem/v2-0203#EI "Employee number"
* include http://terminology.hl7.org/CodeSystem/v2-0203#MD "Medical License number"
* include http://terminology.hl7.org/CodeSystem/v2-0203#NP "Nurse practitioner number"
