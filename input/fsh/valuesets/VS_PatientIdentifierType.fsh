ValueSet: VS_PatientIdentifierType
Id: patient-identifier-type
Title: "Tipos de Identificadores de Paciente"
Description: "Conjunto de tipos válidos de identificadores para pacientes em Portugal."

* ^status = #active
* ^experimental = false

* include http://terminology.hl7.org/CodeSystem/v2-0203#CZ "Citizenship Card"
* include http://terminology.hl7.org/CodeSystem/v2-0203#BCFN "Birth Certificate"
* include http://terminology.hl7.org/CodeSystem/v2-0203#TAX "Tax ID number"
* include http://terminology.hl7.org/CodeSystem/v2-0203#SS "Social Security Number"
* include http://terminology.hl7.org/CodeSystem/v2-0203#HC "Health Card Number"
* include http://terminology.hl7.org/CodeSystem/v2-0203#PI "Patient internal identifier"
* include http://terminology.hl7.org/CodeSystem/v2-0203#MR "Medical record number"
* include http://terminology.hl7.org/CodeSystem/v2-0203#MI "Military ID number"
* include http://terminology.hl7.org/CodeSystem/v2-0203#PT "Patient External Identifier"
* include http://terminology.hl7.org/CodeSystem/v2-0203#ANON "Anonymous identifier"
* include http://terminology.hl7.org/CodeSystem/v2-0203#PPN "Passport Number"
* include http://terminology.hl7.org/CodeSystem/v2-0203#PRC "Permanent Resident Card Number"
* include http://terminology.hl7.org/CodeSystem/v2-0203#NI "National unique individual identifier"
* include http://terminology.hl7.org/CodeSystem/v2-0203#DL "Driver's License Number"
