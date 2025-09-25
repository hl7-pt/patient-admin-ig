Extension: PTPersonBirthplace
Id: PersonBirthplace-Pt
Context: Patient

* extension contains
    country 0..* and
    county 0..* and
    municipality 0..* and
    parish 0..*
* extension[country].value[x] only CodeableConcept
* extension[county].value[x] only CodeableConcept
* extension[municipality].value[x] only CodeableConcept
* extension[parish].value[x] only CodeableConcept
