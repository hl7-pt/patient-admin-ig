Profile: PTPractitioner
Parent: Practitioner
Id: Practitioner-Pt
Title: "PTPractitioner"
Description: "Perfil de Practitioner para contexto PT, com identificadores institucionais e requisitos mínimos de nome/contatos."

* id 1..1 MS
* identifier 1..* MS
* identifier.type.coding from VS_PractitionerIdentifierType (extensible)
* name 1..1 MS
* telecom 0..* MS

