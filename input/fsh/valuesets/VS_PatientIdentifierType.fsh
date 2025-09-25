ValueSet: VS_PatientIdentifierType
Id: patient-identifier-type
Title: "Tipos de Identificadores de Paciente"
Description: "Conjunto de tipos válidos de identificadores para pacientes em Portugal."

* ^status = #active
* ^experimental = false

* include http://terminology.hl7.org/CodeSystem/v2-0203#PPN "Passport Number"
* include http://terminology.hl7.org/CodeSystem/v2-0203#NI "National unique individual identifier"
* include http://terminology.hl7.org/CodeSystem/v2-0203#DL "Driver's License Number"
