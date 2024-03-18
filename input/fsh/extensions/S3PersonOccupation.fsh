Extension: S3PersonOccupation
Id: S3PersonOccupation
Context: Patient
* ^url = "https://example.org/fhir/StructureDefinition/S3PersonOccupation"
* ^status = #draft
* ^date = "2024-01-16T07:16:48.7799825+00:00"
* id ..0
* extension contains
    occupation 0..* and
    status 0..* and
    education 0..*
* extension[occupation].id ..0
* extension[occupation].value[x] only CodeableConcept
* extension[occupation].value[x].id ..0
* extension[status].id ..0
* extension[status].value[x] only CodeableConcept
* extension[status].value[x].id ..0
* extension[education].id ..0
* extension[education].value[x] only CodeableConcept
* extension[education].value[x].id ..0
* url = "https://example.org/fhir/StructureDefinition/S3PersonOccupation" (exactly)