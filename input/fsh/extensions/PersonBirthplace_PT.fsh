Extension: PTPersonBirthplace
Id: birthplace-pt
Title: "Birthplace Extension"
Description: "Extensão para o local de nascimento do utente."
Context: Patient

* ^url = "http://example.com/fhir/hl7pt/StructureDefinition/birthplace-pt"
* ^status = #active

* extension contains
    country 0..1 and
    county 0..1 and
    municipality 0..1 and
    parish 0..1

* extension contains PTAddress named address-pt 0..1 MS
