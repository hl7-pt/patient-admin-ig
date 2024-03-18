Extension: S3AddressNuts
Id: S3AddressNuts
Context: Address

* id ..0
* extension contains
    nuts-I 0..* and
    nuts-II 0..* and
    nuts-III 0..*
* extension[nuts-I].value[x] only CodeableConcept
* extension[nuts-II].value[x] only CodeableConcept
* extension[nuts-III].value[x] only CodeableConcept
