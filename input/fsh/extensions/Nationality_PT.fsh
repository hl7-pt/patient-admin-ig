Extension: PTNationality
Id: nationality-pt
Title: "Nationality Extension"
Description: "Represents the patient's nationality"
Context: "Patient"

* ^url = "http://example.com/fhir/hl7pt/StructureDefinition/nationality-pt"
* ^status = #active

* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept.coding.system = "https://www.iso.org/iso-3166-country-codes.html"