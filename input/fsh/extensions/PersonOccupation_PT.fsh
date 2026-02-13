Extension: PTPersonOccupation
Id: PersonOccupation-Pt
Title: "PTPersonOccupation"
Description: "Extensão para registo de ocupação do utente."
Context: Patient

* extension contains
    occupation 0..*
* extension[occupation].value[x] only CodeableConcept
