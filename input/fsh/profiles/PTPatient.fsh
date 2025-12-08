Profile: PTPatient
Parent: Patient
Id: Patient-Pt
Title: "PTPatient"
Description: "Perfil de Patient para contexto PT, incluindo tipos de indentificadores, nacionalidade, naturalidade (INE), notas, endereços codidificados, contactos, inscrição nos CSP."

* id 1..1 MS
* name 1..1 MS
* telecom 0..* MS
* gender 1..1 MS
* birthDate 1..1 MS
* deceased[x] 0..1
* contact 0..* MS
* generalPractitioner 0..* MS
* managingOrganization 0..1 MS

* identifier 0..* MS
* active 0..1 MS

* extension contains PTPersonBirthplace named birthplace-pt 0..1 MS
* extension contains PTNationality named nationality-pt 0..* MS
* extension contains PTNotes named notes 0..1 MS

* address 0..* MS
* address.use 0..1 MS
* address.type 0..1 MS
* address.text 0..1 MS
* address.line 0..* MS
* address.city 0..1 MS
* address.postalCode 0..1 MS
* address.country 0..1 MS

* address.extension contains PTAddress named address-pt 0..1 MS

* contact.address 0..1 MS
* contact.address.use 0..1 MS
* contact.address.type 0..1 MS
* contact.address.text 0..1 MS
* contact.address.line 0..* MS
* contact.address.city 0..1 MS
* contact.address.postalCode 0..1 MS
* contact.address.country 0..1 MS

* contact.address.extension contains PTAddress named address-pt 0..1 MS

* generalPractitioner.extension contains
    PTPatientPrimaryCarePeriod named patient-primary-care-period 0..* MS
