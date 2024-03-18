Extension: S3AddressNuts
Id: S3AddressNuts
Context: Address
* ^url = "https://example.org/fhir/StructureDefinition/S3AddressNuts"
* ^status = #draft
* ^date = "2024-01-16T08:33:56.6320463+00:00"
* id ..0
* extension contains
    nuts-I 0..* and
    nuts-II 0..* and
    nuts-III 0..*
* extension[nuts-I].id ..0
* extension[nuts-I].value[x] only CodeableConcept
* extension[nuts-I].value[x].id ..0
* extension[nuts-I].value[x].coding.id ..0
* extension[nuts-I].value[x].coding.userSelected ..0
* extension[nuts-II].id ..0
* extension[nuts-II].value[x] only CodeableConcept
* extension[nuts-II].value[x].id ..0
* extension[nuts-II].value[x].coding.id ..0
* extension[nuts-II].value[x].coding.userSelected ..0
* extension[nuts-III].id ..0
* extension[nuts-III].value[x] only CodeableConcept
* extension[nuts-III].value[x].id ..0
* extension[nuts-III].value[x].coding.id ..0
* extension[nuts-III].value[x].coding.userSelected ..0
* url = "https://example.org/fhir/StructureDefinition/S3AddressNuts" (exactly)