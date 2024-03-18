Extension: S3PersonOccupation
Id: S3PersonOccupation
Context: Patient

* extension contains
    occupation 0..* and
    status 0..* and
    education 0..*
* extension[occupation].value[x] only CodeableConcept
* extension[status].value[x] only CodeableConcept
* extension[education].value[x] only CodeableConcept
